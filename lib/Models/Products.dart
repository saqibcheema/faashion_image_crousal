class Product {
  final String title;
  final String image;
  final String price;
  final int id;
  Product({required this.title, required this.image, this.price = '350',required this.id});
}

List<Product> products = [
  Product(
    id: 1,
    title: 'StereoTypes',
    image: 'images/fashion5.jpeg'
  ),
  Product(
    id: 2,
    title: 'Fashion & Beauty',
      image: 'images/fashion2.jpeg'
  ),
  Product(
    id: 3,
    title: 'StereoTypes',
      image: 'images/fashion3.avif'
  ),
  Product(
    id: 4,
    title: 'Fashion & Beauty',
      image: 'images/fashion4.avif'
  ),
  Product(
    id: 5,
    title: 'Fashion & Beauty',
      image: 'images/fashion7.jpg'
  ),
];
