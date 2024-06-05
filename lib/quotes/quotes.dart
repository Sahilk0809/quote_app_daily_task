import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/global.dart';

int i = 0;
QuoteModel? quoteModel;

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.account_circle),
          title: const Text(
            'Quotes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(isGrid){
                        isGrid = false;
                      }
                      else{
                        isGrid = true;
                      }
                    });
                  },
                  child: Icon(isGrid? Icons.grid_4x4_outlined: Icons.list)),
            ),
          ],
        ),
        body: isGrid?gridView():listView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModelList.length);
            setState(() {
              i++;
              if(i>1){
                i=0;
              }
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) =>
                    AlertDialog(
                      backgroundColor: i%2==0?colorList[0]:colorList[1],
                      title: Text(quoteModel!.quoteModelList[x].author!),
                      content: Text(quoteModel!.quoteModelList[x].quote!),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
              );
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          color: index%2==0?colorList[0]:colorList[1],
          child: ListTile(
            title: Text(
                '${index + 1}. ${quoteModel!.quoteModelList[index].quote!}'),
            subtitle: Text(quoteModel!.quoteModelList[index].author!),
          ),
        );
      },);
  }
  GridView gridView() {
    return GridView.builder(itemBuilder: (context, index) {
      return Card(
        margin: const EdgeInsets.all(8),
        color: index%2==0?colorList[0]:colorList[1],
        child: ListTile(
          title: Text(
              '${index + 1}. ${quoteModel!.quoteModelList[index].quote!}',),
          subtitle: Text(quoteModel!.quoteModelList[index].author!),
        ),
      );
    },
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
     shrinkWrap: true,
    );
  }
}
