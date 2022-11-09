import 'package:isar/isar.dart';
import 'package:job_timer/app/entities/converters/project_status_converter.dart';
import 'package:job_timer/app/entities/project_status.dart';
import 'package:job_timer/app/entities/project_task.dart';

part 'project.g.dart';

@Collection()
class Project {
  /** Attributes **/
  @Id()
  int? id;
  late String name;
  late int estimate;

  @ProjectStatusConverter()
  late ProjectStatus status;

  // link with tasks
  final tasks = IsarLinks<ProjectTask>();
}
