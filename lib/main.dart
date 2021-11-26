import 'package:cart_provider/cart_provider.dart';
import 'package:cart_provider/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: Builder(
          builder: (BuildContext context) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: ProductListScreen(),
              debugShowCheckedModeBanner: false,
            );
          },
        ));
  }
}
