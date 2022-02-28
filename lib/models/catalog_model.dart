///***************************************************************************
/// Catalog
///***************************************************************************
class Catalog {
  late int _id;
  late int _type;
  late int _typeId;
  late String _name;
  late int _visible;
  late int _orderNo;

  Catalog(this._type, this._typeId, this._name, this._visible, this._orderNo);

  Catalog.fromJson(Map<String, dynamic> json)
      : _type = json['type'],
        _typeId = json['type_id'],
        _name = json['name'],
        _visible = (json['visible']==true) ? 1 : 0,
        _orderNo = json['order_no'];

  Catalog.map(dynamic obj) {
    this._id = obj['id'];
    this._type = obj['type'];
    this._typeId = obj['type_id'];
    this._name = obj['name'];
    this._visible = obj['visible'];
    this._orderNo = obj['order_no'];
  }

  /// Getters and Setters
  String get name => _name;
  int get type => _type;
  int get typeId => _typeId;
  int get visible => _visible;
  int get orderNo => _orderNo;
  int get id => _id;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["type"] = _type;
    map["type_id"] = _typeId;
    map["name"] = _name;
    map["visible"] = _visible;
    map["order_no"] = _orderNo;

    if (id != null) {
      map["id"] = _id;
    }
    return map;
  }

  Catalog.fromMap(Map<String, dynamic> map) {
    this._id = map["id"];
    this._type = map["type"];
    this._typeId = map["type_id"];
    this._name = map["name"];
    this._visible = map["visible"];
    this._orderNo = map["order_no"];
  }
}
