import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'map_record.g.dart';

abstract class MapRecord implements Built<MapRecord, MapRecordBuilder> {
  static Serializer<MapRecord> get serializer => _$mapRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'nom_hopital')
  String get nomHopital;

  @nullable
  @BuiltValueField(wireName: 'map_hopital')
  LatLng get mapHopital;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MapRecordBuilder builder) =>
      builder..nomHopital = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('map');

  static Stream<MapRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MapRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MapRecord._();
  factory MapRecord([void Function(MapRecordBuilder) updates]) = _$MapRecord;

  static MapRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMapRecordData({
  String nomHopital,
  LatLng mapHopital,
}) =>
    serializers.toFirestore(
        MapRecord.serializer,
        MapRecord((m) => m
          ..nomHopital = nomHopital
          ..mapHopital = mapHopital));
