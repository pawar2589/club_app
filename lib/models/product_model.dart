class Product {
  String title;
  String description;
  String price;
  String brand;
  String size;
  String duration;

  String assetImage;

  Product({
    required this.title,
    required this.description,
    required this.assetImage,
    required this.price,
    required this.brand,
    required this.size,
    required this.duration,
  });
}

List<Product> prod = [
  Product(
    title: "Red'lab bee",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/wine.png"),
    brand: "Johnny Walker",
    price: "6,200",
    size: "400ml",
    duration: "20d Ago",
  ),
  Product(
    title: "Campo veijo",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/lanson.png"),
    brand: "Vallone",
    price: "4,800",
    size: "400ml",
    duration: "10d Ago",
  ),
  Product(
    title: "Domini veneiti",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/duplin.png"),
    brand: "York",
    price: "4,000",
    size: "800ml",
    duration: "25d Ago",
  ),
  Product(
    title: "Bride's Sister",
    description:
        "Get Great value and seamless service with these brilliant wines, available direct from Vivino and a selection of our best merchant partners",
    assetImage: ("assets/images/bridesis.png"),
    brand: "Johnny Walker",
    price: "5,500",
    size: "350ml",
    duration: "30d Ago",
  ),
  Product(
    title: "Original sas",
    description:
        "The taste profile of Original Bernardus Marinus is based on 500 user reviews",
    assetImage: ("assets/images/original.png"),
    brand: "Johnny Walker",
    price: "4,000",
    size: "500ml",
    duration: "14d Ago",
  ),
  Product(
    title: "Red'lab bee",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/wine.png"),
    brand: "Johnny Walker",
    price: "4,200",
    size: "600ml",
    duration: "5d Ago",
  ),
  Product(
    title: "First press 2000",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/firstpress.png"),
    price: "4,000",
    brand: "Johnny Walker",
    size: "720ml",
    duration: "18d Ago",
  ),
  Product(
    title: "Campo veijo",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/lanson.png"),
    brand: "Johnny Walker",
    price: "9,500",
    size: "450ml",
    duration: "18d Ago",
  ),
  Product(
    title: "Domini veneiti",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/duplin.png"),
    brand: "Johnny Walker",
    price: "2,500",
    size: "600ml",
    duration: "14d Ago",
  ),
  Product(
      title: "Bride's Sister",
      description:
          "Get Great value and seamless service with these brilliant wines, available direct from Vivino and a selection of our best merchant partners",
      assetImage: ("assets/images/bridesis.png"),
      brand: "Johnny Walker",
      price: "4,000",
      duration: "14d Ago",
      size: "500ml"),
  Product(
    title: "Original sas",
    description:
        "The taste profile of Original Bernardus Marinus is based on 500 user reviews",
    assetImage: ("assets/images/original.png"),
    brand: "Johnny Walker",
    price: "4,500",
    size: "500ml",
    duration: "10d Ago",
  ),
  Product(
    title: "First press 2000",
    description:
        "Our wine experts think this Napa Valley Bordeaux Blend wine would be a match made in heaven with these dishes. Bon appétit!",
    assetImage: ("assets/images/firstpress.png"),
    brand: "Johnny Walker",
    price: "8,500",
    size: "500ml",
    duration: "22d Ago",
  ),
];
