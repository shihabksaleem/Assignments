import 'package:assignment_ui/BottomNavBar/BottomNavBarScreen.dart';
import 'package:assignment_ui/ContactBook_ui/ContactUiSplash.dart';
import 'package:assignment_ui/data%20Table/dataTable.dart';
import 'package:assignment_ui/profile%20ui%202/profileuiTwo.dart';
import 'package:assignment_ui/profile%20ui%20stack%20task/profile_ui_stack.dart';
import 'package:assignment_ui/tourism_app/screens/home_screen/tourism_home_screen.dart';
import 'package:assignment_ui/tourism_gofast_app/screens/login_screen/gofast_login_screen.dart';
import 'package:flutter/material.dart';

import 'Drawer Task/DrawerTaskScreen.dart';
import 'Expansion sample/Expansion_sample.dart';
import 'Expansion_Tile_card_ui/Expansion_tile_card.dart';
import 'Farmers Fresh Zone/Shopping_Cart_Home.dart';
import 'GridView_Stack task/grid_view_stack.dart';
import 'Hotel app/HotelAppHome.dart';
import 'LoginSignUpUi/screens/LoginSignUpSplash.dart';
import 'StaggeredGridView/Homescreen.dart';
import 'WhatsappUi/screens/TabHomeScreen.dart';
import 'gridview builder task/GridView_builderScreen.dart';
import 'hotel_details_page_ui/screen1.dart';
import 'invoice_app-ui/screens/first_screeen/invoice_first_screen.dart';
import 'music_app_ui/screens/main_screen/music_app_main.dart';

class RoutesPage extends StatelessWidget {
  static String id = 'Routes_Page';
  List UiList = [
    {
      'Routes': BottomNavSampleScreen.id,
      'Titles': 'BottomNavSampleScreen',
    },
    {
      'Routes': ContactUiSplash.id,
      'Titles': 'ContactUiSplash',
    },
    {
      'Routes': dataTableSample.id,
      'Titles': 'dataTableSample',
    },
    {
      'Routes': DrawerTaskScreen.id,
      'Titles': 'DrawerTaskScreen',
    },
    {
      'Routes': ExpansionTileSample.id,
      'Titles': 'ExpansionTileSample',
    },
    {
      'Routes': ExpansionTileCardSample.id,
      'Titles': 'ExpansionTileCardSample',
    },
    {
      'Routes': FarmersFreshZone.id,
      'Titles': 'FarmersFreshZone',
    },
    {
      'Routes': GridviewBuilderScreen.id,
      'Titles': 'GridviewBuilderScreen',
    },
    {
      'Routes': GridViewStackScreen.id,
      'Titles': 'GridViewStackScreen',
    },
    {
      'Routes': ScreenHotelApp.id,
      'Titles': 'ScreenHotelApp',
    },
    {
      'Routes': HotelsDetailsPage.id,
      'Titles': 'HotelsDetailsPage',
    },
    {
      'Routes': InvoiceFirstScreen.id,
      'Titles': 'InvoiceFirstScreen',
    },
    {
      'Routes': LoginSignUpSplash.id,
      'Titles': 'LoginSignUpSplash',
    },
    {
      'Routes': MusicAppMianScreen.id,
      'Titles': 'MusicAppMianScreen',
    },
    {
      'Routes': ProfileUiTwoHome.id,
      'Titles': 'ProfileUiTwoHome',
    },
    {
      'Routes': ProfileUiStackScreen.id,
      'Titles': 'ProfileUiStackScreen',
    },
    {
      'Routes': StaggeredGridViewScreen.id,
      'Titles': 'StaggeredGridViewScreen',
    },
    {
      'Routes': TourismAppUi.id,
      'Titles': 'TourismAppUi',
    },
    {
      'Routes': GofastLoginPage.id,
      'Titles': 'GofastLoginPage',
    },
    {
      'Routes': CommunityTab.id,
      'Titles': 'CommunityTab',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sample Flutter Apps)',
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: UiList.length,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade300,
                borderRadius: BorderRadius.circular(20)),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  UiList[index]['Routes'],
                );
              },
              leading: Text('$index'),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(UiList[index]['Titles']),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
        ));
  }
}
