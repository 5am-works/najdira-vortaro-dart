import 'package:angular/angular.dart';
import 'package:NajdiraVortaro/app_component.template.dart' as ng;
import 'package:angular_router/angular_router.dart';
import 'package:http/browser_client.dart';

import 'main.template.dart' as self;

const useHashLS = true;
@GenerateInjector([
  useHashLS ? routerProvidersHash : routerProviders,
  ClassProvider(BrowserClient),
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
