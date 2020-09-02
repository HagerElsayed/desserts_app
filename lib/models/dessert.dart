class Dessert {
  final int id;
  final String name;
  final String type;
  final String price;
  final double calories;
  final String delivery;
  final String time;
  final String description;
  final String image;

  Dessert(
      {this.id,
      this.name,
      this.type,
      this.price,
      this.calories,
      this.delivery,
      this.time,
      this.image,
      this.description});
}

class AppRepo {
  static List<Dessert> desserts = [
    Dessert(
        id: 1,
        name: "Cupcake",
        type: "chocolate",
        price: "\$1.99",
        calories: 100,
        delivery: 'Free delivery',
        time: '20 - 30 min',
        image: 'images/cupcake.jpeg',
        description:
            'These delicious treats are individual cakes typically decorated with icing and frosting.'),
    Dessert(
        id: 2,
        name: "Donuts",
        type: "chocolate",
        price: "\$3.99",
        calories: 100,
        delivery: 'Free delivery',
        time: '20 - 30 min',
        image: 'images/dounts1.jpg',
        description: 'chocolate dounts'),
    Dessert(
        id: 3,
        name: "Ice cream",
        type: "Vanilla",
        price: "\$1.99",
        calories: 80,
        delivery: 'Free delivery',
        time: '10 - 20 min',
        image: 'images/ice_cream.jpg',
        description: 'Vanilla Ice cream'),
    Dessert(
        id: 4,
        name: "Macarons",
        type: "marshmello",
        price: "\$3.99",
        calories: 100,
        delivery: 'Free delivery',
        time: '20 - 30 min',
        image: 'images/macarons.jpg',
        description:
            'This French macaron recipe makes a batch of the most dainty, delicate, and delicious cookies that will float right into your mouth and disappear.'),
    Dessert(
        id: 5,
        name: "Chocolate with almonds",
        type: "Chocolate",
        price: "\$3.99",
        calories: 90,
        delivery: 'Free delivery',
        time: '10 - 20 min',
        image: 'images/choclate.jpg',
        description: 'Chocolate with almonds'),
  ];
}
