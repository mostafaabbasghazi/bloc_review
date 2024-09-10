import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reponsive/bloc/bloc/counter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
              BlocProvider.of<CounterBloc>(context).add(Increament());
            }, icon: Icon(Icons.add)),
            BlocBuilder<CounterBloc,CounterState>(builder:(context,state){
              if(state is CounterInitial){
                return Text("0");
              }else if(state is ChangedValue){
                return Text(state.newCount.toString());
              }else{
                return Text("");
              }
            }),
            IconButton(onPressed:(){
              BlocProvider.of<CounterBloc>(context).add(Decreament());
            } , icon: Icon(Icons.minimize))
          ],
        ),
      ),
    );
  }
}