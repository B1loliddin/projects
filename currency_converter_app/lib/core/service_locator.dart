import 'package:currency_converter_app/data/network_service.dart';
import 'package:currency_converter_app/domain/repositories/currency_repository.dart';

late final CurrencyRepository repository;

void serviceLocator() {
  repository = CurrencyRepositoryImplementation(network: HttpNetwork());
}
