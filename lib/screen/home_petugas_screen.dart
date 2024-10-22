import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/inventory_screen.dart';
import 'package:smart_farmer_app/screen/widgets/item_drawer.dart';

class HomePetugasScreen extends StatefulWidget {
  const HomePetugasScreen({super.key});

  @override
  State<HomePetugasScreen> createState() => _HomePetugasScreenState();
}

class _HomePetugasScreenState extends State<HomePetugasScreen> {
  late int _selectedIndex;
  String _title = 'Dashboard';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = context.watch<HomeProvider>().selectedIndex;
  }

  void _onItemTapped(int index) {
    context.read<HomeProvider>().onItemTapped(index);
    if (index >= 2 && index <= 4) {
      final category = index == 2
          ? 'Pakan'
          : index == 3
              ? 'Vitamin'
              : 'Disinfektan';
      context.read<InventoryProvider>().refreshInventory(
            idKandang: '',
            category: category,
          );
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
    ),
    Text(
      'Index 1: Riwayat',
    ),
    InventoryScreen(
      category: 'Pakan',
    ),
    InventoryScreen(
      category: 'Vitamin',
    ),
    InventoryScreen(
      category: 'Disinfektan',
    ),
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
              icon: Icons.history,
              title: 'Riwayat Laporan',
              selected: _selectedIndex == 1,
              onTap: () {
                setState(() {
                  _title = 'Riwayat Laporan';
                });
                _onItemTapped(1);
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.storage),
              title: const Text('Inventory'),
              initiallyExpanded: true,
              iconColor: Colors.black,
              childrenPadding: const EdgeInsets.only(left: 16),
              shape: const Border(),
              children: [
                ItemDrawer(
                  iconSvg: 'assets/icons/pakan.svg',
                  title: 'Pakan',
                  selected: _selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(2);
                  },
                ),
                ItemDrawer(
                  iconSvg: 'assets/icons/vitamin.svg',
                  title: 'Vitamin',
                  selected: _selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(3);
                  },
                ),
                ItemDrawer(
                  iconSvg: 'assets/icons/disinfektan.svg',
                  title: 'Disinfektan',
                  selected: _selectedIndex == 4,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(4);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: _selectedIndex == 2 || _selectedIndex == 3 || _selectedIndex == 4
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_title),
                  Text(
                      _selectedIndex == 2
                          ? 'Pakan'
                          : _selectedIndex == 3
                              ? 'Vitamin'
                              : 'Disinfektan',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ],
              )
            : Text(_title),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
