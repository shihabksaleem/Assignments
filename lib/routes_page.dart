import 'package:assignment_ui/BottomNavBar/BottomNavBarScreen.dart';
import 'package:assignment_ui/ContactBook_ui/ContactUiSplash.dart';
import 'package:assignment_ui/StaggeredGridView/reusable_container.dart';
import 'package:assignment_ui/data%20Table/dataTable.dart';
import 'package:assignment_ui/profile%20ui%202/profileuiTwo.dart';
import 'package:assignment_ui/profile%20ui%20stack%20task/profile_ui_stack.dart';
import 'package:assignment_ui/tourism_app/screens/home_screen/tourism_home_screen.dart';
import 'package:assignment_ui/tourism_gofast_app/res/images_list.dart';
import 'package:assignment_ui/tourism_gofast_app/screens/login_screen/gofast_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'Drawer Task/DrawerTaskScreen.dart';
import 'Expansion sample/Expansion_sample.dart';
import 'Expansion_Tile_card_ui/Expansion_tile_card.dart';
import 'Farmers Fresh Zone/Shopping_Cart_Home.dart';
import 'GridView_Stack task/grid_view_stack.dart';
import 'Hotel app/hotelsMainScreen/HotelAppHome.dart';
import 'LoginSignUpUi/screens/LoginSignUpSplash.dart';
import 'StaggeredGridView/Homescreen.dart';
import 'WhatsappUi/screens/TabHomeScreen.dart';
import 'gridview builder task/GridView_builderScreen.dart';
import 'invoice_app-ui/screens/first_screeen/invoice_first_screen.dart';
import 'music_app_ui/screens/main_screen/music_app_main.dart';

class RoutesPage extends StatelessWidget {
  static String id = 'Routes_Page';
  List UiList = [
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
      'Titles': 'CommunityTab',
      'Image':
          'https://images.pexels.com/photos/11987710/pexels-photo-11987710.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Sample Flutter ui',
        ),
      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(15),
        staggeredTileBuilder: (index) =>
            StaggeredTile.count(2, index.isEven ? 3 : 4),
        crossAxisCount: 4,
        itemCount: UiList.length,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              UiList[index]['Routes'],
            );
          },
          child: reusableConatainers(
            image: UiList[index]['Image'],
            text: UiList[index]['Titles'],
            subTitle: 'hai',
          ),
        ),
      ),
    );
  }
}
