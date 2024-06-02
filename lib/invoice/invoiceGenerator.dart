import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/global.dart';

class InvoiceGenerator extends StatefulWidget {
  const InvoiceGenerator({super.key});

  @override
  State<InvoiceGenerator> createState() => _InvoiceGeneratorState();
}

class _InvoiceGeneratorState extends State<InvoiceGenerator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Invoice generator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: const Icon(
            Icons.account_circle,
          ),
        ),
        body: Column(
          children: [
            ...List.generate(
              invoiceDetails.length,
              (index) => GestureDetector(
                onTap: () {
                  selectedIndex = index;
                  Navigator.of(context).pushNamed('/detail');
                },
                child: ListTile(
                  title: Text(
                    '${invoiceDetails[index]['title']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${invoiceDetails[index]['name']}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    '${invoiceDetails[index]['price']}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
