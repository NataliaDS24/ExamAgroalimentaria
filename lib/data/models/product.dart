class Product {
  String dateExpiry;
  String numberLote;

  Product({
    required this.dateExpiry,
    required this.numberLote,
  });
}

class FreshProduct extends Product {
  String packagingDate;
  String originCounrty;

  FreshProduct(
    this.packagingDate,
    this.originCounrty, {
    required String dateExpiry,
    required String numberLote,
  }) : super(
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class RefrigeratedProduct extends FreshProduct {
  String organismCode;
  String suitableTemperature;

  RefrigeratedProduct(
    String packagingDate,
    String originCounrty,
    this.organismCode,
    this.suitableTemperature, {
    required String dateExpiry,
    required String numberLote,
  }) : super(
          packagingDate,
          originCounrty,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class FrozenProduct extends Product {
  String packagingDate;
  String originCounrty;
  String suitableTemperature;

  FrozenProduct(
    this.packagingDate,
    this.originCounrty,
    this.suitableTemperature, {
    required String dateExpiry,
    required String numberLote,
  }) : super(
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );

  // factory FrozenProduct.byAir() {
  //   return FrozenProduct(
  //     packagingDate,
  //     originCounrty,
  //     suitableTemperature,

  //     dateExpiry: 'dateExpiry',
  //     numberLote: 'numberLote',
  //   );
  // }
}

class FrozenProductByAir extends FrozenProduct {
  String airComposition;
  String nitrogenComposition;
  String carbonDioxideComposition;
  String waterVaporComposition;

  FrozenProductByAir(
      String packagingDate,
      String originCounrty,
      String suitableTemperature,
      this.airComposition,
      this.nitrogenComposition,
      this.carbonDioxideComposition,
      this.waterVaporComposition,
      {required String dateExpiry,
      required String numberLote})
      : super(
          packagingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class FrozenProductByWater extends FrozenProduct {
  String salinity;

  FrozenProductByWater(String packagingDate, String originCounrty,
      String suitableTemperature, this.salinity,
      {required String dateExpiry, required String numberLote})
      : super(
          packagingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}

class FrozenProductByNitrogen extends FrozenProduct {
  String method;
  String exhibithionTime;

  FrozenProductByNitrogen(String packagingDate, String originCounrty,
      String suitableTemperature, this.method, this.exhibithionTime,
      {required String dateExpiry, required String numberLote})
      : super(
          packagingDate,
          originCounrty,
          suitableTemperature,
          dateExpiry: dateExpiry,
          numberLote: numberLote,
        );
}
