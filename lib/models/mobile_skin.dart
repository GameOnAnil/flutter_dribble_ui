class MobileSkin {
  final String url;
  final String route;
  MobileSkin({
    required this.url,
    required this.route,
  });
}

List<MobileSkin> mobileList = [
  MobileSkin(url: "assets/design1.png", route: "/food"),
  MobileSkin(url: "assets/design2.png", route: "/bank"),
  // MobileSkin(url: "assets/design1.png", route: "/food"),
  // MobileSkin(url: "assets/design2.png", route: "/bank"),
];
