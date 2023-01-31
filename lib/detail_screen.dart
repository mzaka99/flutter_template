// ignore_for_file: depend_on_referenced_packages

import 'package:embed_third_party/global_widgets.dart';
import 'package:embed_third_party/icon_widgets.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool bookmark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustomWidget(
        centerTitle: false,
        title: Text(
          'Detail Screen',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppBarTheme.of(context).iconTheme?.color,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                bookmark = !bookmark;
              });
            },
            icon: bookmark
                ? bookmarkFillIcon(
                    IconTheme.of(context),
                  )
                : bookmarkIcon(
                    IconTheme.of(context),
                  ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 15,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 15,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 15,
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 200,
            ),
          ],
        ),
      )),
    );
  }
}
