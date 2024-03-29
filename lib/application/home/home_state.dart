part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HomeProductModel> allproducts,
    required bool isLoading,
    required Option<Either<MainFailure, List<HomeProductModel>>> apiStatus,
    required List<HomeProductModel> electronicProducts,
    required List<HomeProductModel> jeweleryProducts,
    required List<HomeProductModel> menclothingProducts,
    required List<HomeProductModel> womenClothingProducts,
       required List<HomeProductModel> displayProducts,

  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
     displayProducts: [],
      allproducts: [],
      isLoading: false,
      apiStatus: None(),
      electronicProducts: [],
      jeweleryProducts: [],
      menclothingProducts: [],
      womenClothingProducts: [],
    );
  }
}
