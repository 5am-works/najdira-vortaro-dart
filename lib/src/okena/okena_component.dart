import 'dart:html';

import 'package:NajdiraVortaro/src/services/okena_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'okena-vorto',
    templateUrl: 'okena_component.html',
    styleUrls: [],
    directives: [coreDirectives, routerDirectives],
    providers: [
      ClassProvider(OkenaService)
    ]
)
class OkenaComponent implements AfterViewInit {
  static final _spaco = 10;
  static final _longeco = 40;

  final OkenaService _okenaService;

  OkenaComponent(this._okenaService);

  @Input()
  String vorto;

  @ViewChild('kanvaso', read: Element)
  Element element;

  @override
  void ngAfterViewInit() {
    final kanvaso = element as CanvasElement;
    kanvaso.height = _spaco * 2 + _longeco + 7;
    kanvaso.width = (_spaco * (vorto.length / 2 + 1)
        + _longeco * vorto.length / 2) as int;
    final ctx = kanvaso.context2D;
    ctx.lineWidth = 6;
    ctx.lineCap = 'square';
    ctx.lineJoin = 'miter';
    _okenaService.desegni(vorto, ctx, _longeco, _spaco);
  }
}