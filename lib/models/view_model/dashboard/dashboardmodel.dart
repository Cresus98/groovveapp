import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboardmodel.freezed.dart';
part 'dashboardmodel.g.dart';



@riverpod

class DashboardState extends _$DashboardState
{

  @override
  DashboardModel build()
  {
    return const DashboardModel(index: 0);
  }

  void update({int index=0})
  {
    state=state.copyWith(index:index);
  }


}




@freezed

class DashboardModel with _$DashboardModel{

  const factory DashboardModel({required int index})=_DashboardModel;

}