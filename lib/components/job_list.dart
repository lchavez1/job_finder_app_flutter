import 'package:flutter/material.dart';
import 'package:job_finder/components/small_job_item.dart';
import 'package:job_finder/models/job.dart';

class JobList extends StatelessWidget{

  List<Job> jobs;
  JobList(this.jobs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => SmallJobItem(this.jobs[index]),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: this.jobs.length,

    );
  }

}