import 'package:angular/angular.dart';
import 'package:angular_components/app_layout/material_persistent_drawer.dart';
import 'package:angular_components/app_layout/material_temporary_drawer.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_list/material_list.dart';
import 'package:angular_components/material_list/material_list_item.dart';
import 'package:angular_components/material_toggle/material_toggle.dart';
import 'package:jacobpyke/src/components/home/home_component.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:jacobpyke/src/components/repos/repo_component.dart';

enum PageSelection {home, resume, repos}

@Component(
  selector: 'my-app',
  styleUrls: const ['package:angular_components/app_layout/layout.scss.css', 'app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialIconComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    MaterialToggleComponent,
    NgIf,
    HomeComponent,
    RepoComponent
  ],
  exports: const [PageSelection]
)
class AppComponent {



  bool customWidth = false;
  bool end = false;
  bool overlay = true;
  PageSelection currentpage =PageSelection.home;

  void toHome() {
    currentpage =PageSelection.home;
  }

  void toResume() {
    currentpage =PageSelection.resume;
  }

  void toRepos() {
    currentpage =PageSelection.repos;
  }
}
