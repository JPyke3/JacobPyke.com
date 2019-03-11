import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:jacobpyke/src/components/repos/repo_component.dart';

class RepoService {
  static final _headers = {'Content-Type': 'application/json'};
  static const _heroesUrl = 'api/heroes'; // URL to web API
  final Client _http;

  RepoService(this._http);

  Future<List<RepoDesc>> getAll() async {
    try {
      await _http.get("https://api.github.com/users/JPyke3/repos").then((response) {
        print(response);
      });
    } catch (e) {
      print(e);
    }
  }
}