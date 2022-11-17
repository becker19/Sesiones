import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        'name': 'CocaCola',
        'description': '500ml',
        'pCompra': '2.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Inka COla',
        'description': '500ml',
        'pCompra': '1.00',
        'pVenta': '3.50'
      },
      {
        'name': 'Oreo',
        'description': '1 UND',
        'pCompra': '2.00',
        'pVenta': '3.00'
      },
      {
        'name': 'Gloria',
        'description': 'Leche 1T',
        'pCompra': '2.00',
        'pVenta': '5.50'
      },
      {
        'name': 'Ariel',
        'description': '500Kg',
        'pCompra': '2.00',
        'pVenta': '4.00'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Datable'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('P.Compra')),
              DataColumn(label: Text('P.Venta')),
            ],
            rows: products
                .map(
                  (e) => DataRow(
                    cells: [
                      DataCell(Text(e['name'])),
                      DataCell(Text(e['description'])),
                      DataCell(Text('S/. ' + e['pCompra'])),
                      DataCell(Text('S/. ' + e['pVenta'])),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
