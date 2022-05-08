class OnBoardingModel {
  String image;
  String title1;
  String title2;
  String discription;

  OnBoardingModel ({required this.image, required this.title1,required this.title2, required this.discription});
}

List<OnBoardingModel > contents = [
  OnBoardingModel (
    title1: 'Welcome to',
    title2: 'Venture Connect',
    image: 'images/sapiens1.png',
    discription: "Community of ground breaking \nentrepreneurs in India."
  ),
  OnBoardingModel (
    title1: 'Events for',
    title2: 'Startups',
    image: 'images/sapiens2.png',
    discription: "Biggest startup events in the \necosystem on networking \nmentoring and more."
  ),
  OnBoardingModel (
    title1: 'Interactive',
    title2: 'Networking',
    image: 'images/sapiens3.png',
    discription: "Build excellent teams for your \nidea to become exceptional product. "
  ),
];