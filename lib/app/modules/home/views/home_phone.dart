import 'package:flutter/material.dart';
import 'package:junaediakbar_app/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import '../../../../models/project.dart';

class ProjectListTile extends StatelessWidget {
  final Project project;
  ProjectListTile({Key? key, required this.project}) : super(key: key);
  final HomeController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: ListTile(
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red)),
      ],
    );
  }

  Center _buildWeight() => Center(
      child: Text('${project.productName}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));

  Text _buildDate() => Text(
        '${project.id}',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      );
}
