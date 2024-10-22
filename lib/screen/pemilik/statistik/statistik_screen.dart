import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_farmer_app/screen/widgets/bar_graph/bar_graph.dart';
import 'package:smart_farmer_app/screen/widgets/card_statistic.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class StatistikScreen extends StatefulWidget {
  const StatistikScreen(
      {super.key,
      required this.kategori,
      required this.idKandang,
      required this.title});

  final String kategori;
  final String idKandang;
  final String title;

  @override
  State<StatistikScreen> createState() => _StatistikScreenState();
}

class _StatistikScreenState extends State<StatistikScreen> {
  late DateTime firstDate;
  late DateTime lastDate;
  late String? formatedfirstDate;
  late String? formatedlastDate;

  @override
  void initState() {
    super.initState();

    firstDate = DateTime.now().subtract(const Duration(days: 6));
    lastDate = DateTime.now();

    formatedfirstDate = DateFormat('dd MMM').format(firstDate);
    formatedlastDate = DateFormat('dd MMM').format(lastDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              showDateRangePicker(
                context: context,
                firstDate: DateTime(2020, 4, 1),
                lastDate: DateTime.now(),
                initialDateRange: DateTimeRange(
                  start: firstDate,
                  end: lastDate,
                ),
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        surface: Colors.blue,
                        onSurface: Colors.black,
                        onSecondary: Colors.black,
                        secondary: Colors.blue,
                      ),
                    ),
                    child: child!,
                  );
                },
              ).then((value) {
                if (value != null && value.duration.inDays <= 7) {
                  setState(() {
                    firstDate = value.start;
                    lastDate = value.end.add(
                        const Duration(hours: 23, minutes: 59, seconds: 59));
                  });
                  formatedfirstDate = DateFormat('dd MMM').format(firstDate);
                  formatedlastDate = DateFormat('dd MMM').format(lastDate);
                  // historyProvider.refreshOrderHistory(
                  //   storeId: widget.storeId,
                  //   dateStart: firstDate.toString(),
                  //   dateEnd: lastDate.toString(),
                  // );
                  // historyProvider.clearSelectedDaysOrder();
                  // setState(() {
                  //   graphData(historyProvider);
                  // });
                } else if (value != null) {
                  ToastMessage.show(
                    context,
                    'Date range must be less than 7 days',
                  );
                }
              });
            },
            icon: const Icon(Icons.date_range),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Ayam',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 100,
              child: widget.kategori == 'kematian ayam'
                  ? _buildCardKematianAyam()
                  : widget.kategori == 'panen telur'
                      ? _buildCardPanenTelur()
                      : _buildCardPanenPedaging(),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Grafik',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$formatedfirstDate - $formatedlastDate',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4E6B3E)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _buildGraph(),
            const SizedBox(height: 16),
            const Text(
              'Hasil',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$index Januari 2021',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Kekurangan Makanan',
                        ),
                      ],
                    ),
                    Text(
                      widget.kategori == 'kematian ayam'
                          ? '$index ekor'
                          : widget.kategori == 'panen telur'
                              ? '$index telur'
                              : '$index kg',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            )
          ],
        ),
      ),
    );
  }

  SizedBox _buildGraph() {
    return SizedBox(
        width: double.infinity,
        height: 200,
        child: MyBarGraph(
          barColor: widget.kategori == 'kematian ayam'
              ? const Color(0xFFC85F5F)
              : widget.kategori == 'panen telur'
                  ? const Color(0xFFDFC60B)
                  : const Color(0xFFCD7107),
          selectedBarColor: widget.kategori == 'kematian ayam'
              ? const Color(0xFF992222)
              : widget.kategori == 'panen telur'
                  ? const Color(0xFFB7A30C)
                  : const Color(0xFFA55800),
          weeklyData: const [10.0, 20.0, 15.0, 21.0, 16.0, 25.0, 14.0],
          weeklyDate: const [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
          ],
          onTapedBar: (event, response, index, isPressed) {
            if (response != null &&
                response.spot != null &&
                event is FlTapUpEvent) {
              // final y = response.spot!.touchedRodData.toY;
              // final x = response.spot!.touchedBarGroup.x;
              // if (isPressed) {
              //   setState(() {
              //     totalValue = weeklyData.fold(
              //         0,
              //         (previousValue, element) =>
              //             previousValue + element);
              //     orderHistoryProvider!.clearSelectedDaysOrder();
              //   });
              // } else {
              //   debugPrint('Selected Value: $y');
              //   setState(() {
              //     totalValue = y.toDouble();
              //     orderHistoryProvider!.getOrderByDate(date: x);
              //   });
              // }
            }
          },
          onPressed: true,
          barWidth: 40,
          showLeftTitles: true,
        ));
  }

  Widget _buildCardKematianAyam() {
    return const Row(
      children: [
        CardStatistic(
          title: 'Ayam Mati',
          totalData: '118',
          icon: 'chicken-dead.svg',
          color: Color(0xFFC85F5F),
          right: -5,
          bottom: -3,
        ),
        SizedBox(width: 8),
        CardStatistic(
          title: 'Ayam Hidup',
          totalData: '223',
          icon: 'chicken-alive.svg',
          color: Color(0xFFC6C639),
          right: -5,
          bottom: -3,
        ),
        SizedBox(width: 8),
        CardStatistic(
          title: 'Total Ayam',
          totalData: '341',
          icon: 'chicken-alive.svg',
          color: Color(0xFF4E6B3E),
          right: -5,
          bottom: -3,
        ),
      ],
    );
  }

  Widget _buildCardPanenTelur() {
    return const Row(
      children: [
        CardStatistic(
          title: 'Total Telur',
          totalData: '118',
          icon: 'egg.svg',
          color: Color(0xFFDFC60B),
          right: -10,
          bottom: -5,
        ),
        SizedBox(width: 8),
        CardStatistic(
          title: 'Ayam Hidup',
          totalData: '223',
          icon: 'chicken-alive.svg',
          color: Color(0xFF4E6B3E),
          right: -5,
          bottom: -3,
        ),
      ],
    );
  }

  Widget _buildCardPanenPedaging() {
    return const Row(
      children: [
        CardStatistic(
          title: 'Total Ayam Pedaging',
          totalData: '281',
          icon: 'chicken-meat.svg',
          subtitle: 'Kg',
          color: Color(0xFFCD7107),
          right: -3,
          bottom: -8,
        ),
      ],
    );
  }
}
