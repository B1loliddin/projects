import 'package:online_bike_shopping_app/models/bike_model.dart';
import 'package:online_bike_shopping_app/services/constants/images.dart';

double subTotal = 1999 + 3999 + 120;
List<ProductModel> models = [
  ProductModel.create(
    name: "PEUGEOT - LR01",
    description:
        "The LR01 uses the same design as the most\niconic bikes from PEUGEOT Cycles' 130-year\nhistory and combines it with agile, dynamic\nperformance that's perfectly suited to\nnavigating today's cities. As well as a lugged\nsteel frame and iconic PEUGEOT black-and-\nwhite chequer design, this city bike also\nfeatures a 16-speed Shimano Claris drivetrain.",
    price: 1999,
    type: "Road Bike",
    image: CustomImages.whiteBike,
  ),
  ProductModel.create(
    name: "PILOT - CHROM...",
    description:
        "The CHROMOLY 520 uses the same design as the most\niconic bikes from PEUGEOT Cycles' 130-year\nhistory and combines it with agile, dynamic\nperformance that's perfectly suited to\nnavigating today's cities. As well as a lugged\nsteel frame and iconic PEUGEOT black-and-\nwhite chequer design, this city bike also\nfeatures a 16-speed Shimano Claris drivetrain.",
    price: 3999,
    type: "Road Bike",
    image: CustomImages.blackBike,
  ),
  ProductModel.create(
    name: "SMITH - Trade",
    description:
        "The SMITH - Trade uses the same design as the most\niconic helmet.",
    price: 120,
    type: "Road Helmet",
    image: CustomImages.helmet,
  ),
];
