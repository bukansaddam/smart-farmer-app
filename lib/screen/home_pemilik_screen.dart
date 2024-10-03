import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/screen/pemilik/dashboard_pemilik_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory_screen.dart';
import 'package:smart_farmer_app/screen/widgets/item_drawer.dart';

class HomePemilikScreen extends StatefulWidget {
  const HomePemilikScreen({super.key});

  @override
  State<HomePemilikScreen> createState() => _HomePemilikScreenState();
}

class _HomePemilikScreenState extends State<HomePemilikScreen> {
  late int _selectedIndex;
  String _title = 'Dashboard';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = context.watch<HomeProvider>().selectedIndex;
  }

  void _onItemTapped(int index) {
    context.read<HomeProvider>().onItemTapped(index);
    if (index >= 4 && index <= 6) {
      final category = index == 4
          ? 'Pakan'
          : index == 5
              ? 'Vitamin'
              : 'Disinfektan';
      context.read<InventoryProvider>().refreshInventory(
            idKandang: 'e15e286c-aa40-474d-9baa-5f79912205e3',
            category: category,
          );
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardPemilikScreen(),
    Text('Home Pemilik'),
    Text('Home Pemilik'),
    Text('Inventory'),
    InventoryScreen(category: 'Pakan',),
    InventoryScreen(category: 'Vitamin',),
    InventoryScreen(category: 'Disinfektan',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            ItemDrawer(
              icon: Icons.dashboard_outlined,
              title: 'Dashboard',
              selected: _selectedIndex == 0,
              onTap: () {
                setState(() {
                  _title = 'Dashboard';
                });
                _onItemTapped(0);
              },
            ),
            ItemDrawer(
              icon: Icons.house,
              title: 'Kandang',
              selected: _selectedIndex == 2,
              onTap: () {
                setState(() {
                  _title = 'Kandang';
                });
                _onItemTapped(2);
              },
            ),
            ItemDrawer(
              icon: Icons.people,
              title: 'Petugas',
              selected: _selectedIndex == 1,
              onTap: () {
                setState(() {
                  _title = 'Petugas';
                });
                _onItemTapped(1);
              },
            ),
            ItemDrawer(
              icon: Icons.assignment,
              title: 'Laporan',
              selected: _selectedIndex == 3,
              onTap: () {
                setState(() {
                  _title = 'Laporan';
                });
                _onItemTapped(3);
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.storage),
              title: const Text('Inventory'),
              initiallyExpanded: true,
              children: [
                ItemDrawer(
                  icon: Icons.add,
                  title: 'Pakan',
                  selected: _selectedIndex == 4,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(4);
                  },
                ),
                ItemDrawer(
                  icon: Icons.list,
                  title: 'Vitamin',
                  selected: _selectedIndex == 5,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(5);
                  },
                ),
                ItemDrawer(
                  icon: Icons.list,
                  title: 'Disinfektan',
                  selected: _selectedIndex == 6,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(6);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: _selectedIndex == 4 || _selectedIndex == 5 || _selectedIndex == 6
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_title),
                  Text(
                      _selectedIndex == 4
                          ? 'Pakan'
                          : _selectedIndex == 5
                              ? 'Vitamin'
                              : 'Disinfektan',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ],
              )
            : Text(_title),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
