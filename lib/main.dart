import 'package:flutter/material.dart';
import 'screens/about_us.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBots',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterBots'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Component Library'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ComponentListScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo_red.png',
                width: 150, height: 150, fit: BoxFit.contain),
            const Text(
              'Welcome to FlutterBots!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Flutter is an open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It is highly popular for rapid development and its rich set of pre-designed widgets.',
            ),
            const SizedBox(height: 16),
            const Text(
              'Dart is the programming language used in Flutter. It offers strong support for modern app development with features like asynchronous programming, strong type checking, and libraries for common tasks.',
            ),
          ],
        ),
      ),
    );
  }
}

class ComponentListScreen extends StatelessWidget {
  final List<Component> components = [
    Component(
        name: 'Text',
        description: 'A run of styled text.',
        exampleCode:
            const Text('Hello, World!', style: TextStyle(fontSize: 24.0))),
    Component(
        name: 'Column',
        description: 'Layout a list of child widgets vertically.',
        exampleCode:
            Column(children: [Text('Item 1'), Text('Item 2'), Text('Item 3')])),
    Component(
        name: 'Row',
        description: 'Layout a list of child widgets horizontally.',
        exampleCode:
            Row(children: [Text('Item 1'), Text('Item 2'), Text('Item 3')])),
    Component(
        name: 'Container',
        description:
            'A convenience widget that combines common painting, positioning, and sizing widgets.',
        exampleCode: Container(width: 100, height: 100, color: Colors.blue)),
    Component(
        name: 'Image',
        description: 'A widget that displays an image.',
        exampleCode: Image.network('https://example.com/image.jpg')),
    Component(
        name: 'Icon',
        description: 'A Material Design icon.',
        exampleCode: const Icon(Icons.star, color: Colors.yellow)),
    Component(
        name: 'ElevatedButton',
        description: 'A Material Design raised button.',
        exampleCode: ElevatedButton(onPressed: () {}, child: Text('Click Me'))),
    Component(
        name: 'TextButton',
        description: 'A Material Design flat button.',
        exampleCode: TextButton(onPressed: () {}, child: Text('Click Me'))),
    Component(
        name: 'Scaffold',
        description: 'Basic visual layout structure.',
        exampleCode: const Text('Scaffold Example')),
    Component(
        name: 'AppBar',
        description: 'A Material Design app bar.',
        exampleCode: const Text('App Bar Example')),
    Component(
        name: 'FlutterLogo',
        description: 'The Flutter logo, in widget form.',
        exampleCode: const FlutterLogo(size: 100)),
    Component(
        name: 'Placeholder',
        description:
            'A widget that draws a box that represents where other widgets will one day be added.',
        exampleCode:
            const Placeholder(fallbackHeight: 100, fallbackWidth: 100)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Component Library'),
      ),
      body: ListView.builder(
        itemCount: components.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(components[index].name),
            subtitle: Text(components[index].description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ComponentDetailScreen(component: components[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ComponentDetailScreen extends StatelessWidget {
  final Component component;

  const ComponentDetailScreen({Key? key, required this.component})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(component.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              component.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              component.description,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            component.exampleCode,
          ],
        ),
      ),
    );
  }
}

class Component {
  final String name;
  final String description;
  final Widget exampleCode;

  Component(
      {Key? key,
      required this.name,
      required this.description,
      required this.exampleCode});
}
