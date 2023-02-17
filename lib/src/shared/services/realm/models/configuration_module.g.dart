// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_module.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ConfigurationModule extends _ConfigurationModule
    with RealmEntity, RealmObjectBase, RealmObject {
  ConfigurationModule(
    String themeModeName, {
    DateTime? syncDate,
  }) {
    RealmObjectBase.set(this, 'themeModeName', themeModeName);
    RealmObjectBase.set(this, 'syncDate', syncDate);
  }

  ConfigurationModule._();

  @override
  String get themeModeName =>
      RealmObjectBase.get<String>(this, 'themeModeName') as String;
  @override
  set themeModeName(String value) =>
      RealmObjectBase.set(this, 'themeModeName', value);

  @override
  DateTime? get syncDate =>
      RealmObjectBase.get<DateTime>(this, 'syncDate') as DateTime?;
  @override
  set syncDate(DateTime? value) => RealmObjectBase.set(this, 'syncDate', value);

  @override
  Stream<RealmObjectChanges<ConfigurationModule>> get changes =>
      RealmObjectBase.getChanges<ConfigurationModule>(this);

  @override
  ConfigurationModule freeze() =>
      RealmObjectBase.freezeObject<ConfigurationModule>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ConfigurationModule._);
    return const SchemaObject(
        ObjectType.realmObject, ConfigurationModule, 'ConfigurationModule', [
      SchemaProperty('themeModeName', RealmPropertyType.string),
      SchemaProperty('syncDate', RealmPropertyType.timestamp, optional: true),
    ]);
  }
}
