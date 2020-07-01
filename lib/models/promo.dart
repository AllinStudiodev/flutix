part of 'models.dart';

class Promo extends Equatable {
  final String title;
  final String subtitle;
  final int discount;

  Promo({
    @required this.title,
    @required this.subtitle,
    @required this.discount,
  });

  @override
  List<Object> get props => [title, subtitle, discount];
}

List<Promo> dummyPromos = [
  Promo(
      title: "Student Holiday",
      subtitle: "Maximal Only for Two People",
      discount: 50),
  Promo(
      title: "Family Club",
      subtitle: "Maximal Only for Four People",
      discount: 70),
  Promo(
    title: "No Club",
    subtitle: "For your eyes Only",
    discount: 50,
  ),
];
