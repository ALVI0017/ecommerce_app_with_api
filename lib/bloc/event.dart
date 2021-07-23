// fetching Data event

import 'package:equatable/equatable.dart';

abstract class Event extends Equatable {}

class FetchData extends Event {
  @override
  List<Object> get props => [];
}
