import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

// part generated by build runner. (see readme)
part 'user.g.dart';

@immutable
@JsonSerializable()
class User {

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'name')
  final String name;

  User({@required this.id, @required this.email, @required this.name});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return '{id: $id, email: $email, name: $name}';
  }
}
