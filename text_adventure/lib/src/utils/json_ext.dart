import 'package:yaml_edit/yaml_edit.dart';

extension JsonExt on Map<String, dynamic> {
  String toYaml() {
    final yamlEditor = YamlEditor('');
    yamlEditor.update([], this);
    return yamlEditor.toString();
  }
}
