import 'package:book_withmyself/core/routes/route.dart';
import 'package:book_withmyself/cubit/mainpage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/envent_details/details_cubit/evnet_details_cubit.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      
      providers: [
        BlocProvider(create: (context)=>MainpageCubit()),
        BlocProvider(create: (context)=>EvnetDetailsCubit()),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'AirbnbCereal'),
        routes: AllRoutes.allRoutes,
      ),
    );
  }
}

// ignore: non_constant_identifier_names
