import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class FinancialData {
  final String month;
  final double value;

  FinancialData(this.month, this.value);
}
final List<FinancialData> data = [
  FinancialData('كانون\n الثاني', 100.000),
  FinancialData('شباط', 300000),
  FinancialData('آذار', 200000),
  FinancialData('نيسان', 250000),
  FinancialData('أيار', 0),
  FinancialData(' حزيران', 400000),
  FinancialData('تموز', 100.000),
  FinancialData(' آب', 300000),
  FinancialData(' أيلول', 200000),
  FinancialData(' تشرين \n الأول', 375000),
  FinancialData('تشرين\n الثاني', 0),
  FinancialData(' كانون\n الأول', 40000),
  // Add more data points as needed
];
Widget buildChart() {
  return BarChart(
    BarChartData(
      alignment: BarChartAlignment.spaceAround,
      maxY: 1000000,
      barTouchData: BarTouchData(enabled: false),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles:(context, value) =>  TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.bold,
          ),
          margin: 16,
          getTitles: (double value) {
            return data[value.toInt()].month;
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles:(context, value) =>  TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          margin: 16,
          reservedSize: 40, // Adjust the space for Y-axis values
          getTitles: (double value) {
            if (value == 0 || value == 1000000) {
              return (value / 1000000).toStringAsFixed(0) + 'M';
            } else if (value % 100 == 0) {
              return (value / 100).toStringAsFixed(0) + '00';
            }
            return '';
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        checkToShowHorizontalLine: (value) => value % 10000 == 0,
        getDrawingHorizontalLine: (value) {
          if (value == 0) {
            return FlLine(color: Colors.grey, strokeWidth: 0.8);
          } else {
            return FlLine(color: Colors.grey, strokeWidth: 0.3);
          }
        },
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.grey, width: 0.8),
      ),
      barGroups: data.asMap().entries.map((entry) {
        return BarChartGroupData(
          x: entry.key,
          barRods: [
            BarChartRodData(
              borderRadius: BorderRadius.circular(0),
              y: entry.value.value,
              colors: [Colors.greenAccent.shade200],
              width: 10,
             // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
            ),
          ],
        );
      }).toList(),
    ),
  );
}

