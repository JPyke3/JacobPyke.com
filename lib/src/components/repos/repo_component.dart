import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

class RepoDesc {
  final String projName;
  final String projPlatform;
  final String projDesc;
  final String projURL;

  RepoDesc(this.projName, this.projPlatform, this.projDesc, this.projURL);
}

@Component(
    templateUrl: "repo_component.html",
    styleUrls: ["repo_component.css"],
    selector: "repo",
    directives: [NgFor, RepoDesc, MaterialButtonComponent],
    exports: const [RepoDesc])
class RepoComponent implements OnInit {
  List<RepoDesc> repos = [];

  Future<void> _getRepos() async {
    try {
      await BrowserClient()
          .get("https://api.github.com/users/JPyke3/repos")
          .then((Response reponse) {
        return reponse;
      }).then((data) {
        List<dynamic> jsondata = jsonDecode(data.body);
        for (var i = 0; i < jsondata.length; i++) {
          repos.add(RepoDesc(jsondata[i]["name"], jsondata[i]["language"],
              jsondata[i]["description"], jsondata[i]["svn_url"]));
        }
        print(repos);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void ngOnInit() {
    print("Initi");
    _getRepos();
  }
}
