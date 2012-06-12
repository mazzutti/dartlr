parser grammar t052importT5;
options {
    language=Dart;
}
tokens { C; B; A; } /// reverse order
@members {
void capture(String t) {
  this.gt052importM5.capture(t);
}
}
y : A {this.capture("T.y");} ;
