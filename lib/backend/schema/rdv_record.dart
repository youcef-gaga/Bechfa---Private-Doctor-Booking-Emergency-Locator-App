import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rdv_record.g.dart';

abstract class RdvRecord implements Built<RdvRecord, RdvRecordBuilder> {
  static Serializer<RdvRecord> get serializer => _$rdvRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'rdv_description')
  String get rdvDescription;

  @nullable
  @BuiltValueField(wireName: 'rdv_date')
  DateTime get rdvDate;

  @nullable
  @BuiltValueField(wireName: 'rdv_email')
  String get rdvEmail;

  @nullable
  @BuiltValueField(wireName: 'rdv_time')
  String get rdvTime;

  @nullable
  @BuiltValueField(wireName: 'rdv_patient')
  String get rdvPatient;

  @nullable
  @BuiltValueField(wireName: 'rdv_doctor')
  String get rdvDoctor;

  @nullable
  @BuiltValueField(wireName: 'rdv_category_doctor')
  String get rdvCategoryDoctor;

  @nullable
  @BuiltValueField(wireName: 'rdv_localisation_doctor')
  LatLng get rdvLocalisationDoctor;

  @nullable
  @BuiltValueField(wireName: 'rdv_per_person')
  DocumentReference get rdvPerPerson;

  @nullable
  @BuiltValueField(wireName: 'rdv_per_doctor')
  DocumentReference get rdvPerDoctor;

  @nullable
  @BuiltValueField(wireName: 'rdv_num_patient')
  String get rdvNumPatient;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RdvRecordBuilder builder) => builder
    ..rdvDescription = ''
    ..rdvEmail = ''
    ..rdvTime = ''
    ..rdvPatient = ''
    ..rdvDoctor = ''
    ..rdvCategoryDoctor = ''
    ..rdvNumPatient = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RDV');

  static Stream<RdvRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RdvRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RdvRecord._();
  factory RdvRecord([void Function(RdvRecordBuilder) updates]) = _$RdvRecord;

  static RdvRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRdvRecordData({
  String rdvDescription,
  DateTime rdvDate,
  String rdvEmail,
  String rdvTime,
  String rdvPatient,
  String rdvDoctor,
  String rdvCategoryDoctor,
  LatLng rdvLocalisationDoctor,
  DocumentReference rdvPerPerson,
  DocumentReference rdvPerDoctor,
  String rdvNumPatient,
}) =>
    serializers.toFirestore(
        RdvRecord.serializer,
        RdvRecord((r) => r
          ..rdvDescription = rdvDescription
          ..rdvDate = rdvDate
          ..rdvEmail = rdvEmail
          ..rdvTime = rdvTime
          ..rdvPatient = rdvPatient
          ..rdvDoctor = rdvDoctor
          ..rdvCategoryDoctor = rdvCategoryDoctor
          ..rdvLocalisationDoctor = rdvLocalisationDoctor
          ..rdvPerPerson = rdvPerPerson
          ..rdvPerDoctor = rdvPerDoctor
          ..rdvNumPatient = rdvNumPatient));
