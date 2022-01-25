import 'package:bloc/bloc.dart';
import 'package:bloc_training/models/product.dart';
import 'package:bloc_training/utils/data_services.dart';
import 'package:meta/meta.dart';

part 'products_dart_state.dart';

class ProductsDartCubit extends Cubit<List<Product>> {
  final _dataService = DataService();

  ProductsDartCubit() : super([]);

  void getProducts() async => emit(await _dataService.getProducts());
}
