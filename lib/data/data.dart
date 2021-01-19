import 'package:memory_game/model/tile_model.dart';

List<TileModel> getPairs(){
  List<TileModel> pairs = new List<TileModel>();
  TileModel tileModel = new TileModel();

  //1 
  tileModel.setImageAssetPath("assets/fox.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //2 
  tileModel.setImageAssetPath("assets/hippo.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/horse.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //4 
  tileModel.setImageAssetPath("assets/monkey.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //5 
  tileModel.setImageAssetPath("assets/panda.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //6 
  tileModel.setImageAssetPath("assets/parrot.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //7 
  tileModel.setImageAssetPath("assets/rabbit.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

  //8 
  tileModel.setImageAssetPath("assets/zoo.png");
  tileModel.getIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  tileModel = new TileModel();

}