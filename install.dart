import 'dart:io';

void main() async {
  final dir = Directory('./');
  final List<FileSystemEntity> entities = await dir.list().toList();
  entities.forEach((entry) {
    final folder = entry.absolute.path;
    final brickName = folder.split('/').last;
    final result = Process.runSync(
      'mason',
      [
        'add',
        '--global',
        '--path=$folder',
        '$brickName',
      ],
    );
    stdout.write(result.stdout);
    stdout.write(result.stderr);
  });
}
