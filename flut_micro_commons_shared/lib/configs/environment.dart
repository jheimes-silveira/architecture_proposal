import 'flavors.dart';

class Environment {
  final Flavor flavor;
  final String name;
  final String title;
  final String baseUrl;

  Environment.env(this.flavor, Map<String, String> env)
      : title = env['title'] ?? '',
        name = env['name'] ?? '',
        baseUrl = env['baseUrl'] ?? '';
}
