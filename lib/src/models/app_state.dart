import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:redux_thunk_boilerplate/src/models/auth_state.dart';
import 'package:redux_thunk_boilerplate/src/models/global_state.dart';

// part generated by build runner. (see readme)
part 'app_state.g.dart';

@immutable
@JsonSerializable()
class AppState {
  static const String STATE_KEY = 'redux_thunk_boilerplate_app';

  @JsonKey(name: 'auth')
  final AuthState auth;

  @JsonKey(name: 'connections')
  final GlobalState global;

  AppState({GlobalState global, AuthState auth})
      : this.auth = auth ?? AuthState(),
        this.global = global ?? GlobalState();

  // allows us to modify AppState parameters while cloning previous ones
  AppState copyWith({
    bool rehydrated,
    GlobalState global,
    AuthState auth,
  }) {
    return AppState(auth: auth ?? this.auth, global: global ?? this.global);
  }

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  @override
  String toString() {
    return 'AppState{auth: $auth, global: $global}';
  }
}
