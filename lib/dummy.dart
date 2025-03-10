import 'core/constant/enum/product_size.dart';
import 'model/product.dart';
import 'model/review.dart';

String placeholderFood = "assets/images/placeholder_food.png";
String placeholderCrafts = "assets/images/placeholder_crafts.jpg";
String placeholderClothes = "assets/images/placeholder_clothes.jpg";

List<String> getDummyDropdownOptions(String name) =>
    List<String>.generate(10, (index) => "$name ${index + 1}");

List<String> dummyProvince = getDummyDropdownOptions("Province");
List<String> dummyCity = getDummyDropdownOptions("City");
List<String> dummyBarangay = getDummyDropdownOptions("Barangay");

/*
List<Product> dummyProducts = [
  Product(
    name: 'Filipino Coffee Beans',
    price: 250.00,
    discount: 0.05,
    description: 'Premium coffee beans from the Philippines.',
    reviews: [
      const Review(rate: 4, comment: 'Rich and aromatic.'),
      const Review(rate: 5, comment: 'Excellent quality!'),
    ],
    sizes: [],
    category: 'food',
    tags: ['coffee', 'beans', 'filipino'],
    images: List.generate(3, (_) => placeholderFood),
    isNew: true,
    isPopular: true,
  ),
  Product(
    name: 'Handwoven Rattan Bag',
    price: 500.00,
    discount: 0.10,
    description: 'Traditional handcrafted rattan bag.',
    reviews: [
      const Review(rate: 5, comment: 'Beautiful design and sturdy.'),
      const Review(rate: 4, comment: 'Perfect for everyday use.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['rattan', 'bag', 'handcrafted'],
    images: List.generate(2, (_) => placeholderCrafts),
    isNew: false,
    isPopular: true,
  ),
  Product(
    name: 'Adobo Seasoning Mix',
    price: 50.00,
    discount: 0.0,
    description: 'Spice mix for traditional Filipino adobo.',
    reviews: [
      const Review(rate: 4, comment: 'Authentic flavor.'),
      const Review(rate: 3, comment: 'A bit salty for my taste.'),
    ],
    sizes: [],
    category: 'food',
    tags: ['adobo', 'seasoning', 'filipino'],
    images: List.generate(1, (_) => placeholderFood),
    isNew: true,
    isPopular: false,
  ),
  Product(
    name: 'Barong Tagalog',
    price: 3500.00,
    discount: 0.15,
    description: 'Traditional Filipino formal wear for men.',
    reviews: [
      const Review(rate: 5, comment: 'Elegant and comfortable.'),
      const Review(rate: 4, comment: 'Perfect for special occasions.'),
    ],
    sizes: [
      ProductSize.s,
      ProductSize.m,
      ProductSize.l,
      ProductSize.xl,
      ProductSize.xxl
    ],
    category: 'clothes',
    tags: ['barong', 'formal wear', 'filipino clothing'],
    images: List.generate(2, (_) => placeholderClothes),
    isNew: false,
    isPopular: true,
  ),
  Product(
    name: 'Pandesal Bread',
    price: 20.00,
    discount: 0.0,
    description: 'Classic Filipino bread rolls.',
    reviews: [
      const Review(rate: 4, comment: 'Fresh and tasty.'),
      const Review(rate: 5, comment: 'Reminds me of home.'),
    ],
    sizes: [],
    category: 'food',
    tags: ['pandesal', 'bread', 'filipino'],
    images: List.generate(1, (_) => placeholderFood),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Abel Iloko Fabric',
    price: 800.00,
    discount: 0.0,
    description: 'Handwoven fabric from the Ilocos region.',
    reviews: [
      const Review(rate: 5, comment: 'Beautiful craftsmanship.'),
      const Review(rate: 4, comment: 'High-quality material.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['abel iloko', 'fabric', 'handwoven'],
    images: List.generate(2, (_) => placeholderCrafts),
    isNew: true,
    isPopular: false,
  ),
  Product(
    name: 'Buko Pie',
    price: 180.00,
    discount: 0.0,
    description: 'Filipino coconut pie.',
    reviews: [
      const Review(rate: 4, comment: 'Delicious and creamy.'),
      const Review(rate: 5, comment: 'Perfect balance of flavors.'),
    ],
    sizes: [],
    category: 'food',
    tags: ['buko pie', 'pie', 'coconut'],
    images: List.generate(2, (_) => placeholderFood),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Ifugao Wood Carving',
    price: 1200.00,
    discount: 0.0,
    description: 'Traditional wood carving from the Ifugao tribe.',
    reviews: [
      const Review(rate: 5, comment: 'Intricate design and craftsmanship.'),
      const Review(rate: 4, comment: 'A work of art.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['ifugao', 'wood carving', 'tribal art'],
    images: List.generate(3, (_) => placeholderCrafts),
    isNew: true,
    isPopular: false,
  ),
  Product(
    name: 'Tinikling Bamboo Dance Sticks',
    price: 100.00,
    discount: 0.0,
    description: 'Bamboo sticks used for the Tinikling dance.',
    reviews: [
      const Review(rate: 4, comment: 'Durable and authentic.'),
      const Review(rate: 3, comment: 'A bit rough on the edges.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['tinikling', 'bamboo', 'dance sticks'],
    images: List.generate(1, (_) => placeholderCrafts),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Sampaguita Flower Garland',
    price: 50.00,
    discount: 0.0,
    description: 'Traditional Filipino flower garland.',
    reviews: [
      const Review(rate: 5, comment: 'Fragrant and beautifully made.'),
      const Review(rate: 4, comment: 'Perfect for cultural events.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['sampaguita', 'flower garland', 'filipino'],
    images: List.generate(1, (_) => placeholderCrafts),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Longganisa',
    price: 120.00,
    discount: 0.0,
    description: 'Filipino sausage with distinct regional flavors.',
    reviews: [
      const Review(rate: 4, comment: 'Tastes just like home.'),
      const Review(rate: 5, comment: 'Perfect for breakfast.'),
    ],
    sizes: [],
    category: 'food',
    tags: ['longganisa', 'sausage', 'filipino'],
    images: List.generate(2, (_) => placeholderFood),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Filipino Straw Hat',
    price: 150.00,
    discount: 0.0,
    description: 'Traditional Filipino straw hat.',
    reviews: [
      const Review(rate: 5, comment: 'Well-made and comfortable.'),
      const Review(rate: 4, comment: 'Provides good sun protection.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['straw hat', 'filipino', 'traditional'],
    images: List.generate(2, (_) => placeholderCrafts),
    isNew: false,
    isPopular: true,
  ),
  Product(
    name: 'Bibingka',
    price: 80.00,
    discount: 0.0,
    description: 'Filipino rice cake typically eaten during Christmas season.',
    reviews: [
      const Review(rate: 4, comment: 'Moist and flavorful.'),
      const Review(rate: 5, comment: 'Reminds me of Filipino holidays.'),
    ],
    sizes: [],
    category: 'food',
    tags: ['bibingka', 'rice cake', 'filipino'],
    images: List.generate(1, (_) => placeholderFood),
    isNew: false,
    isPopular: false,
  ),
  Product(
    name: 'Balisong (Butterfly Knife)',
    price: 300.00,
    discount: 0.0,
    description:
        'Traditional Filipino folding knife known for its unique design.',
    reviews: [
      const Review(rate: 5, comment: 'Well-crafted and sharp.'),
      const Review(rate: 4, comment: 'Great for collectors.'),
    ],
    sizes: [],
    category: 'crafts',
    tags: ['balisong', 'knife', 'filipino'],
    images: List.generate(2, (_) => placeholderCrafts),
    isNew: false,
    isPopular: true,
  ),
  Product(
    name: 'Filipiniana Dress',
    price: 4000.00,
    discount: 0.15,
    description:
        'Traditional Filipino dress for women, perfect for special occasions.',
    reviews: [
      const Review(rate: 5, comment: 'Beautiful and well-fitted.'),
      const Review(rate: 4, comment: 'Lovely design and fabric.'),
      const Review(rate: 3, comment: 'Lovely design and fabric.'),
    ],
    sizes: [
      ProductSize.s,
      ProductSize.m,
      ProductSize.l,
      ProductSize.xl,
      ProductSize.xxl
    ],
    category: 'clothes',
    tags: ['filipiniana', 'dress', 'filipino clothing'],
    images: List.generate(3, (_) => placeholderClothes),
    isNew: false,
    isPopular: true,
  ),
];
*/