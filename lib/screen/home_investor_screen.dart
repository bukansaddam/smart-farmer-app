import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/home_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/investor/dashboard_investor_screen.dart';
import 'package:smart_farmer_app/screen/pemilik/inventory/inventory_screen.dart';
import 'package:smart_farmer_app/screen/widgets/alert_dialog.dart';
import 'package:smart_farmer_app/screen/widgets/item_drawer.dart';

class HomeInvestorScreen extends StatefulWidget {
  const HomeInvestorScreen({super.key});

  @override
  State<HomeInvestorScreen> createState() => _HomeInvestorScreenState();
}

class _HomeInvestorScreenState extends State<HomeInvestorScreen> {
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
    if (index >= 1 && index <= 3) {
      final category = index == 1
          ? 'Pakan'
          : index == 2
              ? 'Vitamin'
              : 'Disinfektan';
      context.read<InventoryProvider>().refreshInventory(
            idKandang: kandangProvider.selectedKandang!.id,
            category: category,
          );
    }
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardInvestorScreen(),
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
                  selected: _selectedIndex == 1,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(1);
                  },
                ),
                ItemDrawer(
                  iconSvg: 'assets/icons/vitamin.svg',
                  title: 'Vitamin',
                  selected: _selectedIndex == 2,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(2);
                  },
                ),
                ItemDrawer(
                  iconSvg: 'assets/icons/disinfektan.svg',
                  title: 'Disinfektan',
                  selected: _selectedIndex == 3,
                  onTap: () {
                    setState(() {
                      _title = 'Inventory';
                    });
                    _onItemTapped(3);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: _selectedIndex == 1 || _selectedIndex == 2 || _selectedIndex == 3
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_title),
                  Text(
                      _selectedIndex == 1
                          ? 'Pakan'
                          : _selectedIndex == 2
                              ? 'Vitamin'
                              : 'Disinfektan',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.normal)),
                ],
              )
            : Text(_title),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: _selectedIndex == 0
            ? [
                PopupMenuButton(
                  color: Colors.white,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 'logout',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return MyAlertDialog(
                                title: 'Logout',
                                description: 'Apakah anda yakin ingin logout?',
                                msgAccept: 'Ya',
                                onAccept: () {
                                  context.read<HomeProvider>().logout();
                                  context.pop();
                                  context.goNamed('login');
                                },
                                msgCancel: 'Tidak',
                                onCancel: () {
                                  context.pop();
                                },
                              );
                            },
                          );
                        },
                        child: const Text('Logout',
                            style: TextStyle(color: Colors.red)),
                      ),
                    ];
                  },
                ),
              ]
            : null,
      ),
      body: SafeArea(
        child: _widgetOptions[_selectedIndex],
      ),
    );
  }
}
