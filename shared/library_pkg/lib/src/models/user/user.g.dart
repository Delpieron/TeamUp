// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      age: json['age'] as int,
      startHour: json['startHour'] as int,
      endHour: json['endHour'] as int,
      gamesList: (json['gamesList'] as List<dynamic>).map((e) => Game.fromJson(e as Map<String, dynamic>)).toList(),
      friendsList:
          (json['friendsList'] as List<dynamic>?)?.map((e) => User.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'age': instance.age,
      'startHour': instance.startHour,
      'endHour': instance.endHour,
      'gamesList': instance.gamesList,
      'friendsList': instance.friendsList,
    };
