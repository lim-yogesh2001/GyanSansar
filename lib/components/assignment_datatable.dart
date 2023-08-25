import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AssignmentDatatable extends StatefulWidget {
  const AssignmentDatatable({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AssignmentDatatableState();
  }
}

class AssignmentDatatableState extends State<AssignmentDatatable> {
  final DataTableSource _data = AssignmentData();
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      columns: const [
        DataColumn(
            label: Text(
          "SN",
          style: TextStyle(color: Colors.red),
        )),
        DataColumn(
          label: Text(
            "Date",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12.0,
            ),
          ),
        ),
        DataColumn(
            label: Text(
          "Institution",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        )),
        DataColumn(
            label: Text(
          "Topic",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        )),
        DataColumn(
          label: Text(
            "Status",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12.0,
            ),
          ),
        ),
        DataColumn(
            label: Text(
          "       Action",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 12.0,
          ),
        ))
      ],
      source: _data,
      columnSpacing: 20.0,
      horizontalMargin: 20.0,
      rowsPerPage: 6,
      showCheckboxColumn: false,
    );
  }
}

class AssignmentData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      100,
      (index) => {
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
            )
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
        _data[index]['action'],
      ),
    ]);
  }
}
