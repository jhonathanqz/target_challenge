abstract class Entity {
  final int id;

  const Entity({
    required this.id,
  });

  @override
  bool operator ==(Object other) {
    if (other is Entity && other.runtimeType == runtimeType) {
      if (other.id == id) {
        return true;
      }
    }
    return false;
  }

  @override
  int get hashCode => id.hashCode;

  Map<String, dynamic> toMap();
}
