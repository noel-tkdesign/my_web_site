import 'package:my_web_site/sections/portfolio/portfolio_flutter.dart';
import 'package:my_web_site/sections/portfolio/portfolio_timer.dart';
import 'package:my_web_site/sections/portfolio/portfolio_web.dart';

class Portfolio {
  final String image, category, title;
  final int id;

  final view;

  Portfolio({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.view,
  });
}

// Demo List of my works
List<Portfolio> portfolio = [
  Portfolio(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "IosApp(SwiftUI)",
    image: "assets/images/iOS app.png",
    view: PortfolioTimer(),
  ),
  Portfolio(
    id: 2,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Web Design",
    image: "assets/images/webdesign2.png",
    view: PortfolioWeb(),
  ),
  Portfolio(
    id: 3,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "flutterApp(ios & android)",
    image: "assets/images/Flutterapp image.png",
    view: PortfolioFlutter(),
  ),
];
