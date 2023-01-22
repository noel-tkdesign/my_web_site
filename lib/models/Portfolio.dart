import 'package:my_web_site/sections/portfolio/portfolio_flutter.dart';
import 'package:my_web_site/sections/portfolio/portfolio_timer.dart';
import 'package:my_web_site/sections/portfolio/portfolio_web.dart';

class Portfolio {
  final String image, category;
  final int id;

  final view;

  Portfolio({
    required this.id,
    required this.image,
    required this.category,
    required this.view,
  });
}

// Demo List of my works
List<Portfolio> portfolio = [
  Portfolio(
    id: 1,
    category: "IOSApp(SwiftUI)",
    image: "assets/images/iOS app.png",
    view: PortfolioTimer(),
  ),
  Portfolio(
    id: 2,
    category: "Web Design",
    image: "assets/images/webdesign2.png",
    view: PortfolioWeb(),
  ),
  Portfolio(
    id: 3,
    category: "flutterApp(IOS & android)",
    image: "assets/images/Flutterapp image.png",
    view: PortfolioFlutter(),
  ),
];
