import 'package:flutter/material.dart';
import 'package:tugas3/page/addtransaction.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.wallet_membership_outlined,
          color: Colors.blueAccent,
        ),
        title: const Text(
          'Transactions',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Container(
              color: const Color(0xFF5ACADB).withOpacity(0.15),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Brand New Shoes',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          'SH-231',
                          style: TextStyle(fontFamily: 'Poppins', fontSize: 13),
                        ),
                        Text(
                          '20 jan 2022 at 12.30',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_upward,
                      size: 40,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddTrasaction()));
        },
        backgroundColor: Colors.blueAccent,
        label: const Text(
          'New Tranactions',
        ),
        icon: const Icon(Icons.compare_arrows_rounded),
      ),
    );
  }
}
