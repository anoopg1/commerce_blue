// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:commerce_blue/application/home/home_bloc.dart' as _i5;
import 'package:commerce_blue/domain/home/home_services.dart' as _i3;
import 'package:commerce_blue/infrastructure/home/home_repository.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.HomeServices>(_i4.HomeRepository());
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc(gh<_i3.HomeServices>()));
    return this;
  }
}
