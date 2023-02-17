class ConfigurationDTO {
  String themeModeName = 'system';
  DateTime? syncDate;

  ConfigurationDTO.init(this.themeModeName, {this.syncDate});
}
