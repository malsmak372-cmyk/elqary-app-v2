class ReligiousSection {
  final int id;
  final String wehda;
  final String enwan;
  final String nabza;
  final int adad;

  ReligiousSection({
    required this.id,
    required this.wehda,
    required this.enwan,
    required this.nabza,
    required this.adad,
  });

  factory ReligiousSection.fromMap(Map<String, dynamic> map) {
    return ReligiousSection(
      id: map['id'] as int,
      wehda: map['wehda']?.toString() ?? '',
      enwan: map['enwan']?.toString() ?? '',
      nabza: map['nabza']?.toString() ?? '',
      adad: map['adad'] as int? ?? 0,
    );
  }
}

class ReligiousContent {
  final int id;
  final int qesmId;
  final int? selselaId;
  final String enwan;
  final String nass;
  final String masdar;

  ReligiousContent({
    required this.id,
    required this.qesmId,
    this.selselaId,
    required this.enwan,
    required this.nass,
    required this.masdar,
  });

  factory ReligiousContent.fromMap(Map<String, dynamic> map) {
    return ReligiousContent(
      id: map['id'] as int,
      qesmId: map['qesm_id'] as int,
      selselaId: map['selsela_id'] as int?,
      enwan: map['enwan']?.toString() ?? '',
      nass: map['nass']?.toString() ?? '',
      masdar: map['masdar']?.toString() ?? '',
    );
  }
}
