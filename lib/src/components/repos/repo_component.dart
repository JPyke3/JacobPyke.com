import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';

class RepoDesc {
  final String projName;
  final String projPlatform;
  final String projDesc;
  final String projURL;
  final String projLicence;

  RepoDesc(this.projName, this.projPlatform, this.projDesc, this.projURL,
      this.projLicence);
}

@Component(
    templateUrl: "repo_component.html",
    styleUrls: ["repo_component.css"],
    selector: "repo",
    directives: [NgFor, RepoDesc, MaterialButtonComponent],
    exports: const [RepoDesc])
class RepoComponent {
  List<RepoDesc> repos = [
    RepoDesc(
        "JacobPyke.com",
        "AngularDart | Web App",
        "This is the repository for this website! This was build using AngularDart. This was a good idea! Whilst I had done a little bit of web development throughout high school, and through uni, the experience doesn't really settle until you do it for real. So, if you are reading this, then I must have done fairly well right?",
        "https://github.com/JPyke3/JacobPyke.com",
        "MIT Licence"),
  ];
}
