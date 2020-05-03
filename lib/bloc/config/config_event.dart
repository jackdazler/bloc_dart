import 'package:covid_tracker/model/data_respository.dart';
import 'package:equatable/equatable.dart';

import 'confic_index.dart';
abstract class ConfigEvent extends Equatable{
 Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class LoadConfigEvent extends ConfigEvent {
  final dataRespository = BlocRepository();
  @override
  String toString() => 'LoadConfigEvent';

  @override
  Future<ConfigState> applyAsync(
      {ConfigState currentState, ConfigBloc bloc}) async {
    try {
        var homeData = await dataRespository.fetchData();
          return InConfigState(dataModel: homeData);
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return new ErrorConfigState(_?.toString());
    }
  }

  @override
  List<Object> get props => [];
}
