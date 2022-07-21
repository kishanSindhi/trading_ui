import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:trading_ui/constants.dart';

class MyGraph extends StatelessWidget {
  const MyGraph({
    Key? key,
    required this.lineColor,
    required this.strokeWidth,
    required this.showAxis,
  }) : super(key: key);
  final Color lineColor;
  final int strokeWidth;
  final bool showAxis;
  static final List<CoinData> _coinData = [
    CoinData(data: 1, price: 0),
    CoinData(data: 2, price: 10),
    CoinData(data: 3, price: 16),
    CoinData(data: 4, price: 13),
    CoinData(data: 5, price: 20),
    CoinData(data: 6, price: 22),
    CoinData(data: 7, price: 20),
    CoinData(data: 8, price: 25),
  ];

  @override
  Widget build(BuildContext context) {
    final List<charts.Series<CoinData, num>> _listOfSeries = [
      charts.Series(
        data: _coinData,
        id: 'Coin Data',
        domainFn: (CoinData data, _) => data.data,
        measureFn: (CoinData data, _) => data.price,
        colorFn: (CoinData data, _) =>
            charts.ColorUtil.fromDartColor(lineColor),
        strokeWidthPxFn: (CoinData data, _) => strokeWidth,
      ),
    ];
    return charts.LineChart(
      _listOfSeries,
      animate: true,
      domainAxis: charts.NumericAxisSpec(
        showAxisLine: showAxis,
        renderSpec: !showAxis ? const charts.NoneRenderSpec() : null,
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: !showAxis ? const charts.NoneRenderSpec() : null,
        showAxisLine: showAxis,
      ),
      defaultInteractions: true,
    );
  }
}

class CoinData {
  final int data;
  final int price;

  CoinData({
    required this.data,
    required this.price,
  });
}
