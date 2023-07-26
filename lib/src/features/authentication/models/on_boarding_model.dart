import 'package:appcarwash/src/constants/image_string.dart';

class BoardingSliderModel{

  late  String image;

// images given
  BoardingSliderModel({required this.image});
// setter for image
  void setImage(String getImage){
    image = getImage;
  }

// getter for image
  String getImage(){
    return image;
  }
}
List<BoardingSliderModel> getSlides(){
  List<BoardingSliderModel> slides = <BoardingSliderModel>[];
  BoardingSliderModel sliderModel =  BoardingSliderModel(image: '');

// 1
  sliderModel.setImage(tOnBoardingImage1);
  slides.add(sliderModel);

  sliderModel =  BoardingSliderModel(image: '');

// 2
  sliderModel.setImage(tOnBoardingImage2);
  slides.add(sliderModel);

  sliderModel =  BoardingSliderModel(image: '');

// 3
  sliderModel.setImage(tOnBoardingImage3);
  slides.add(sliderModel);

  sliderModel.setImage(tOnBoardingImage4);
  slides.add(sliderModel);

  sliderModel =  BoardingSliderModel(image: '');
  return slides;
}
