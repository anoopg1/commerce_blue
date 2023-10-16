import 'package:commerce_blue/core/failures/failures.dart';
import 'package:commerce_blue/domain/home/models/home_product_model/home_product_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeServices {
  Future<Either<MainFailure, List<HomeProductModel>>> getAllProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getElectronicsProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getJeweleryProducts();
  Future<Either<MainFailure, List<HomeProductModel>>> getMenClothingProducts();
  Future<Either<MainFailure, List<HomeProductModel>>>
      getWomenClothingProducts();
}
