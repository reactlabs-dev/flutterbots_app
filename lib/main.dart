import 'package:flutter/material.dart';

void main() => runApp(FlutterBotsApp());

class FlutterBotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBots Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComponentListScreen(),
    );
  }
}

class ComponentListScreen extends StatelessWidget {
  final List<Component> components = [
    Component(name: 'Text', description: 'A run of styled text.'),
    Component(name: 'Column', description: 'Vertical, linear layout.'),
    Component(name: 'Row', description: 'Horizontal, linear layout.'),
    Component(
        name: 'Container',
        description:
            'A convenience widget that combines common painting, positioning, and sizing widgets.'),
    Component(name: 'Image', description: 'A widget that displays an image.'),
    Component(
        name: 'Icon',
        description:
            'A graphical icon widget drawn with a glyph from a font described in an IconData.'),
    Component(
        name: 'RaisedButton', description: 'A Material Design raised button.'),
    Component(
        name: 'FlatButton', description: 'A Material Design flat button.'),
    Component(
        name: 'Scaffold',
        description:
            'Implements the basic Material Design visual layout structure.'),
    Component(name: 'Appbar', description: 'A Material Design app bar.'),
    Component(
        name: 'FlutterLogo', description: 'The Flutter logo, in widget form.'),
    Component(
        name: 'Placeholder',
        description:
            'A widget that draws a box that represents where other widgets will one day be added.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterBots Component Demo'),
      ),
      body: ListView.builder(
        itemCount: components.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(components[index].name),
            subtitle: Text(components[index].description),
            onTap: () {
              // Navigate to the component detail screen
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

  ComponentDetailScreen({required this.component});

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
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              component.description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Component {
  final String name;
  final String description;

  Component({required this.name, required this.description});
}
