import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'package:redux_thunk_boilerplate/src/models/user.dart';

// part generated by build runner. (see readme)
part 'auth_state.g.dart';

@immutable
@JsonSerializable()
class AuthState {
  static const String STATE_KEY = 'auth';

  @JsonKey(name: 'isAuthenticated')
  final bool isAuthenticated;

  @JsonKey(name: 'user')
  final User user;

  @JsonKey(name: 'error')
  final String error;

  AuthState({
    this.isAuthenticated = false,
    this.user,
    this.error,
  });

  // allows us to modify AuthState parameters while cloning previous ones
  AuthState copyWith({bool isAuthenticated, String error, User user}) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error ?? this.error,
      user: user ?? this.user,
    );
  }

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

  Map<String, dynamic> toJson() => _$AuthStateToJson(this);

  @override
  String toString() {
    return '{isAuthenticated: $isAuthenticated, user: $user, error: $error}';
  }
}
