parser grammar t052importS1;
options {
    language=Dart;
}
@members {
void capture(String t) {
  this.gt052importM1.capture(t);
}
}

a : B { this.capture("S.a"); } ;
