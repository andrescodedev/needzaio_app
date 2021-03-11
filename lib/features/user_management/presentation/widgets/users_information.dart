import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class UsersInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usersProvider = Provider.of<UsersProvider>(context);

    Size pageSize = MediaQuery.of(context).size;

    return Query(
      options: QueryOptions(
        document: gql(usersProvider.giveAllUsers()),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (result.data.isNotEmpty) {
          List users = result.data['users']['data'];

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> user = users[index];
              return _getUserItem(pageSize, user, context, index);
            },
          );
        } else {
          return Text(
            'No hay usuarios disponibles',
            style: Theme.of(context).textTheme.headline1,
          );
        }
      },
    );
  }

  Column _getUserItem(Size pageSize, Map<String, dynamic> user,
      BuildContext context, int index) {
    return Column(
      children: [
        Container(
          height: pageSize.height * 0.1,
          width: pageSize.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(14.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: _getProfileImage(pageSize, user, index),
                    ),
                    Expanded(
                      child: _getUserInformation(user, context),
                    ),
                  ],
                ),
              ),
              _getArrow(context),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  Icon _getArrow(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      color: Theme.of(context).primaryColor,
    );
  }

  Padding _getUserInformation(Map<String, dynamic> user, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            user['name'],
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            user['email'],
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  ClipRRect _getProfileImage(
      Size pageSize, Map<String, dynamic> user, int index) {
    List albums = user['albums']['data'];
    final album = albums[index];
    List photos = album['photos']['data'];
    final photo = photos[index];

    return ClipRRect(
      borderRadius: BorderRadius.circular(14.0),
      child: Container(
        height: pageSize.height * 0.1,
        width: pageSize.width * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          image: DecorationImage(
            image: NetworkImage(photo['url']),
          ),
        ),
      ),
    );
  }
}
