import 'dart:convert';

class Answer {
  final String text;
  final int score;
  Answer({
    this.text,
    this.score,
  });

  Answer copyWith({
    String text,
    int score,
  }) {
    return Answer(
      text: text ?? this.text,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'score': score,
    };
  }

  factory Answer.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Answer(
      text: map['text'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Answer.fromJson(String source) => Answer.fromMap(json.decode(source));

  @override
  String toString() => 'Answer(text: $text, score: $score)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Answer &&
      o.text == text &&
      o.score == score;
  }

  @override
  int get hashCode => text.hashCode ^ score.hashCode;
}
