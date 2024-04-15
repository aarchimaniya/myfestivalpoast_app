import 'package:myfestivalpoast_app/festival_page/festival_page.dart';
import 'package:myfestivalpoast_app/festivalpost_category_page/festival_category_page.dart';
import 'package:myfestivalpoast_app/festivalpost_detail_page/festival_detail_page.dart';
import 'package:myfestivalpoast_app/home_page/components/home_page.dart';
import '../festival_page/splash_screens/splash_screens.dart';
import '../utilies/headers.dart';

class AppRoutes {
  static String splashScreen = '/';
  static String homePage = 'home_page';
  static String festivalPage = 'festival_page';
  static String festivalpostdetailpage = 'festival_detail_page';
  static String festivalpostcategorypage = 'festivalcategorypage';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    festivalPage: (context) => const HomePage(),
    festivalpostdetailpage: (context) => const FestivalDetailPage(),
    festivalpostcategorypage: (context) => const FestivalCategoryPage(),
  };
}
