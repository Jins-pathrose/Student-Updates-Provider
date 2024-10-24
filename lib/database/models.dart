import 'package:hive/hive.dart';
part 'models.g.dart';

@HiveType(typeId: 1)
class Studentupdate {
  @HiveField(0)
  String? name;

  @HiveField(1)
  int? phone;

  @HiveField(2)
  String? domain;

  @HiveField(3)
  String? image;

  @HiveField(4)
  int? id;

  @HiveField(5)
  String? place;

  Studentupdate(
      {required this.domain,
      required this.place,
      required this.image,
      required this.name,
      required this.phone,
      this.id});
}
