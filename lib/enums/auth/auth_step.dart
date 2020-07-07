import 'package:adventures_in_tech_world/models/app/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_step.g.dart';

class AuthStep extends EnumClass {
  static Serializer<AuthStep> get serializer => _$authStepSerializer;
  static const AuthStep checking = _$checking;
  static const AuthStep signingInAnonymously = _$signingInAnonymously;
  static const AuthStep waitingForInput = _$waitingForInput;
  static const AuthStep exchangingCode = _$exchangingCode;
  static const AuthStep exchangedCode = _$exchangedCode;
  static const AuthStep signingInWithGitHub = _$signingInWithGitHub;
  static const AuthStep signingInWithFirebase = _$signingInWithFirebase;
  static const Map<AuthStep, int> _$indexMap = {
    checking: 0,
    signingInAnonymously: 1,
    waitingForInput: 2,
    exchangingCode: 3,
    exchangedCode: 4,
    signingInWithGitHub: 5,
    signingInWithFirebase: 6
  };

  const AuthStep._(String name) : super(name);

  int get index => _$indexMap[this];
  static BuiltSet<AuthStep> get values => _$values;
  static AuthStep valueOf(String name) => _$valueOf(name);

  Object toJson() => serializers.serializeWith(AuthStep.serializer, this);
}