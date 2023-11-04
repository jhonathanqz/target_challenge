import 'dart:convert';

class ApiDTO {
  final String? message;
  ApiDTO({
    this.message,
  });

  ApiDTO copyWith({
    String? message,
  }) {
    return ApiDTO(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory ApiDTO.fromMap(Map<String, dynamic> map) {
    return ApiDTO(
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiDTO.fromJson(String source) =>
      ApiDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  static String buildMessageResponse(dynamic response) {
    final message = response.data['message'];
    return message ?? 'Erro desconhecido';
  }

  @override
  String toString() => 'ApiDTO(message: $message)';

  @override
  bool operator ==(covariant ApiDTO other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
