import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            LeafBorderText(
            text:"random 1",
            imgCode: '1',
          ), 
          LeafBorderText(
            text: "random 2",
            imgCode: '2',
          ), 
          LeafBorderText(
            imgCode: '0',
          )
          ],
        ),
      ),
    );
  }
}

class LeafBorderText extends StatelessWidget {
  final String imgCode;
  final String text;
  const LeafBorderText({
    super.key, this.text='halo dunia', this.imgCode= '1'});

  void handleButton()
  {
    print("Saya diklik");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.rotationZ(0.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20), topRight: Radius.circular(30))), 
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image: NetworkImage('https://picsum.photos/50?random=$imgCode')),
            SizedBox(
              width: 8,
            ),
            Icon(Icons.access_alarms_sharp),
            Text(
               text,
                    style: 
                    const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: handleButton, child: Text('Klik Saya')),
                    )
          ],
        ),
      ),
    );
  }
}