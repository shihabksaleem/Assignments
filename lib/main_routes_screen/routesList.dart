import 'package:assignment_ui/Drawer%20Task/DrawerTaskScreen.dart';
import 'package:assignment_ui/Expansion%20sample/Expansion_sample.dart';
import 'package:assignment_ui/Expansion_Tile_card_ui/Expansion_tile_card.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/Shopping_Cart_Home.dart';
import 'package:assignment_ui/GridView_Stack%20task/grid_view_stack.dart';
import 'package:assignment_ui/Hotel%20app/hotelsMainScreen/HotelAppHome.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/LoginSignUpSplash.dart';
import 'package:assignment_ui/StaggeredGridView/Homescreen.dart';
import 'package:assignment_ui/WhatsappUi/screens/TabHomeScreen.dart';
import 'package:assignment_ui/data%20Table/dataTable.dart';
import 'package:assignment_ui/gridview%20builder%20task/GridView_builderScreen.dart';
import 'package:assignment_ui/invoice_app-ui/screens/first_screeen/invoice_first_screen.dart';
import 'package:assignment_ui/music_app_ui/screens/main_screen/music_app_main.dart';
import 'package:assignment_ui/profile%20ui%202/profileuiTwo.dart';
import 'package:assignment_ui/profile%20ui%20stack%20task/profile_ui_stack.dart';
import 'package:assignment_ui/tourism_app/screens/home_screen/tourism_home_screen.dart';
import 'package:assignment_ui/tourism_gofast_app/screens/login_screen/gofast_login_screen.dart';
import 'package:assignment_ui/BottomNavBar/BottomNavBarScreen.dart';
import 'package:assignment_ui/ContactBook_ui/ContactUiSplash.dart';

List uiList = [
  {
    'Routes': BottomNavSampleScreen.id,
    'Titles': 'Sample bottom nav bar',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': ContactUiSplash.id,
    'Titles': 'Contact book',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': dataTableSample.id,
    'Titles': 'Sample Data table in flutter',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': DrawerTaskScreen.id,
    'Titles': 'Sample Drawer',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': ExpansionTileSample.id,
    'Titles': 'ExpansionTileSample',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': ExpansionTileCardSample.id,
    'Titles': 'ExpansionTileCardSample',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': FarmersFreshZone.id,
    'Titles': 'FarmersFreshZone',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': GridviewBuilderScreen.id,
    'Titles': 'GridviewBuilderScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': GridViewStackScreen.id,
    'Titles': 'GridViewStackScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': HotelMainScreen.id,
    'Titles': 'ScreenHotelApp',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': InvoiceFirstScreen.id,
    'Titles': 'InvoiceFirstScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': LoginSignUpSplash.id,
    'Titles': 'LoginSignUpSplash',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': MusicAppMianScreen.id,
    'Titles': 'MusicAppMianScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': ProfileUiTwoHome.id,
    'Titles': 'ProfileUiTwoHome',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': ProfileUiStackScreen.id,
    'Titles': 'ProfileUiStackScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': StaggeredGridViewScreen.id,
    'Titles': 'StaggeredGridViewScreen',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': TourismAppUi.id,
    'Titles': 'TourismAppUi',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': GofastLoginPage.id,
    'Titles': 'GofastLoginPage',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
  {
    'Routes': CommunityTab.id,
    'Titles': 'Whatsapp Ui',
    'Image':
        'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  },
];
