import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'user_doctor')
  bool get userDoctor;

  @nullable
  @BuiltValueField(wireName: 'about_doctor')
  String get aboutDoctor;

  @nullable
  @BuiltValueField(wireName: 'doctor_category')
  String get doctorCategory;

  @nullable
  String get prix;

  @nullable
  double get grade;

  @nullable
  @BuiltValueField(wireName: 'location_doctor')
  LatLng get locationDoctor;

  @nullable
  BuiltList<String> get slot;

  @nullable
  @BuiltValueField(wireName: 'chifa_patient')
  String get chifaPatient;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..userDoctor = false
    ..aboutDoctor = ''
    ..doctorCategory = ''
    ..prix = ''
    ..grade = 0.0
    ..slot = ListBuilder()
    ..chifaPatient = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  bool userDoctor,
  String aboutDoctor,
  String doctorCategory,
  String prix,
  double grade,
  LatLng locationDoctor,
  String chifaPatient,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..userDoctor = userDoctor
          ..aboutDoctor = aboutDoctor
          ..doctorCategory = doctorCategory
          ..prix = prix
          ..grade = grade
          ..locationDoctor = locationDoctor
          ..slot = null
          ..chifaPatient = chifaPatient));
