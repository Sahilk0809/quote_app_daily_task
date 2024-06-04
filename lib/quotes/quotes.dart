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
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ...List.generate(quoteList.length, (index) {
                // setState(() {
                //   if(i==3){
                //     i=0;
                //   }
                //   i++;
                // });
                return Card(
                  color: colorList[i],
                  child: ListTile(
                    title: Text(
                        '${index + 1}. ${quoteModel!.quoteModelList[index].quote!}'),
                    subtitle: Text(quoteModel!.quoteModelList[index].author!),
                  ),
                );
              }),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = Random();
            int x = random.nextInt(quoteModel!.quoteModelList.length);
            setState(() {
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text(quoteModel!.quoteModelList[x].quote!),
                actions: [
                  Text(quoteModel!.quoteModelList[x].author!),
                ],
              ),);
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
