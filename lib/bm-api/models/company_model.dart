import '../enums/type_option_product.dart';

class CompanyModel {
  final String? id;
  final String? companyId;
  final String? name;
  final DateTime? createDate;
  final DateTime? updateDate;
  final String? phone;
  final String? address;
  final String? code;

  CompanyModel({
    this.id,
    this.companyId,
    this.name,
    this.createDate,
    this.updateDate,
    this.phone,
    this.address,
    this.code,
  });
}
