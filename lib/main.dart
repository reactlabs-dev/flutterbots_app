import 'package:flutter/material.dart';

void main() => runApp(FlutterBotsApp());

class FlutterBotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Key('FlutterBotsApp'),
      title: 'FlutterBots Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ComponentListScreen(),
    );
  }
}

class ComponentListScreen extends StatelessWidget {
  final List<Component> components = [
    Component(
        key: Key('TextComponent'),
        name: 'Text',
        description: 'A run of styled text.',
        exampleWidget: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24.0),
          key: Key('TextExample'),
        )),
    Component(
        key: Key('ColumnComponent'),
        name: 'Column',
        description: 'Layout a list of child widgets vertically.',
        exampleWidget: Column(
          children: [Text('Item 1'), Text('Item 2'), Text('Item 3')],
          key: Key('ColumnExample'),
        )),
    Component(
        key: Key('RowComponent'),
        name: 'Row',
        description: 'Layout a list of child widgets horizontally.',
        exampleWidget: Row(
          children: [Text('Item 1'), Text('Item 2'), Text('Item 3')],
          key: Key('RowExample'),
        )),
    Component(
        key: Key('ContainerComponent'),
        name: 'Container',
        description:
            'A convenience widget that combines common painting, positioning, and sizing widgets.',
        exampleWidget: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          key: Key('ContainerExample'),
        )),
    Component(
        key: Key('ImageComponent'),
        name: 'Image',
        description: 'A widget that displays an image.',
        exampleWidget: Image.network(
          'https://example.com/image.jpg',
          key: Key('ImageExample'),
        )),
    Component(
        key: Key('IconComponent'),
        name: 'Icon',
        description: 'A Material Design icon.',
        exampleWidget: Icon(
          Icons.star,
          color: Colors.yellow,
          key: Key('IconExample'),
        )),
    Component(
        key: Key('ElevatedButtonComponent'),
        name: 'ElevatedButton',
        description: 'A Material Design raised button.',
        exampleWidget: ElevatedButton(
          onPressed: () {},
          child: Text('Click Me'),
          key: Key('ElevatedButtonExample'),
        )),
    Component(
        key: Key('TextButtonComponent'),
        name: 'TextButton',
        description: 'A Material Design flat button.',
        exampleWidget: TextButton(
          onPressed: () {},
          child: Text('Click Me'),
          key: Key('TextButtonExample'),
        )),
    Component(
        key: Key('ScaffoldComponent'),
        name: 'Scaffold',
        description: 'Basic visual layout structure.',
        exampleWidget: Scaffold(
          appBar: AppBar(
            title: Text('Scaffold Example'),
          ),
          body: Text('Hello World'),
          key: Key('ScaffoldExample'),
        )),
    Component(
        key: Key('AppBarComponent'),
        name: 'AppBar',
        description: 'A Material Design app bar.',
        exampleWidget: AppBar(
          title: Text('App Bar Example'),
          key: Key('AppBarExample'),
        )),
    Component(
        key: Key('FlutterLogoComponent'),
        name: 'FlutterLogo',
        description: 'The Flutter logo, in widget form.',
        exampleWidget: FlutterLogo(
          size: 100,
          key: Key('FlutterLogoExample'),
        )),
    Component(
        key: Key('PlaceholderComponent'),
        name: 'Placeholder',
        description:
            'A widget that draws a box that represents where other widgets will one day be added.',
        exampleWidget: Placeholder(
          fallbackHeight: 100,
          fallbackWidth: 100,
          key: Key('PlaceholderExample'),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('ComponentListScreen'),
      appBar: AppBar(
        title: Text('FlutterBots Component Demo'),
      ),
      body: ListView.builder(
        itemCount: components.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key('ComponentTile-\${index}'),
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

  ComponentDetailScreen({Key? key, required this.component}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('ComponentDetailScreen'),
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
            SizedBox(height: 20),
            component.exampleWidget,
          ],
        ),
      ),
    );
  }
}

class Component {
  final Key key;
  final String name;
  final String description;
  final Widget exampleWidget;

  Component(
      {required this.key,
      required this.name,
      required this.description,
      required this.exampleWidget});
}
