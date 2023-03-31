class PathologicalCase {
  final int id;
  final int level;
  final String name;
  PathologicalCase({
    required this.id,
    required this.level,
    required this.name,
  });
  @override
  bool operator ==(other) {
    if (other is PathologicalCase) {
      if (other.id == id && other.level == level && other.name == name) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}
