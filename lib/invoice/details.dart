import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/global.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/pdf');
                },
                child: const Icon(
                  Icons.picture_as_pdf_outlined,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Customer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '${invoiceDetails[selectedIndex]['name']}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Invoice Items',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const ListTile(
                title: Text('Technical Engagement'),
                trailing: Text('Rs. 120.0/-'),
              ),
              const ListTile(
                title: Text('Deployment Assistant'),
                trailing: Text('Rs. 200.0/-'),
              ),
              const ListTile(
                title: Text('Develop Software Solution'),
                trailing: Text('Rs. 3020/-'),
              ),
              const ListTile(
                title: Text('Produce Documentation'),
                trailing: Text('Rs. 840/-'),
              ),
              const ListTile(
                title: Text('Application'),
                trailing: Text('Rs. 25820/-'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${invoiceDetails[selectedIndex]['price']}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
