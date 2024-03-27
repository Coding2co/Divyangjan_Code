import 'package:divyangjan_frontend/Resources/Colors/app_colors.dart';
import 'package:divyangjan_frontend/controllers/bottomnavigation_controller.dart';
import 'package:divyangjan_frontend/screens/history_screen.dart';
import 'package:divyangjan_frontend/screens/home_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarWidget extends StatelessWidget {

   final List<BottomNavigationBarItem> _bottomNavBarItems = [
   const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: 'History',
    ),

  ];
   final BottomNavigationBarController controller = Get.put(BottomNavigationBarController());
   BottomNavigationBarWidget({super.key,});


  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body:
      Obx(()=>   _buildBody(controller.selectedIndex.value),),
      bottomNavigationBar: BottomNavigationBar(
      items:_bottomNavBarItems,
      currentIndex: controller.selectedIndex.value,
      selectedItemColor: AppColors.blackText,
      onTap: (index){
        controller.changeIndex(index);
      }      
      ),
    );
  }
}





Widget _buildBody(int selectedIndex){
  switch(selectedIndex){
    case 0:
    return const HomeScreens();
    case 1:
    return const HistoryScreen();
    default:
    return Container();
  }
}