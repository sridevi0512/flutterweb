class SeedPlans{
  const SeedPlans({
    this.title,
    this.description,
    this.price
});
  final String? title;
  final String? description;
  final String? price;
}

List<SeedPlans> _seedplan = const<SeedPlans>[
  SeedPlans(title: "5-day plan  ", description: "25 calls included", price: "7"),
  SeedPlans(title: "7-day plan  ", description: "25 calls included", price: "9"),
  SeedPlans(title: "10-day plan  ", description: "25 calls included", price: "10"),
  SeedPlans(title: "21-day plan  ", description: "25 calls included", price: "13")
];