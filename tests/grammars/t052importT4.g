parser grammar t052importT4;
options {
    language=Dart;
}
@members {
void capture(String t) {
  this.gt052importM4.capture(t);
}
}
a : B {this.capture("T.a");} ; // hidden by S.a
