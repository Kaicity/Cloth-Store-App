
import '../enums/type_option_product.dart';

class OptionProductModel {
  final String? id;
  final String? name;
  final TypeOptionProduct? type;
  final DateTime? dateCreate;
  final DateTime? dateUpdate;

  OptionProductModel({
    this.id,
    this.name,
    this.type,
    this.dateCreate,
    this.dateUpdate,
  });

  factory OptionProductModel.fromJson(Map<String, dynamic> json) => OptionProductModel(
    id: json['id'] as String?,
    name: json['name'] as String?,
    type: TypeOptionProduct.values.byName(json['type']),
    dateCreate: json['dateCreate'] != null ? DateTime.parse(json['dateCreate']) : null,
    dateUpdate: json['dateUpdate'] != null ? DateTime.parse(json['dateUpdate']) : null,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'type': type?.name,
    'dateCreate': dateCreate?.toString(),
    'dateUpdate': dateUpdate?.toString(),
  };
}
