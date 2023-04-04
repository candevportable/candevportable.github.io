class Clothes{
  String? title;
  String? subtitle;
  String? price;
  String? imageUrl;
  List<String>? detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);

  static List<Clothes> generateClothes() {
    return [
      Clothes('Casaco Oversize', 'Moletom', 'R\$79.99', 'assets/assets_app_loja_roupas/images/arrival1.png', ['assets/assets_app_loja_roupas/images/arrival1.png', 'assets/assets_app_loja_roupas/images/arrival1.png']),
      Clothes('Casaco Masculino', 'Corta-Vento', 'R\$59.99', 'assets/assets_app_loja_roupas/images/arrival2.png', ['assets/assets_app_loja_roupas/images/arrival2.png', 'assets/assets_app_loja_roupas/images/arrival2.png'])
    ];
  }
}