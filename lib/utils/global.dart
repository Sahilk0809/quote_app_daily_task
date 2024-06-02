import 'package:flutter/material.dart';

List invoiceDetails = [
  {
    'name': 'Sahil Kashyap',
    'title': 'Flutter Developer',
    'price': 'Rs. 30000/-',
  },
  {
    'name': 'Adam',
    'title': 'Web developer',
    'price': 'Rs. 25000/-',
  },
  {
    'name': 'Vishal',
    'title': 'UI UX Designer',
    'price': 'Rs. 20000/-',
  },
];

int selectedIndex = 0;

// class InvoiceModal{
//   String? name, title, price;
//
//   InvoiceModal({
//     this.name, this.title, this.price
// });
//   factory InvoiceModal.fromInvoice({required Map Invoice}) {
//     return InvoiceModal(
//       name: Invoice['name'],
//       title: Invoice['name'],
//       price: Invoice['name'],
//     );
//   }
// }
//
// void factory(){
//   for(int i = 0; i<invoiceDetails.length; i++){
//     InvoiceModal i1 = InvoiceModal.fromInvoice(Invoice: invoiceDetails[i]);
//     invoice.add(i1);
//   }
// }
// List<InvoiceModal> invoice = [];