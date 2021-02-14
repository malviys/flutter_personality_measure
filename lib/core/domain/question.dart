import 'dart:convert';

class Question {
  final String text;

  Question({
    this.text,
  });

  Question copyWith({
    String text,
  }) {
    return Question(
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
    };
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Question(
      text: map['text'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() => 'Question(text: $text)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Question && o.text == text;
  }

  @override
  int get hashCode => text.hashCode;
}
