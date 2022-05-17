import 'package:job_finder/models/company.dart';

class Job{
  String location;
  String role;
  Company company;
  bool isFavorite;

  Job(this.location, this.role, this.company, {this.isFavorite = false});
}