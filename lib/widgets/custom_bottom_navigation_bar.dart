import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(icon: Icon( Icons.calendar_month_outlined, size: 30,), label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon( Icons.pie_chart), label: 'Estadisticas'),
        BottomNavigationBarItem(icon: Icon( Icons.supervised_user_circle), label: 'Usuarios'),
      ]
    );
  }
}