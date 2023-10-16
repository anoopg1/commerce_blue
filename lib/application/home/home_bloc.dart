import 'package:bloc/bloc.dart';
import 'package:commerce_blue/core/failures/failures.dart';
import 'package:commerce_blue/domain/home/home_services.dart';
import 'package:commerce_blue/domain/home/models/home_product_model/home_product_model.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices homeServices;
  HomeBloc(this.homeServices) : super(HomeState.initial()) {
    on<GetAllProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, apiStatus: none()));
      final Either<MainFailure, List<HomeProductModel>> downloadOption =
          await homeServices.getAllProducts();

      emit(downloadOption.fold(
        (failure) =>
            state.copyWith(isLoading: false, apiStatus: some(left(failure))),
        (success) => state.copyWith(
            isLoading: false,
            allproducts: success,
            displayProducts: success,
            apiStatus: some(right(success))),
      ));
    });
    on<GetElectronicsProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, apiStatus: none()));
      final Either<MainFailure, List<HomeProductModel>> downloadOption =
          await homeServices.getElectronicsProducts();

      emit(downloadOption.fold(
        (failure) =>
            state.copyWith(isLoading: false, apiStatus: some(left(failure))),
        (success) => state.copyWith(
            isLoading: false,
            electronicProducts: success,
            displayProducts: success,
            apiStatus: some(right(success))),
      ));
    });
    on<GetJeweleryProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, apiStatus: none()));
      final Either<MainFailure, List<HomeProductModel>> downloadOption =
          await homeServices.getJeweleryProducts();

      emit(downloadOption.fold(
        (failure) =>
            state.copyWith(isLoading: false, apiStatus: some(left(failure))),
        (success) => state.copyWith(
            isLoading: false,
            jeweleryProducts: success,
            displayProducts: success,
            apiStatus: some(right(success))),
      ));
    });
    on<GetMenClothingProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, apiStatus: none()));
      final Either<MainFailure, List<HomeProductModel>> downloadOption =
          await homeServices.getMenClothingProducts();

      emit(downloadOption.fold(
        (failure) =>
            state.copyWith(isLoading: false, apiStatus: some(left(failure))),
        (success) => state.copyWith(
            isLoading: false,
            menclothingProducts: success,
            displayProducts: success,
            apiStatus: some(right(success))),
      ));
    });
    on<GetWomenClothingProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true, apiStatus: none()));
      final Either<MainFailure, List<HomeProductModel>> downloadOption =
          await homeServices.getWomenClothingProducts();

      emit(downloadOption.fold(
        (failure) =>
            state.copyWith(isLoading: false, apiStatus: some(left(failure))),
        (success) => state.copyWith(
            isLoading: false,
            womenClothingProducts: success,
            displayProducts: success,
            apiStatus: some(right(success))),
      ));
    });
  }
}
