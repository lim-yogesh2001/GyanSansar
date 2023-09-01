
import 'dart:math';

import "package:flutter/material.dart";
import 'package:intl/intl.dart';


class AssignmentData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(100, (index) {
    return {
      "id": index,
      "date": DateFormat.yMMMEd().format(DateTime.now()),
      "deadline": DateFormat.yMMMEd().format(DateTime.now().add(
        const Duration(days: 3),
      )),
      "institution": Random().nextInt(100),
      "topic": "${Random().nextInt(100)} okay",
      "status": "${Random().nextBool()}",
      "action": Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 16.0,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              size: 16.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
      "action2": Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 16.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.visibility,
              size: 16.0,
            ),
          )
        ],
      )
    };
  });

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

  Widget? displayActionButtons(int index) {
    String isChecked = _data[index]['status'];
    if (isChecked == "true") {
      return _data[index]['action2'];
    } else {
      return _data[index]['action'];
    }
  }

  @override
  DataRow? getRow(int index) {
    // TODO: implement getRow
    return DataRow(onSelectChanged: (value) {}, cells: [
      DataCell(Text(
        _data[index]['id'].toString(),
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12.0,
        ),
      )),
      DataCell(Column(
        children: [
          Text(
            _data[index]['date'].toString(),
            style: const TextStyle(fontSize: 12.0, color: Colors.black87),
          ),
          Text(
            _data[index]['deadline'].toString(),
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      )),
      DataCell(Text(
        _data[index]['institution'].toString(),
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12.0,
        ),
      )),
      DataCell(Text(
        _data[index]['topic'],
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12.0,
        ),
      )),
      DataCell(Text(
        _data[index]['status'],
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12.0,
        ),
      )),
      DataCell(
       displayActionButtons(index)!
      ),
    ]);
  }
}
