import 'package:bloc_training/cubit/products2_cubit.dart';
import 'package:bloc_training/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products2 extends StatelessWidget {
  const Products2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products 2'),
      ),
      body: BlocProvider(
        create: (context) => Products2Cubit()..getProducts(),
        child: BlocBuilder<Products2Cubit, List<Product>>(
          builder: (context, products) {
            if (products.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('SECOND'),
                    subtitle: Text(products[index].title),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
