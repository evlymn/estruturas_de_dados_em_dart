class Cronos {

  static int get milliseconds => DateTime.now().millisecondsSinceEpoch;

  static DateTime get now => DateTime.now();

  static int seconds(int milliseconds) => Duration(milliseconds: milliseconds).inSeconds;


}
