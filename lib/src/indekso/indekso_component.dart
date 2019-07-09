import 'package:NajdiraVortaro/src/services/vortaro_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'vortaro-indekso',
  templateUrl: 'indekso_component.html',
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
    'indekso_component.css'
  ],
  directives: [coreDirectives, routerDirectives],
  providers: [ClassProvider(VortaroService)]
)
class IndeksoComponent {
  final VortaroService _vortaro;
  List<VortoKajSignifo> vortoj;

  IndeksoComponent(this._vortaro) {
    _vortaro.listi().then((listo) {
      this.vortoj = listo;
    });
  }

  String normaligi(String vorto) {
    return vorto.replaceAll("A", "ai").replaceAll("E", "ei").replaceAll("O", "ou")
      .replaceAll("_", "");
  }
}