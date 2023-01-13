// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class dataTableSample extends StatelessWidget {
  static String id = 'data_table_sample';
  const dataTableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
            decoration: BoxDecoration(border: Border.all(width: 3)),
            columns: [
              DataColumn(label: Text('id')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age'))
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Anand')),
                DataCell(Text('18'))
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('sanjay')),
                DataCell(Text('18'))
              ]),
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('shihab')),
                DataCell(Text('18'))
              ])
            ]),
      ),
    );
  }
}
