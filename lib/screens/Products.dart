import 'package:bloc_training/cubit/products_dart_cubit.dart';
import 'package:bloc_training/models/product.dart';
import 'package:bloc_training/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.products_appBar.tr()),
      ),
      body: BlocBuilder<ProductsDartCubit, List<Product>>(
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
                  title: Text(products[index].title),
                  subtitle: Text(products[index].body),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
