import 'package:actions_toolkit_dart/core.dart' as core;
void main(List<String> args) {
  final whoToGreet = core.getInput(name: 'who-to-greet', options: const core.InputOptions(required: true));
  print('Hello $whoToGreet');
  core.setOutput(name: 'time', value: DateTime.now().toString());
}