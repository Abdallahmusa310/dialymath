import 'package:dialymath/screen/groups_screen/cubit/group_cubit.dart';
import 'package:dialymath/models/group_model.dart';
import 'package:dialymath/widgets/group_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({super.key,required this.day, this.group,});
  final int day;
  final GroupModel? group;

  @override
  State<GroupsScreen> createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupCubit, GroupState>(
      builder: (context, state) {
        return SizedBox(
          child: ListView.builder(
            physics:const BouncingScrollPhysics(),
              itemCount:state.groups?.length ?? 0,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                 return GroupCard(
                  day: widget.day,
                  group: state.groups![index],
                  colorborder: const Color.fromARGB(255, 57, 13, 179),
                   );
              }),
        );
        
      },
    );
    
  }
}


