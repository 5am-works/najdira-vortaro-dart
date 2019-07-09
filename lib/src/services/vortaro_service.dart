import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';

class VortaroService {
  static const _listiURL = "https://najdira-vortaro.vapor.cloud/indekso";

  final BrowserClient _http;

  VortaroService(this._http);

  Future<List<VortoKajSignifo>> listi() async {
    try {
      final respondo = await _http.get(_listiURL);
      final listo = (json.decode(respondo.body) as List)
        .map((json) => VortoKajSignifo.fromJSON(json))
        .toList();
      return listo;
    } catch (e) {
      throw Exception('Erado de servilo: $e');
    }
  }
}

class VortoKajSignifo {
  String vorto;
  int ecoj;
  String signifo;

  VortoKajSignifo(this.vorto, this.ecoj, this.signifo);

  factory VortoKajSignifo.fromJSON(Map<String, dynamic> vorto) =>
      VortoKajSignifo(
        vorto['vorto'],
        vorto['ecoj'],
        vorto['signifo'],
      );
}