import 'package:angular/angular.dart';
import 'package:jacobpyke/app_component.template.dart' as ng;
import 'package:firebase/firebase.dart' as fb;

void main() {
  fb.initializeApp(
      apiKey: "AIzaSyBsD7F6iOMSHRE5m7SFQAFJ02VIbb5DAjg",
      authDomain: "jacobpyke.firebaseapp.com",
      databaseURL: "https://jacobpyke.firebaseio.com",
      projectId: "jacobpyke",
      storageBucket: "",
      messagingSenderId: "182375053476");
  runApp(ng.AppComponentNgFactory);
}