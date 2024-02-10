class ListItem {
  int key;
  String value;

  ListItem(this.key, this.value);

  @override
  String toString() {
    return 'ListItems{key: $key, value: $value}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListItem && other.key == key && other.value == value;
  }

  @override
  int get hashCode {
    return key.hashCode ^ value.hashCode;
  }

  ListItem copyWith({
    int? key,
    String? value,
  }) {
    return ListItem(
      key ?? this.key,
      value ?? this.value,
    );
  }
}
