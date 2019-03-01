import 'package:angular/angular.dart';
import 'package:jacobpyke/src/components/home/home_component.dart';
import 'package:angular_components/app_layout/material_persistent_drawer.dart';
import 'package:angular_components/content/deferred_content.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

enum PageSelection {home, resume, repos}

@Component(
  selector: 'my-app',
  styleUrls: const ['package:angular_components/app_layout/layout.scss.css', 'app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    DeferredContentDirective,
    MaterialButtonComponent,
    MaterialPersistentDrawerDirective,
    MaterialIconComponent,
    MaterialPersistentDrawerDirective,
    NgIf,
    HomeComponent
  ],
  exports: const [PageSelection]
)
class AppComponent { 
  PageSelection currentpage = PageSelection.home;

}
