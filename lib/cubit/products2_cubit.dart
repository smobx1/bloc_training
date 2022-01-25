import 'package:bloc/bloc.dart';
import 'package:bloc_training/models/product.dart';
import 'package:bloc_training/utils/data_services.dart';
import 'package:meta/meta.dart';

part 'products2_state.dart';

class Products2Cubit extends Cubit<List<Product>> {
  final _dataService = DataService();

  Products2Cubit() : super([]);

  void getProducts() async => emit(await _dataService.getProducts());
}
