import 'package:flutter/material.dart';
import 'package:memory_game/data/data.dart';
import 'package:memory_game/model/tile_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 
  List<TileModel> visiblePairs = new List<TileModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getPairs();
    pairs.shuffle();

    visiblePairs = pairs;
    selected = true;

    Future.delayed(const Duration(seconds: 3),(){
    setState(() {
       visiblePairs = getQuestions();
       selected = false;
    }); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical:50, horizontal:20),
        child: Column(
          children:<Widget>[
            SizedBox(height: 20,),
            Text("$points/800",style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500),
            ),
            Text("Points"),
            SizedBox(height:20),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 0.0,
                maxCrossAxisExtent: 100,
              ),
              children: List.generate(visiblePairs.length, (index){
                return Tile(
                  imageAssetPath: visiblePairs[index].getImageAssetPath(),
                  parent: this,
                  tileIndex: index,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
class Tile extends StatefulWidget {

  String imageAssetPath ;

  int tileIndex;

  _HomePageState parent;
  Tile({this.imageAssetPath,this.parent, this.tileIndex });

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!selected){
          if(selectedTileIndex != ""){

            if(selectedImageAssetPath == pairs[widget.tileIndex].getImageAssetPath()){
              //correct
              print("correct");

              Future.delayed(const Duration(seconds: 2),(){
                points = points + 100;
              });
            }else{
              //wrong
              print("wrong");
            }

          }else{
             selectedTileIndex = widget.tileIndex;
             selectedImageAssetPath = pairs[widget.tileIndex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
          print("You clicked me");
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(pairs[widget.tileIndex].getIsSelected() ? pairs[widget.tileIndex]
        .getImageAssetPath():widget.imageAssetPath),
        
      ),
    );
  }
}