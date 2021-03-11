///
/// this document allows us to have all the centralized file addresses.
///

// UTILS
export 'package:needzaio_app/core/utils/principal_constants.dart';
export 'package:needzaio_app/core/utils/principal_assets.dart';
export 'package:needzaio_app/core/utils/phone_validate.dart';

//PACKAGES
export 'package:google_fonts/google_fonts.dart';
export "package:graphql_flutter/graphql_flutter.dart";
export 'package:provider/provider.dart';
export 'package:permission_handler/permission_handler.dart';

//PAGES
export 'package:needzaio_app/features/login/presentation/pages/splash_page.dart';
export 'package:needzaio_app/features/login/presentation/pages/login_page.dart';
export 'package:needzaio_app/features/user_management/presentation/pages/home_page.dart';

//THEMES
export 'package:needzaio_app/core/themes/principal_theme.dart';

//WIDGETS
export 'package:needzaio_app/features/login/presentation/widgets/background_image.dart';
export 'package:needzaio_app/features/login/presentation/widgets/custom_texts_for_splash_and_login_pages.dart';
export 'package:needzaio_app/features/login/presentation/widgets/custom_buttons_for_splash_and_login_pages.dart';
export 'package:needzaio_app/features/login/presentation/widgets/login_form.dart';
export 'package:needzaio_app/features/user_management/presentation/widgets/top_menu.dart';
export 'package:needzaio_app/features/user_management/presentation/widgets/users_information.dart';
export 'package:needzaio_app/features/user_management/presentation/widgets/contacts_text.dart';
export 'package:needzaio_app/features/login/presentation/widgets/form_text_fields.dart';

//CONFIGURATIONS
export 'package:needzaio_app/core/configuration/graphql_configuration.dart';

//DATASOURCES
export 'package:needzaio_app/features/user_management/data/datasources/queries/users_queries.dart';
export 'package:needzaio_app/features/login/data/datasources/queries/login_queries.dart';

//REPOSITORIES
export 'package:needzaio_app/features/user_management/domain/repositories/users_repository.dart';
export 'package:needzaio_app/features/user_management/data/repositories/users_repository_implement.dart';
export 'package:needzaio_app/features/login/domain/repositories/login_repository.dart';
export 'package:needzaio_app/features/login/data/repositories/login_repository_implement.dart';

//USECASES
export 'package:needzaio_app/features/user_management/domain/usecases/usecase.dart';
export 'package:needzaio_app/features/user_management/domain/usecases/users_usecase.dart';
export 'package:needzaio_app/features/login/domain/usecases/login_use_case.dart';
export 'package:needzaio_app/features/login/domain/usecases/validation_use_case.dart';

//PROVIDERS
export 'package:needzaio_app/features/user_management/presentation/providers/users_provider.dart';
export 'package:needzaio_app/features/login/presentation/providers/login_provider.dart';
export 'package:needzaio_app/features/login/presentation/providers/splash_provider.dart';

//ROUTES
export 'package:needzaio_app/core/routes/pages_route.dart';
