class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  //!sadece buradakiler görebilir.
  ProductConfig._(this.apiKey);

  ProductConfig(this.apiKey);
}
