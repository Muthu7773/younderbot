import 'dart:io';

void main() {
  stdout.write('Enter input: ');
  String input = stdin.readLineSync() ?? '';
  RegExp exp = RegExp(r'([a-zA-Z])(\d{1,2})');
  Iterable<RegExpMatch> matches = exp.allMatches(input);

  StringBuffer output = StringBuffer();
  for (var match in matches) {
    String char = match.group(1)!;
    int count = int.parse(match.group(2)!);
    output.write(char * count);
  }
  print(output.toString());
}