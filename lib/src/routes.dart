import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'indekso/indekso_component.template.dart' as indekso_template;
import 'vorto/vorto_component.template.dart' as vorto_template;

export 'route_paths.dart';

class Routes {
  static final indekso = RouteDefinition(
    routePath: RoutePaths.indekso,
    component: indekso_template.IndeksoComponentNgFactory,
  );
  static final vorto = RouteDefinition(
    routePath: RoutePaths.vorto,
    component: vorto_template.VortoComponentNgFactory,
  );

  static final tuto = <RouteDefinition>[
    indekso,
    vorto,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.indekso.toUrl(),
    )
  ];
}