class ProductModel{
  String description;
  String id;
  String image;
  String EmplyeeID;
  int price;
  String title;
  String type;
  int quantity;
  String imagePharmacy;
  bool needPrescription;

  ProductModel({
    required this.description,
    required this.id,
    required this.image,
    required this.EmplyeeID,
    required this.price,
    required this.title,
    required this.type,
    required this.quantity,
    required this.imagePharmacy,
    required this.needPrescription,
  });

  Map<String, dynamic> toMap() {
    return {
      'description': this.description,
      'id': this.id,
      'image': this.image,
      'pharmacyID': this.EmplyeeID,
      'price': this.price,
      'title': this.title,
      'type': this.type,
      'quantity': this.quantity,
      'imagePharmacy': this.imagePharmacy,
      'needPrescription': this.needPrescription,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      description: map['description'] as String,
      id: map['id'] as String,
      image: map['image'] as String,
      EmplyeeID: map['pharmacyID'] ?? ''  ,
      price: map['price'] as int,
      title: map['title'] as String,
      type: map['type'] as String,
      quantity: map['quantity'] as int,
      imagePharmacy: map['imagePharmacy'] ?? '' ,
      needPrescription: map['needPrescription'] as bool,
    );
  }
}