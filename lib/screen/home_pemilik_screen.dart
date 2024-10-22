import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/pemilik/dashboard_pemilik_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/inventory_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/kandang/kandang_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/laporan/laporan_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/petugas/petugas_screen.dart';
import 'package:smart_farmer_app/screen/widgets/item_drawer.dart';

class HomePemilikScreen extends StatefulWidget {
  const HomePemilikScreen({super.key});

  @override
  State<HomePemilikScreen> createState() => _HomePemilikScreenState();
}

class _HomePemilikScreenState extends State<HomePemilikScreen> {
  late int _selectedIndex;
  String _title = 'Dashboard';

  late KandangProvider kandangProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = context.watch<HomeProvider>().selectedIndex;
  }

  @override
  void initState() {
    super.initState();

    kandangProvider = context.read<KandangProvider>();

    Future.microtask(() {
      kandangProvider.refreshKandang().then(
        (value) {
          if (kandangProvider.kandangResponse != null) {
            kandangProvider.setSelectedKandang(
                kandang: kandangProvider.kandangResponse!.result.data.first);
          } else {
            kandangProvider.setSelectedKandang(kandang: null);
          }
        },
      );
    });
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
            idKandang: kandangProvider.selectedKandang!.id,
            category: category,
          );
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardPemilikScreen(),
    KandangScreen(),
    PetugasScreen(),
    LaporanScreen(),
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
              icon: Icons.house,
              title: 'Kandang',
              selected: _selectedIndex == 1,
              onTap: () {
                setState(() {
                  _title = 'Kandang';
                });
                _onItemTapped(1);
              },
            ),
            ItemDrawer(
              icon: Icons.people,
              title: 'Petugas',
              selected: _selectedIndex == 2,
              onTap: () {
                setState(() {
                  _title = 'Petugas';
                });
                _onItemTapped(2);
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
              initiallyExpanded: false,
              iconColor: Colors.black,
              childrenPadding: const EdgeInsets.only(left: 16),
              shape: const Border(),
              children: [
                ItemDrawer(
                  iconSvg: 'assets/icons/pakan.svg',
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
                  iconSvg: 'assets/icons/vitamin.svg',
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
                  iconSvg: 'assets/icons/disinfektan.svg',
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
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
