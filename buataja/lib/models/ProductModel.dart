class Product {
  int id;
  String name;
  String description;
  String image;
  String price;
  int rating;
  List<String> colors;

  Product({
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.rating,
    this.colors,
  });
}

// demo products

List<Product> demoProducts = [
  Product(
    id: 1,
    name: 'Lounge Chair',
    description: 'The European languages are members of the same family. Their separate existence is a myth.',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 5,
    image: 'assets/images/item7.jpg',
    price: '410K'
  ),
  Product(
    id: 2,
    name: 'Marble Cupboard',
    description: 'The European languages are members of the same family. Their separate existence is a myth.',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 4,
    image: 'assets/images/item6.jpg',
    price: '410K'
  ),
  Product(
    id: 3,
    name: 'Anderssen & Voll’s ‘Lantern’',
    description: 'Extended to encompass table and floor lamps as well as pendants',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 5,
    image: 'assets/images/lampu.png',
    price: '410K'
  ),
  Product(
    id: 4,
    name: 'Rose Chair from Flos',
    description: 'Made entirely from layered wood, it will be available in black-stained oak, walnut and maple, plus an additional colour to be decided by Rose herself.',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 5,
    image: 'assets/images/item4.jpg',
    price: '410K'
  ),
  Product(
    id: 5,
    name: 'Icha Chair from Flos',
    description: 'Winner of ‘Chair of the Year’ at the Swedish Design Awards 2018',
    colors: ['000000', '25A18E', 'FF8353', 'EBEBEB'],
    rating: 5,
    image: 'assets/images/item5.jpg',
    price: '410K'
  )
];