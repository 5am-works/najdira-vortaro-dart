import 'dart:html';

import 'package:NajdiraVortaro/src/okena/okena_component.dart';
import 'package:NajdiraVortaro/src/services/vortaro_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'vortaro-vorto',
    templateUrl: 'vorto_component.html',
    styleUrls: [
      'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
      'vorto_component.css'
    ],
    directives: [coreDirectives, routerDirectives, OkenaComponent],
    providers: [
      ClassProvider(VortaroService)
    ]
)
class VortoComponent implements OnActivate {
  String vorto;

  @override
  void onActivate(RouterState previous, RouterState current) {
    vorto = current.parameters['vorto'];
  }
}