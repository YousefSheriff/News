import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/shared/components/components.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';


class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewsCubit,NewsAppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var list = NewsCubit.get(context).business;
        print('************************************************');
        print(list);
        print('************************************************');
        // var imgss = NewsCubit.get(context).imgs;
        return buildFinalArticleItem(list,context);
      },
    );
  }
}
