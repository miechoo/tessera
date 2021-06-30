enum SeatStatusEnum { FREE, RESERVED, PAID, UNAVAILABLE }

class SeatModel {
  final String row;
  final int number;
  SeatStatusEnum status;

  SeatModel({
    required this.row,
    required this.number,
    this.status = SeatStatusEnum.FREE,
  });
}

class SeatStatusFree extends SeatStatusModel {
  SeatStatusFree() : super(SeatStatusEnum.FREE);
}

class SeatStatusReserved extends SeatStatusModel {
  SeatStatusReserved() : super(SeatStatusEnum.RESERVED);
}

class SeatStatusPaid extends SeatStatusModel {
  SeatStatusPaid() : super(SeatStatusEnum.PAID);
}

class SeatStatusUnavaliable extends SeatStatusModel {
  SeatStatusUnavaliable() : super(SeatStatusEnum.UNAVAILABLE);
}

class SeatStatusModel {
  final SeatStatusEnum _value;
  String get value => _value.toString();

  SeatStatusModel(this._value);
}
