/* Copyright (C) S. Brett Sutton - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Brett Sutton <bsutton@onepub.dev>, Jan 2022
 */

// ignore_for_file: non_constant_identifier_names, unused_element, unused_field
part of mac;

class _opaque_pthread_attr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;
  @ffi.Int8()
  external int _unique___opaque_item_8;
  @ffi.Int8()
  external int _unique___opaque_item_9;
  @ffi.Int8()
  external int _unique___opaque_item_10;
  @ffi.Int8()
  external int _unique___opaque_item_11;
  @ffi.Int8()
  external int _unique___opaque_item_12;
  @ffi.Int8()
  external int _unique___opaque_item_13;
  @ffi.Int8()
  external int _unique___opaque_item_14;
  @ffi.Int8()
  external int _unique___opaque_item_15;
  @ffi.Int8()
  external int _unique___opaque_item_16;
  @ffi.Int8()
  external int _unique___opaque_item_17;
  @ffi.Int8()
  external int _unique___opaque_item_18;
  @ffi.Int8()
  external int _unique___opaque_item_19;
  @ffi.Int8()
  external int _unique___opaque_item_20;
  @ffi.Int8()
  external int _unique___opaque_item_21;
  @ffi.Int8()
  external int _unique___opaque_item_22;
  @ffi.Int8()
  external int _unique___opaque_item_23;
  @ffi.Int8()
  external int _unique___opaque_item_24;
  @ffi.Int8()
  external int _unique___opaque_item_25;
  @ffi.Int8()
  external int _unique___opaque_item_26;
  @ffi.Int8()
  external int _unique___opaque_item_27;
  @ffi.Int8()
  external int _unique___opaque_item_28;
  @ffi.Int8()
  external int _unique___opaque_item_29;
  @ffi.Int8()
  external int _unique___opaque_item_30;
  @ffi.Int8()
  external int _unique___opaque_item_31;
  @ffi.Int8()
  external int _unique___opaque_item_32;
  @ffi.Int8()
  external int _unique___opaque_item_33;
  @ffi.Int8()
  external int _unique___opaque_item_34;
  @ffi.Int8()
  external int _unique___opaque_item_35;
  @ffi.Int8()
  external int _unique___opaque_item_36;
  @ffi.Int8()
  external int _unique___opaque_item_37;
  @ffi.Int8()
  external int _unique___opaque_item_38;
  @ffi.Int8()
  external int _unique___opaque_item_39;
  @ffi.Int8()
  external int _unique___opaque_item_40;
  @ffi.Int8()
  external int _unique___opaque_item_41;
  @ffi.Int8()
  external int _unique___opaque_item_42;
  @ffi.Int8()
  external int _unique___opaque_item_43;
  @ffi.Int8()
  external int _unique___opaque_item_44;
  @ffi.Int8()
  external int _unique___opaque_item_45;
  @ffi.Int8()
  external int _unique___opaque_item_46;
  @ffi.Int8()
  external int _unique___opaque_item_47;
  @ffi.Int8()
  external int _unique___opaque_item_48;
  @ffi.Int8()
  external int _unique___opaque_item_49;
  @ffi.Int8()
  external int _unique___opaque_item_50;
  @ffi.Int8()
  external int _unique___opaque_item_51;
  @ffi.Int8()
  external int _unique___opaque_item_52;
  @ffi.Int8()
  external int _unique___opaque_item_53;
  @ffi.Int8()
  external int _unique___opaque_item_54;
  @ffi.Int8()
  external int _unique___opaque_item_55;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_attr_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_attr_t___opaque_level0(this, [56], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_attr_t`.
class _ArrayHelper__opaque_pthread_attr_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_attr_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_attr_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      case 8:
        return _struct._unique___opaque_item_8;
      case 9:
        return _struct._unique___opaque_item_9;
      case 10:
        return _struct._unique___opaque_item_10;
      case 11:
        return _struct._unique___opaque_item_11;
      case 12:
        return _struct._unique___opaque_item_12;
      case 13:
        return _struct._unique___opaque_item_13;
      case 14:
        return _struct._unique___opaque_item_14;
      case 15:
        return _struct._unique___opaque_item_15;
      case 16:
        return _struct._unique___opaque_item_16;
      case 17:
        return _struct._unique___opaque_item_17;
      case 18:
        return _struct._unique___opaque_item_18;
      case 19:
        return _struct._unique___opaque_item_19;
      case 20:
        return _struct._unique___opaque_item_20;
      case 21:
        return _struct._unique___opaque_item_21;
      case 22:
        return _struct._unique___opaque_item_22;
      case 23:
        return _struct._unique___opaque_item_23;
      case 24:
        return _struct._unique___opaque_item_24;
      case 25:
        return _struct._unique___opaque_item_25;
      case 26:
        return _struct._unique___opaque_item_26;
      case 27:
        return _struct._unique___opaque_item_27;
      case 28:
        return _struct._unique___opaque_item_28;
      case 29:
        return _struct._unique___opaque_item_29;
      case 30:
        return _struct._unique___opaque_item_30;
      case 31:
        return _struct._unique___opaque_item_31;
      case 32:
        return _struct._unique___opaque_item_32;
      case 33:
        return _struct._unique___opaque_item_33;
      case 34:
        return _struct._unique___opaque_item_34;
      case 35:
        return _struct._unique___opaque_item_35;
      case 36:
        return _struct._unique___opaque_item_36;
      case 37:
        return _struct._unique___opaque_item_37;
      case 38:
        return _struct._unique___opaque_item_38;
      case 39:
        return _struct._unique___opaque_item_39;
      case 40:
        return _struct._unique___opaque_item_40;
      case 41:
        return _struct._unique___opaque_item_41;
      case 42:
        return _struct._unique___opaque_item_42;
      case 43:
        return _struct._unique___opaque_item_43;
      case 44:
        return _struct._unique___opaque_item_44;
      case 45:
        return _struct._unique___opaque_item_45;
      case 46:
        return _struct._unique___opaque_item_46;
      case 47:
        return _struct._unique___opaque_item_47;
      case 48:
        return _struct._unique___opaque_item_48;
      case 49:
        return _struct._unique___opaque_item_49;
      case 50:
        return _struct._unique___opaque_item_50;
      case 51:
        return _struct._unique___opaque_item_51;
      case 52:
        return _struct._unique___opaque_item_52;
      case 53:
        return _struct._unique___opaque_item_53;
      case 54:
        return _struct._unique___opaque_item_54;
      case 55:
        return _struct._unique___opaque_item_55;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      case 8:
        _struct._unique___opaque_item_8 = value;
        break;
      case 9:
        _struct._unique___opaque_item_9 = value;
        break;
      case 10:
        _struct._unique___opaque_item_10 = value;
        break;
      case 11:
        _struct._unique___opaque_item_11 = value;
        break;
      case 12:
        _struct._unique___opaque_item_12 = value;
        break;
      case 13:
        _struct._unique___opaque_item_13 = value;
        break;
      case 14:
        _struct._unique___opaque_item_14 = value;
        break;
      case 15:
        _struct._unique___opaque_item_15 = value;
        break;
      case 16:
        _struct._unique___opaque_item_16 = value;
        break;
      case 17:
        _struct._unique___opaque_item_17 = value;
        break;
      case 18:
        _struct._unique___opaque_item_18 = value;
        break;
      case 19:
        _struct._unique___opaque_item_19 = value;
        break;
      case 20:
        _struct._unique___opaque_item_20 = value;
        break;
      case 21:
        _struct._unique___opaque_item_21 = value;
        break;
      case 22:
        _struct._unique___opaque_item_22 = value;
        break;
      case 23:
        _struct._unique___opaque_item_23 = value;
        break;
      case 24:
        _struct._unique___opaque_item_24 = value;
        break;
      case 25:
        _struct._unique___opaque_item_25 = value;
        break;
      case 26:
        _struct._unique___opaque_item_26 = value;
        break;
      case 27:
        _struct._unique___opaque_item_27 = value;
        break;
      case 28:
        _struct._unique___opaque_item_28 = value;
        break;
      case 29:
        _struct._unique___opaque_item_29 = value;
        break;
      case 30:
        _struct._unique___opaque_item_30 = value;
        break;
      case 31:
        _struct._unique___opaque_item_31 = value;
        break;
      case 32:
        _struct._unique___opaque_item_32 = value;
        break;
      case 33:
        _struct._unique___opaque_item_33 = value;
        break;
      case 34:
        _struct._unique___opaque_item_34 = value;
        break;
      case 35:
        _struct._unique___opaque_item_35 = value;
        break;
      case 36:
        _struct._unique___opaque_item_36 = value;
        break;
      case 37:
        _struct._unique___opaque_item_37 = value;
        break;
      case 38:
        _struct._unique___opaque_item_38 = value;
        break;
      case 39:
        _struct._unique___opaque_item_39 = value;
        break;
      case 40:
        _struct._unique___opaque_item_40 = value;
        break;
      case 41:
        _struct._unique___opaque_item_41 = value;
        break;
      case 42:
        _struct._unique___opaque_item_42 = value;
        break;
      case 43:
        _struct._unique___opaque_item_43 = value;
        break;
      case 44:
        _struct._unique___opaque_item_44 = value;
        break;
      case 45:
        _struct._unique___opaque_item_45 = value;
        break;
      case 46:
        _struct._unique___opaque_item_46 = value;
        break;
      case 47:
        _struct._unique___opaque_item_47 = value;
        break;
      case 48:
        _struct._unique___opaque_item_48 = value;
        break;
      case 49:
        _struct._unique___opaque_item_49 = value;
        break;
      case 50:
        _struct._unique___opaque_item_50 = value;
        break;
      case 51:
        _struct._unique___opaque_item_51 = value;
        break;
      case 52:
        _struct._unique___opaque_item_52 = value;
        break;
      case 53:
        _struct._unique___opaque_item_53 = value;
        break;
      case 54:
        _struct._unique___opaque_item_54 = value;
        break;
      case 55:
        _struct._unique___opaque_item_55 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_cond_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;
  @ffi.Int8()
  external int _unique___opaque_item_8;
  @ffi.Int8()
  external int _unique___opaque_item_9;
  @ffi.Int8()
  external int _unique___opaque_item_10;
  @ffi.Int8()
  external int _unique___opaque_item_11;
  @ffi.Int8()
  external int _unique___opaque_item_12;
  @ffi.Int8()
  external int _unique___opaque_item_13;
  @ffi.Int8()
  external int _unique___opaque_item_14;
  @ffi.Int8()
  external int _unique___opaque_item_15;
  @ffi.Int8()
  external int _unique___opaque_item_16;
  @ffi.Int8()
  external int _unique___opaque_item_17;
  @ffi.Int8()
  external int _unique___opaque_item_18;
  @ffi.Int8()
  external int _unique___opaque_item_19;
  @ffi.Int8()
  external int _unique___opaque_item_20;
  @ffi.Int8()
  external int _unique___opaque_item_21;
  @ffi.Int8()
  external int _unique___opaque_item_22;
  @ffi.Int8()
  external int _unique___opaque_item_23;
  @ffi.Int8()
  external int _unique___opaque_item_24;
  @ffi.Int8()
  external int _unique___opaque_item_25;
  @ffi.Int8()
  external int _unique___opaque_item_26;
  @ffi.Int8()
  external int _unique___opaque_item_27;
  @ffi.Int8()
  external int _unique___opaque_item_28;
  @ffi.Int8()
  external int _unique___opaque_item_29;
  @ffi.Int8()
  external int _unique___opaque_item_30;
  @ffi.Int8()
  external int _unique___opaque_item_31;
  @ffi.Int8()
  external int _unique___opaque_item_32;
  @ffi.Int8()
  external int _unique___opaque_item_33;
  @ffi.Int8()
  external int _unique___opaque_item_34;
  @ffi.Int8()
  external int _unique___opaque_item_35;
  @ffi.Int8()
  external int _unique___opaque_item_36;
  @ffi.Int8()
  external int _unique___opaque_item_37;
  @ffi.Int8()
  external int _unique___opaque_item_38;
  @ffi.Int8()
  external int _unique___opaque_item_39;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_cond_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_cond_t___opaque_level0(this, [40], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_cond_t`.
class _ArrayHelper__opaque_pthread_cond_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_cond_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_cond_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      case 8:
        return _struct._unique___opaque_item_8;
      case 9:
        return _struct._unique___opaque_item_9;
      case 10:
        return _struct._unique___opaque_item_10;
      case 11:
        return _struct._unique___opaque_item_11;
      case 12:
        return _struct._unique___opaque_item_12;
      case 13:
        return _struct._unique___opaque_item_13;
      case 14:
        return _struct._unique___opaque_item_14;
      case 15:
        return _struct._unique___opaque_item_15;
      case 16:
        return _struct._unique___opaque_item_16;
      case 17:
        return _struct._unique___opaque_item_17;
      case 18:
        return _struct._unique___opaque_item_18;
      case 19:
        return _struct._unique___opaque_item_19;
      case 20:
        return _struct._unique___opaque_item_20;
      case 21:
        return _struct._unique___opaque_item_21;
      case 22:
        return _struct._unique___opaque_item_22;
      case 23:
        return _struct._unique___opaque_item_23;
      case 24:
        return _struct._unique___opaque_item_24;
      case 25:
        return _struct._unique___opaque_item_25;
      case 26:
        return _struct._unique___opaque_item_26;
      case 27:
        return _struct._unique___opaque_item_27;
      case 28:
        return _struct._unique___opaque_item_28;
      case 29:
        return _struct._unique___opaque_item_29;
      case 30:
        return _struct._unique___opaque_item_30;
      case 31:
        return _struct._unique___opaque_item_31;
      case 32:
        return _struct._unique___opaque_item_32;
      case 33:
        return _struct._unique___opaque_item_33;
      case 34:
        return _struct._unique___opaque_item_34;
      case 35:
        return _struct._unique___opaque_item_35;
      case 36:
        return _struct._unique___opaque_item_36;
      case 37:
        return _struct._unique___opaque_item_37;
      case 38:
        return _struct._unique___opaque_item_38;
      case 39:
        return _struct._unique___opaque_item_39;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      case 8:
        _struct._unique___opaque_item_8 = value;
        break;
      case 9:
        _struct._unique___opaque_item_9 = value;
        break;
      case 10:
        _struct._unique___opaque_item_10 = value;
        break;
      case 11:
        _struct._unique___opaque_item_11 = value;
        break;
      case 12:
        _struct._unique___opaque_item_12 = value;
        break;
      case 13:
        _struct._unique___opaque_item_13 = value;
        break;
      case 14:
        _struct._unique___opaque_item_14 = value;
        break;
      case 15:
        _struct._unique___opaque_item_15 = value;
        break;
      case 16:
        _struct._unique___opaque_item_16 = value;
        break;
      case 17:
        _struct._unique___opaque_item_17 = value;
        break;
      case 18:
        _struct._unique___opaque_item_18 = value;
        break;
      case 19:
        _struct._unique___opaque_item_19 = value;
        break;
      case 20:
        _struct._unique___opaque_item_20 = value;
        break;
      case 21:
        _struct._unique___opaque_item_21 = value;
        break;
      case 22:
        _struct._unique___opaque_item_22 = value;
        break;
      case 23:
        _struct._unique___opaque_item_23 = value;
        break;
      case 24:
        _struct._unique___opaque_item_24 = value;
        break;
      case 25:
        _struct._unique___opaque_item_25 = value;
        break;
      case 26:
        _struct._unique___opaque_item_26 = value;
        break;
      case 27:
        _struct._unique___opaque_item_27 = value;
        break;
      case 28:
        _struct._unique___opaque_item_28 = value;
        break;
      case 29:
        _struct._unique___opaque_item_29 = value;
        break;
      case 30:
        _struct._unique___opaque_item_30 = value;
        break;
      case 31:
        _struct._unique___opaque_item_31 = value;
        break;
      case 32:
        _struct._unique___opaque_item_32 = value;
        break;
      case 33:
        _struct._unique___opaque_item_33 = value;
        break;
      case 34:
        _struct._unique___opaque_item_34 = value;
        break;
      case 35:
        _struct._unique___opaque_item_35 = value;
        break;
      case 36:
        _struct._unique___opaque_item_36 = value;
        break;
      case 37:
        _struct._unique___opaque_item_37 = value;
        break;
      case 38:
        _struct._unique___opaque_item_38 = value;
        break;
      case 39:
        _struct._unique___opaque_item_39 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_condattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_condattr_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_condattr_t___opaque_level0(this, [8], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_condattr_t`.
class _ArrayHelper__opaque_pthread_condattr_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_condattr_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);

  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_condattr_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_mutex_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;
  @ffi.Int8()
  external int _unique___opaque_item_8;
  @ffi.Int8()
  external int _unique___opaque_item_9;
  @ffi.Int8()
  external int _unique___opaque_item_10;
  @ffi.Int8()
  external int _unique___opaque_item_11;
  @ffi.Int8()
  external int _unique___opaque_item_12;
  @ffi.Int8()
  external int _unique___opaque_item_13;
  @ffi.Int8()
  external int _unique___opaque_item_14;
  @ffi.Int8()
  external int _unique___opaque_item_15;
  @ffi.Int8()
  external int _unique___opaque_item_16;
  @ffi.Int8()
  external int _unique___opaque_item_17;
  @ffi.Int8()
  external int _unique___opaque_item_18;
  @ffi.Int8()
  external int _unique___opaque_item_19;
  @ffi.Int8()
  external int _unique___opaque_item_20;
  @ffi.Int8()
  external int _unique___opaque_item_21;
  @ffi.Int8()
  external int _unique___opaque_item_22;
  @ffi.Int8()
  external int _unique___opaque_item_23;
  @ffi.Int8()
  external int _unique___opaque_item_24;
  @ffi.Int8()
  external int _unique___opaque_item_25;
  @ffi.Int8()
  external int _unique___opaque_item_26;
  @ffi.Int8()
  external int _unique___opaque_item_27;
  @ffi.Int8()
  external int _unique___opaque_item_28;
  @ffi.Int8()
  external int _unique___opaque_item_29;
  @ffi.Int8()
  external int _unique___opaque_item_30;
  @ffi.Int8()
  external int _unique___opaque_item_31;
  @ffi.Int8()
  external int _unique___opaque_item_32;
  @ffi.Int8()
  external int _unique___opaque_item_33;
  @ffi.Int8()
  external int _unique___opaque_item_34;
  @ffi.Int8()
  external int _unique___opaque_item_35;
  @ffi.Int8()
  external int _unique___opaque_item_36;
  @ffi.Int8()
  external int _unique___opaque_item_37;
  @ffi.Int8()
  external int _unique___opaque_item_38;
  @ffi.Int8()
  external int _unique___opaque_item_39;
  @ffi.Int8()
  external int _unique___opaque_item_40;
  @ffi.Int8()
  external int _unique___opaque_item_41;
  @ffi.Int8()
  external int _unique___opaque_item_42;
  @ffi.Int8()
  external int _unique___opaque_item_43;
  @ffi.Int8()
  external int _unique___opaque_item_44;
  @ffi.Int8()
  external int _unique___opaque_item_45;
  @ffi.Int8()
  external int _unique___opaque_item_46;
  @ffi.Int8()
  external int _unique___opaque_item_47;
  @ffi.Int8()
  external int _unique___opaque_item_48;
  @ffi.Int8()
  external int _unique___opaque_item_49;
  @ffi.Int8()
  external int _unique___opaque_item_50;
  @ffi.Int8()
  external int _unique___opaque_item_51;
  @ffi.Int8()
  external int _unique___opaque_item_52;
  @ffi.Int8()
  external int _unique___opaque_item_53;
  @ffi.Int8()
  external int _unique___opaque_item_54;
  @ffi.Int8()
  external int _unique___opaque_item_55;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_mutex_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_mutex_t___opaque_level0(this, [56], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_mutex_t`.
class _ArrayHelper__opaque_pthread_mutex_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_mutex_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_mutex_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      case 8:
        return _struct._unique___opaque_item_8;
      case 9:
        return _struct._unique___opaque_item_9;
      case 10:
        return _struct._unique___opaque_item_10;
      case 11:
        return _struct._unique___opaque_item_11;
      case 12:
        return _struct._unique___opaque_item_12;
      case 13:
        return _struct._unique___opaque_item_13;
      case 14:
        return _struct._unique___opaque_item_14;
      case 15:
        return _struct._unique___opaque_item_15;
      case 16:
        return _struct._unique___opaque_item_16;
      case 17:
        return _struct._unique___opaque_item_17;
      case 18:
        return _struct._unique___opaque_item_18;
      case 19:
        return _struct._unique___opaque_item_19;
      case 20:
        return _struct._unique___opaque_item_20;
      case 21:
        return _struct._unique___opaque_item_21;
      case 22:
        return _struct._unique___opaque_item_22;
      case 23:
        return _struct._unique___opaque_item_23;
      case 24:
        return _struct._unique___opaque_item_24;
      case 25:
        return _struct._unique___opaque_item_25;
      case 26:
        return _struct._unique___opaque_item_26;
      case 27:
        return _struct._unique___opaque_item_27;
      case 28:
        return _struct._unique___opaque_item_28;
      case 29:
        return _struct._unique___opaque_item_29;
      case 30:
        return _struct._unique___opaque_item_30;
      case 31:
        return _struct._unique___opaque_item_31;
      case 32:
        return _struct._unique___opaque_item_32;
      case 33:
        return _struct._unique___opaque_item_33;
      case 34:
        return _struct._unique___opaque_item_34;
      case 35:
        return _struct._unique___opaque_item_35;
      case 36:
        return _struct._unique___opaque_item_36;
      case 37:
        return _struct._unique___opaque_item_37;
      case 38:
        return _struct._unique___opaque_item_38;
      case 39:
        return _struct._unique___opaque_item_39;
      case 40:
        return _struct._unique___opaque_item_40;
      case 41:
        return _struct._unique___opaque_item_41;
      case 42:
        return _struct._unique___opaque_item_42;
      case 43:
        return _struct._unique___opaque_item_43;
      case 44:
        return _struct._unique___opaque_item_44;
      case 45:
        return _struct._unique___opaque_item_45;
      case 46:
        return _struct._unique___opaque_item_46;
      case 47:
        return _struct._unique___opaque_item_47;
      case 48:
        return _struct._unique___opaque_item_48;
      case 49:
        return _struct._unique___opaque_item_49;
      case 50:
        return _struct._unique___opaque_item_50;
      case 51:
        return _struct._unique___opaque_item_51;
      case 52:
        return _struct._unique___opaque_item_52;
      case 53:
        return _struct._unique___opaque_item_53;
      case 54:
        return _struct._unique___opaque_item_54;
      case 55:
        return _struct._unique___opaque_item_55;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      case 8:
        _struct._unique___opaque_item_8 = value;
        break;
      case 9:
        _struct._unique___opaque_item_9 = value;
        break;
      case 10:
        _struct._unique___opaque_item_10 = value;
        break;
      case 11:
        _struct._unique___opaque_item_11 = value;
        break;
      case 12:
        _struct._unique___opaque_item_12 = value;
        break;
      case 13:
        _struct._unique___opaque_item_13 = value;
        break;
      case 14:
        _struct._unique___opaque_item_14 = value;
        break;
      case 15:
        _struct._unique___opaque_item_15 = value;
        break;
      case 16:
        _struct._unique___opaque_item_16 = value;
        break;
      case 17:
        _struct._unique___opaque_item_17 = value;
        break;
      case 18:
        _struct._unique___opaque_item_18 = value;
        break;
      case 19:
        _struct._unique___opaque_item_19 = value;
        break;
      case 20:
        _struct._unique___opaque_item_20 = value;
        break;
      case 21:
        _struct._unique___opaque_item_21 = value;
        break;
      case 22:
        _struct._unique___opaque_item_22 = value;
        break;
      case 23:
        _struct._unique___opaque_item_23 = value;
        break;
      case 24:
        _struct._unique___opaque_item_24 = value;
        break;
      case 25:
        _struct._unique___opaque_item_25 = value;
        break;
      case 26:
        _struct._unique___opaque_item_26 = value;
        break;
      case 27:
        _struct._unique___opaque_item_27 = value;
        break;
      case 28:
        _struct._unique___opaque_item_28 = value;
        break;
      case 29:
        _struct._unique___opaque_item_29 = value;
        break;
      case 30:
        _struct._unique___opaque_item_30 = value;
        break;
      case 31:
        _struct._unique___opaque_item_31 = value;
        break;
      case 32:
        _struct._unique___opaque_item_32 = value;
        break;
      case 33:
        _struct._unique___opaque_item_33 = value;
        break;
      case 34:
        _struct._unique___opaque_item_34 = value;
        break;
      case 35:
        _struct._unique___opaque_item_35 = value;
        break;
      case 36:
        _struct._unique___opaque_item_36 = value;
        break;
      case 37:
        _struct._unique___opaque_item_37 = value;
        break;
      case 38:
        _struct._unique___opaque_item_38 = value;
        break;
      case 39:
        _struct._unique___opaque_item_39 = value;
        break;
      case 40:
        _struct._unique___opaque_item_40 = value;
        break;
      case 41:
        _struct._unique___opaque_item_41 = value;
        break;
      case 42:
        _struct._unique___opaque_item_42 = value;
        break;
      case 43:
        _struct._unique___opaque_item_43 = value;
        break;
      case 44:
        _struct._unique___opaque_item_44 = value;
        break;
      case 45:
        _struct._unique___opaque_item_45 = value;
        break;
      case 46:
        _struct._unique___opaque_item_46 = value;
        break;
      case 47:
        _struct._unique___opaque_item_47 = value;
        break;
      case 48:
        _struct._unique___opaque_item_48 = value;
        break;
      case 49:
        _struct._unique___opaque_item_49 = value;
        break;
      case 50:
        _struct._unique___opaque_item_50 = value;
        break;
      case 51:
        _struct._unique___opaque_item_51 = value;
        break;
      case 52:
        _struct._unique___opaque_item_52 = value;
        break;
      case 53:
        _struct._unique___opaque_item_53 = value;
        break;
      case 54:
        _struct._unique___opaque_item_54 = value;
        break;
      case 55:
        _struct._unique___opaque_item_55 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_mutexattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_mutexattr_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_mutexattr_t___opaque_level0(this, [8], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_mutexattr_t`.
class _ArrayHelper__opaque_pthread_mutexattr_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_mutexattr_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_mutexattr_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_once_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_once_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_once_t___opaque_level0(this, [8], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_once_t`.
class _ArrayHelper__opaque_pthread_once_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_once_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_once_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_rwlock_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;
  @ffi.Int8()
  external int _unique___opaque_item_8;
  @ffi.Int8()
  external int _unique___opaque_item_9;
  @ffi.Int8()
  external int _unique___opaque_item_10;
  @ffi.Int8()
  external int _unique___opaque_item_11;
  @ffi.Int8()
  external int _unique___opaque_item_12;
  @ffi.Int8()
  external int _unique___opaque_item_13;
  @ffi.Int8()
  external int _unique___opaque_item_14;
  @ffi.Int8()
  external int _unique___opaque_item_15;
  @ffi.Int8()
  external int _unique___opaque_item_16;
  @ffi.Int8()
  external int _unique___opaque_item_17;
  @ffi.Int8()
  external int _unique___opaque_item_18;
  @ffi.Int8()
  external int _unique___opaque_item_19;
  @ffi.Int8()
  external int _unique___opaque_item_20;
  @ffi.Int8()
  external int _unique___opaque_item_21;
  @ffi.Int8()
  external int _unique___opaque_item_22;
  @ffi.Int8()
  external int _unique___opaque_item_23;
  @ffi.Int8()
  external int _unique___opaque_item_24;
  @ffi.Int8()
  external int _unique___opaque_item_25;
  @ffi.Int8()
  external int _unique___opaque_item_26;
  @ffi.Int8()
  external int _unique___opaque_item_27;
  @ffi.Int8()
  external int _unique___opaque_item_28;
  @ffi.Int8()
  external int _unique___opaque_item_29;
  @ffi.Int8()
  external int _unique___opaque_item_30;
  @ffi.Int8()
  external int _unique___opaque_item_31;
  @ffi.Int8()
  external int _unique___opaque_item_32;
  @ffi.Int8()
  external int _unique___opaque_item_33;
  @ffi.Int8()
  external int _unique___opaque_item_34;
  @ffi.Int8()
  external int _unique___opaque_item_35;
  @ffi.Int8()
  external int _unique___opaque_item_36;
  @ffi.Int8()
  external int _unique___opaque_item_37;
  @ffi.Int8()
  external int _unique___opaque_item_38;
  @ffi.Int8()
  external int _unique___opaque_item_39;
  @ffi.Int8()
  external int _unique___opaque_item_40;
  @ffi.Int8()
  external int _unique___opaque_item_41;
  @ffi.Int8()
  external int _unique___opaque_item_42;
  @ffi.Int8()
  external int _unique___opaque_item_43;
  @ffi.Int8()
  external int _unique___opaque_item_44;
  @ffi.Int8()
  external int _unique___opaque_item_45;
  @ffi.Int8()
  external int _unique___opaque_item_46;
  @ffi.Int8()
  external int _unique___opaque_item_47;
  @ffi.Int8()
  external int _unique___opaque_item_48;
  @ffi.Int8()
  external int _unique___opaque_item_49;
  @ffi.Int8()
  external int _unique___opaque_item_50;
  @ffi.Int8()
  external int _unique___opaque_item_51;
  @ffi.Int8()
  external int _unique___opaque_item_52;
  @ffi.Int8()
  external int _unique___opaque_item_53;
  @ffi.Int8()
  external int _unique___opaque_item_54;
  @ffi.Int8()
  external int _unique___opaque_item_55;
  @ffi.Int8()
  external int _unique___opaque_item_56;
  @ffi.Int8()
  external int _unique___opaque_item_57;
  @ffi.Int8()
  external int _unique___opaque_item_58;
  @ffi.Int8()
  external int _unique___opaque_item_59;
  @ffi.Int8()
  external int _unique___opaque_item_60;
  @ffi.Int8()
  external int _unique___opaque_item_61;
  @ffi.Int8()
  external int _unique___opaque_item_62;
  @ffi.Int8()
  external int _unique___opaque_item_63;
  @ffi.Int8()
  external int _unique___opaque_item_64;
  @ffi.Int8()
  external int _unique___opaque_item_65;
  @ffi.Int8()
  external int _unique___opaque_item_66;
  @ffi.Int8()
  external int _unique___opaque_item_67;
  @ffi.Int8()
  external int _unique___opaque_item_68;
  @ffi.Int8()
  external int _unique___opaque_item_69;
  @ffi.Int8()
  external int _unique___opaque_item_70;
  @ffi.Int8()
  external int _unique___opaque_item_71;
  @ffi.Int8()
  external int _unique___opaque_item_72;
  @ffi.Int8()
  external int _unique___opaque_item_73;
  @ffi.Int8()
  external int _unique___opaque_item_74;
  @ffi.Int8()
  external int _unique___opaque_item_75;
  @ffi.Int8()
  external int _unique___opaque_item_76;
  @ffi.Int8()
  external int _unique___opaque_item_77;
  @ffi.Int8()
  external int _unique___opaque_item_78;
  @ffi.Int8()
  external int _unique___opaque_item_79;
  @ffi.Int8()
  external int _unique___opaque_item_80;
  @ffi.Int8()
  external int _unique___opaque_item_81;
  @ffi.Int8()
  external int _unique___opaque_item_82;
  @ffi.Int8()
  external int _unique___opaque_item_83;
  @ffi.Int8()
  external int _unique___opaque_item_84;
  @ffi.Int8()
  external int _unique___opaque_item_85;
  @ffi.Int8()
  external int _unique___opaque_item_86;
  @ffi.Int8()
  external int _unique___opaque_item_87;
  @ffi.Int8()
  external int _unique___opaque_item_88;
  @ffi.Int8()
  external int _unique___opaque_item_89;
  @ffi.Int8()
  external int _unique___opaque_item_90;
  @ffi.Int8()
  external int _unique___opaque_item_91;
  @ffi.Int8()
  external int _unique___opaque_item_92;
  @ffi.Int8()
  external int _unique___opaque_item_93;
  @ffi.Int8()
  external int _unique___opaque_item_94;
  @ffi.Int8()
  external int _unique___opaque_item_95;
  @ffi.Int8()
  external int _unique___opaque_item_96;
  @ffi.Int8()
  external int _unique___opaque_item_97;
  @ffi.Int8()
  external int _unique___opaque_item_98;
  @ffi.Int8()
  external int _unique___opaque_item_99;
  @ffi.Int8()
  external int _unique___opaque_item_100;
  @ffi.Int8()
  external int _unique___opaque_item_101;
  @ffi.Int8()
  external int _unique___opaque_item_102;
  @ffi.Int8()
  external int _unique___opaque_item_103;
  @ffi.Int8()
  external int _unique___opaque_item_104;
  @ffi.Int8()
  external int _unique___opaque_item_105;
  @ffi.Int8()
  external int _unique___opaque_item_106;
  @ffi.Int8()
  external int _unique___opaque_item_107;
  @ffi.Int8()
  external int _unique___opaque_item_108;
  @ffi.Int8()
  external int _unique___opaque_item_109;
  @ffi.Int8()
  external int _unique___opaque_item_110;
  @ffi.Int8()
  external int _unique___opaque_item_111;
  @ffi.Int8()
  external int _unique___opaque_item_112;
  @ffi.Int8()
  external int _unique___opaque_item_113;
  @ffi.Int8()
  external int _unique___opaque_item_114;
  @ffi.Int8()
  external int _unique___opaque_item_115;
  @ffi.Int8()
  external int _unique___opaque_item_116;
  @ffi.Int8()
  external int _unique___opaque_item_117;
  @ffi.Int8()
  external int _unique___opaque_item_118;
  @ffi.Int8()
  external int _unique___opaque_item_119;
  @ffi.Int8()
  external int _unique___opaque_item_120;
  @ffi.Int8()
  external int _unique___opaque_item_121;
  @ffi.Int8()
  external int _unique___opaque_item_122;
  @ffi.Int8()
  external int _unique___opaque_item_123;
  @ffi.Int8()
  external int _unique___opaque_item_124;
  @ffi.Int8()
  external int _unique___opaque_item_125;
  @ffi.Int8()
  external int _unique___opaque_item_126;
  @ffi.Int8()
  external int _unique___opaque_item_127;
  @ffi.Int8()
  external int _unique___opaque_item_128;
  @ffi.Int8()
  external int _unique___opaque_item_129;
  @ffi.Int8()
  external int _unique___opaque_item_130;
  @ffi.Int8()
  external int _unique___opaque_item_131;
  @ffi.Int8()
  external int _unique___opaque_item_132;
  @ffi.Int8()
  external int _unique___opaque_item_133;
  @ffi.Int8()
  external int _unique___opaque_item_134;
  @ffi.Int8()
  external int _unique___opaque_item_135;
  @ffi.Int8()
  external int _unique___opaque_item_136;
  @ffi.Int8()
  external int _unique___opaque_item_137;
  @ffi.Int8()
  external int _unique___opaque_item_138;
  @ffi.Int8()
  external int _unique___opaque_item_139;
  @ffi.Int8()
  external int _unique___opaque_item_140;
  @ffi.Int8()
  external int _unique___opaque_item_141;
  @ffi.Int8()
  external int _unique___opaque_item_142;
  @ffi.Int8()
  external int _unique___opaque_item_143;
  @ffi.Int8()
  external int _unique___opaque_item_144;
  @ffi.Int8()
  external int _unique___opaque_item_145;
  @ffi.Int8()
  external int _unique___opaque_item_146;
  @ffi.Int8()
  external int _unique___opaque_item_147;
  @ffi.Int8()
  external int _unique___opaque_item_148;
  @ffi.Int8()
  external int _unique___opaque_item_149;
  @ffi.Int8()
  external int _unique___opaque_item_150;
  @ffi.Int8()
  external int _unique___opaque_item_151;
  @ffi.Int8()
  external int _unique___opaque_item_152;
  @ffi.Int8()
  external int _unique___opaque_item_153;
  @ffi.Int8()
  external int _unique___opaque_item_154;
  @ffi.Int8()
  external int _unique___opaque_item_155;
  @ffi.Int8()
  external int _unique___opaque_item_156;
  @ffi.Int8()
  external int _unique___opaque_item_157;
  @ffi.Int8()
  external int _unique___opaque_item_158;
  @ffi.Int8()
  external int _unique___opaque_item_159;
  @ffi.Int8()
  external int _unique___opaque_item_160;
  @ffi.Int8()
  external int _unique___opaque_item_161;
  @ffi.Int8()
  external int _unique___opaque_item_162;
  @ffi.Int8()
  external int _unique___opaque_item_163;
  @ffi.Int8()
  external int _unique___opaque_item_164;
  @ffi.Int8()
  external int _unique___opaque_item_165;
  @ffi.Int8()
  external int _unique___opaque_item_166;
  @ffi.Int8()
  external int _unique___opaque_item_167;
  @ffi.Int8()
  external int _unique___opaque_item_168;
  @ffi.Int8()
  external int _unique___opaque_item_169;
  @ffi.Int8()
  external int _unique___opaque_item_170;
  @ffi.Int8()
  external int _unique___opaque_item_171;
  @ffi.Int8()
  external int _unique___opaque_item_172;
  @ffi.Int8()
  external int _unique___opaque_item_173;
  @ffi.Int8()
  external int _unique___opaque_item_174;
  @ffi.Int8()
  external int _unique___opaque_item_175;
  @ffi.Int8()
  external int _unique___opaque_item_176;
  @ffi.Int8()
  external int _unique___opaque_item_177;
  @ffi.Int8()
  external int _unique___opaque_item_178;
  @ffi.Int8()
  external int _unique___opaque_item_179;
  @ffi.Int8()
  external int _unique___opaque_item_180;
  @ffi.Int8()
  external int _unique___opaque_item_181;
  @ffi.Int8()
  external int _unique___opaque_item_182;
  @ffi.Int8()
  external int _unique___opaque_item_183;
  @ffi.Int8()
  external int _unique___opaque_item_184;
  @ffi.Int8()
  external int _unique___opaque_item_185;
  @ffi.Int8()
  external int _unique___opaque_item_186;
  @ffi.Int8()
  external int _unique___opaque_item_187;
  @ffi.Int8()
  external int _unique___opaque_item_188;
  @ffi.Int8()
  external int _unique___opaque_item_189;
  @ffi.Int8()
  external int _unique___opaque_item_190;
  @ffi.Int8()
  external int _unique___opaque_item_191;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_rwlock_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_rwlock_t___opaque_level0(this, [192], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_rwlock_t`.
class _ArrayHelper__opaque_pthread_rwlock_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_rwlock_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final _opaque_pthread_rwlock_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      case 8:
        return _struct._unique___opaque_item_8;
      case 9:
        return _struct._unique___opaque_item_9;
      case 10:
        return _struct._unique___opaque_item_10;
      case 11:
        return _struct._unique___opaque_item_11;
      case 12:
        return _struct._unique___opaque_item_12;
      case 13:
        return _struct._unique___opaque_item_13;
      case 14:
        return _struct._unique___opaque_item_14;
      case 15:
        return _struct._unique___opaque_item_15;
      case 16:
        return _struct._unique___opaque_item_16;
      case 17:
        return _struct._unique___opaque_item_17;
      case 18:
        return _struct._unique___opaque_item_18;
      case 19:
        return _struct._unique___opaque_item_19;
      case 20:
        return _struct._unique___opaque_item_20;
      case 21:
        return _struct._unique___opaque_item_21;
      case 22:
        return _struct._unique___opaque_item_22;
      case 23:
        return _struct._unique___opaque_item_23;
      case 24:
        return _struct._unique___opaque_item_24;
      case 25:
        return _struct._unique___opaque_item_25;
      case 26:
        return _struct._unique___opaque_item_26;
      case 27:
        return _struct._unique___opaque_item_27;
      case 28:
        return _struct._unique___opaque_item_28;
      case 29:
        return _struct._unique___opaque_item_29;
      case 30:
        return _struct._unique___opaque_item_30;
      case 31:
        return _struct._unique___opaque_item_31;
      case 32:
        return _struct._unique___opaque_item_32;
      case 33:
        return _struct._unique___opaque_item_33;
      case 34:
        return _struct._unique___opaque_item_34;
      case 35:
        return _struct._unique___opaque_item_35;
      case 36:
        return _struct._unique___opaque_item_36;
      case 37:
        return _struct._unique___opaque_item_37;
      case 38:
        return _struct._unique___opaque_item_38;
      case 39:
        return _struct._unique___opaque_item_39;
      case 40:
        return _struct._unique___opaque_item_40;
      case 41:
        return _struct._unique___opaque_item_41;
      case 42:
        return _struct._unique___opaque_item_42;
      case 43:
        return _struct._unique___opaque_item_43;
      case 44:
        return _struct._unique___opaque_item_44;
      case 45:
        return _struct._unique___opaque_item_45;
      case 46:
        return _struct._unique___opaque_item_46;
      case 47:
        return _struct._unique___opaque_item_47;
      case 48:
        return _struct._unique___opaque_item_48;
      case 49:
        return _struct._unique___opaque_item_49;
      case 50:
        return _struct._unique___opaque_item_50;
      case 51:
        return _struct._unique___opaque_item_51;
      case 52:
        return _struct._unique___opaque_item_52;
      case 53:
        return _struct._unique___opaque_item_53;
      case 54:
        return _struct._unique___opaque_item_54;
      case 55:
        return _struct._unique___opaque_item_55;
      case 56:
        return _struct._unique___opaque_item_56;
      case 57:
        return _struct._unique___opaque_item_57;
      case 58:
        return _struct._unique___opaque_item_58;
      case 59:
        return _struct._unique___opaque_item_59;
      case 60:
        return _struct._unique___opaque_item_60;
      case 61:
        return _struct._unique___opaque_item_61;
      case 62:
        return _struct._unique___opaque_item_62;
      case 63:
        return _struct._unique___opaque_item_63;
      case 64:
        return _struct._unique___opaque_item_64;
      case 65:
        return _struct._unique___opaque_item_65;
      case 66:
        return _struct._unique___opaque_item_66;
      case 67:
        return _struct._unique___opaque_item_67;
      case 68:
        return _struct._unique___opaque_item_68;
      case 69:
        return _struct._unique___opaque_item_69;
      case 70:
        return _struct._unique___opaque_item_70;
      case 71:
        return _struct._unique___opaque_item_71;
      case 72:
        return _struct._unique___opaque_item_72;
      case 73:
        return _struct._unique___opaque_item_73;
      case 74:
        return _struct._unique___opaque_item_74;
      case 75:
        return _struct._unique___opaque_item_75;
      case 76:
        return _struct._unique___opaque_item_76;
      case 77:
        return _struct._unique___opaque_item_77;
      case 78:
        return _struct._unique___opaque_item_78;
      case 79:
        return _struct._unique___opaque_item_79;
      case 80:
        return _struct._unique___opaque_item_80;
      case 81:
        return _struct._unique___opaque_item_81;
      case 82:
        return _struct._unique___opaque_item_82;
      case 83:
        return _struct._unique___opaque_item_83;
      case 84:
        return _struct._unique___opaque_item_84;
      case 85:
        return _struct._unique___opaque_item_85;
      case 86:
        return _struct._unique___opaque_item_86;
      case 87:
        return _struct._unique___opaque_item_87;
      case 88:
        return _struct._unique___opaque_item_88;
      case 89:
        return _struct._unique___opaque_item_89;
      case 90:
        return _struct._unique___opaque_item_90;
      case 91:
        return _struct._unique___opaque_item_91;
      case 92:
        return _struct._unique___opaque_item_92;
      case 93:
        return _struct._unique___opaque_item_93;
      case 94:
        return _struct._unique___opaque_item_94;
      case 95:
        return _struct._unique___opaque_item_95;
      case 96:
        return _struct._unique___opaque_item_96;
      case 97:
        return _struct._unique___opaque_item_97;
      case 98:
        return _struct._unique___opaque_item_98;
      case 99:
        return _struct._unique___opaque_item_99;
      case 100:
        return _struct._unique___opaque_item_100;
      case 101:
        return _struct._unique___opaque_item_101;
      case 102:
        return _struct._unique___opaque_item_102;
      case 103:
        return _struct._unique___opaque_item_103;
      case 104:
        return _struct._unique___opaque_item_104;
      case 105:
        return _struct._unique___opaque_item_105;
      case 106:
        return _struct._unique___opaque_item_106;
      case 107:
        return _struct._unique___opaque_item_107;
      case 108:
        return _struct._unique___opaque_item_108;
      case 109:
        return _struct._unique___opaque_item_109;
      case 110:
        return _struct._unique___opaque_item_110;
      case 111:
        return _struct._unique___opaque_item_111;
      case 112:
        return _struct._unique___opaque_item_112;
      case 113:
        return _struct._unique___opaque_item_113;
      case 114:
        return _struct._unique___opaque_item_114;
      case 115:
        return _struct._unique___opaque_item_115;
      case 116:
        return _struct._unique___opaque_item_116;
      case 117:
        return _struct._unique___opaque_item_117;
      case 118:
        return _struct._unique___opaque_item_118;
      case 119:
        return _struct._unique___opaque_item_119;
      case 120:
        return _struct._unique___opaque_item_120;
      case 121:
        return _struct._unique___opaque_item_121;
      case 122:
        return _struct._unique___opaque_item_122;
      case 123:
        return _struct._unique___opaque_item_123;
      case 124:
        return _struct._unique___opaque_item_124;
      case 125:
        return _struct._unique___opaque_item_125;
      case 126:
        return _struct._unique___opaque_item_126;
      case 127:
        return _struct._unique___opaque_item_127;
      case 128:
        return _struct._unique___opaque_item_128;
      case 129:
        return _struct._unique___opaque_item_129;
      case 130:
        return _struct._unique___opaque_item_130;
      case 131:
        return _struct._unique___opaque_item_131;
      case 132:
        return _struct._unique___opaque_item_132;
      case 133:
        return _struct._unique___opaque_item_133;
      case 134:
        return _struct._unique___opaque_item_134;
      case 135:
        return _struct._unique___opaque_item_135;
      case 136:
        return _struct._unique___opaque_item_136;
      case 137:
        return _struct._unique___opaque_item_137;
      case 138:
        return _struct._unique___opaque_item_138;
      case 139:
        return _struct._unique___opaque_item_139;
      case 140:
        return _struct._unique___opaque_item_140;
      case 141:
        return _struct._unique___opaque_item_141;
      case 142:
        return _struct._unique___opaque_item_142;
      case 143:
        return _struct._unique___opaque_item_143;
      case 144:
        return _struct._unique___opaque_item_144;
      case 145:
        return _struct._unique___opaque_item_145;
      case 146:
        return _struct._unique___opaque_item_146;
      case 147:
        return _struct._unique___opaque_item_147;
      case 148:
        return _struct._unique___opaque_item_148;
      case 149:
        return _struct._unique___opaque_item_149;
      case 150:
        return _struct._unique___opaque_item_150;
      case 151:
        return _struct._unique___opaque_item_151;
      case 152:
        return _struct._unique___opaque_item_152;
      case 153:
        return _struct._unique___opaque_item_153;
      case 154:
        return _struct._unique___opaque_item_154;
      case 155:
        return _struct._unique___opaque_item_155;
      case 156:
        return _struct._unique___opaque_item_156;
      case 157:
        return _struct._unique___opaque_item_157;
      case 158:
        return _struct._unique___opaque_item_158;
      case 159:
        return _struct._unique___opaque_item_159;
      case 160:
        return _struct._unique___opaque_item_160;
      case 161:
        return _struct._unique___opaque_item_161;
      case 162:
        return _struct._unique___opaque_item_162;
      case 163:
        return _struct._unique___opaque_item_163;
      case 164:
        return _struct._unique___opaque_item_164;
      case 165:
        return _struct._unique___opaque_item_165;
      case 166:
        return _struct._unique___opaque_item_166;
      case 167:
        return _struct._unique___opaque_item_167;
      case 168:
        return _struct._unique___opaque_item_168;
      case 169:
        return _struct._unique___opaque_item_169;
      case 170:
        return _struct._unique___opaque_item_170;
      case 171:
        return _struct._unique___opaque_item_171;
      case 172:
        return _struct._unique___opaque_item_172;
      case 173:
        return _struct._unique___opaque_item_173;
      case 174:
        return _struct._unique___opaque_item_174;
      case 175:
        return _struct._unique___opaque_item_175;
      case 176:
        return _struct._unique___opaque_item_176;
      case 177:
        return _struct._unique___opaque_item_177;
      case 178:
        return _struct._unique___opaque_item_178;
      case 179:
        return _struct._unique___opaque_item_179;
      case 180:
        return _struct._unique___opaque_item_180;
      case 181:
        return _struct._unique___opaque_item_181;
      case 182:
        return _struct._unique___opaque_item_182;
      case 183:
        return _struct._unique___opaque_item_183;
      case 184:
        return _struct._unique___opaque_item_184;
      case 185:
        return _struct._unique___opaque_item_185;
      case 186:
        return _struct._unique___opaque_item_186;
      case 187:
        return _struct._unique___opaque_item_187;
      case 188:
        return _struct._unique___opaque_item_188;
      case 189:
        return _struct._unique___opaque_item_189;
      case 190:
        return _struct._unique___opaque_item_190;
      case 191:
        return _struct._unique___opaque_item_191;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      case 8:
        _struct._unique___opaque_item_8 = value;
        break;
      case 9:
        _struct._unique___opaque_item_9 = value;
        break;
      case 10:
        _struct._unique___opaque_item_10 = value;
        break;
      case 11:
        _struct._unique___opaque_item_11 = value;
        break;
      case 12:
        _struct._unique___opaque_item_12 = value;
        break;
      case 13:
        _struct._unique___opaque_item_13 = value;
        break;
      case 14:
        _struct._unique___opaque_item_14 = value;
        break;
      case 15:
        _struct._unique___opaque_item_15 = value;
        break;
      case 16:
        _struct._unique___opaque_item_16 = value;
        break;
      case 17:
        _struct._unique___opaque_item_17 = value;
        break;
      case 18:
        _struct._unique___opaque_item_18 = value;
        break;
      case 19:
        _struct._unique___opaque_item_19 = value;
        break;
      case 20:
        _struct._unique___opaque_item_20 = value;
        break;
      case 21:
        _struct._unique___opaque_item_21 = value;
        break;
      case 22:
        _struct._unique___opaque_item_22 = value;
        break;
      case 23:
        _struct._unique___opaque_item_23 = value;
        break;
      case 24:
        _struct._unique___opaque_item_24 = value;
        break;
      case 25:
        _struct._unique___opaque_item_25 = value;
        break;
      case 26:
        _struct._unique___opaque_item_26 = value;
        break;
      case 27:
        _struct._unique___opaque_item_27 = value;
        break;
      case 28:
        _struct._unique___opaque_item_28 = value;
        break;
      case 29:
        _struct._unique___opaque_item_29 = value;
        break;
      case 30:
        _struct._unique___opaque_item_30 = value;
        break;
      case 31:
        _struct._unique___opaque_item_31 = value;
        break;
      case 32:
        _struct._unique___opaque_item_32 = value;
        break;
      case 33:
        _struct._unique___opaque_item_33 = value;
        break;
      case 34:
        _struct._unique___opaque_item_34 = value;
        break;
      case 35:
        _struct._unique___opaque_item_35 = value;
        break;
      case 36:
        _struct._unique___opaque_item_36 = value;
        break;
      case 37:
        _struct._unique___opaque_item_37 = value;
        break;
      case 38:
        _struct._unique___opaque_item_38 = value;
        break;
      case 39:
        _struct._unique___opaque_item_39 = value;
        break;
      case 40:
        _struct._unique___opaque_item_40 = value;
        break;
      case 41:
        _struct._unique___opaque_item_41 = value;
        break;
      case 42:
        _struct._unique___opaque_item_42 = value;
        break;
      case 43:
        _struct._unique___opaque_item_43 = value;
        break;
      case 44:
        _struct._unique___opaque_item_44 = value;
        break;
      case 45:
        _struct._unique___opaque_item_45 = value;
        break;
      case 46:
        _struct._unique___opaque_item_46 = value;
        break;
      case 47:
        _struct._unique___opaque_item_47 = value;
        break;
      case 48:
        _struct._unique___opaque_item_48 = value;
        break;
      case 49:
        _struct._unique___opaque_item_49 = value;
        break;
      case 50:
        _struct._unique___opaque_item_50 = value;
        break;
      case 51:
        _struct._unique___opaque_item_51 = value;
        break;
      case 52:
        _struct._unique___opaque_item_52 = value;
        break;
      case 53:
        _struct._unique___opaque_item_53 = value;
        break;
      case 54:
        _struct._unique___opaque_item_54 = value;
        break;
      case 55:
        _struct._unique___opaque_item_55 = value;
        break;
      case 56:
        _struct._unique___opaque_item_56 = value;
        break;
      case 57:
        _struct._unique___opaque_item_57 = value;
        break;
      case 58:
        _struct._unique___opaque_item_58 = value;
        break;
      case 59:
        _struct._unique___opaque_item_59 = value;
        break;
      case 60:
        _struct._unique___opaque_item_60 = value;
        break;
      case 61:
        _struct._unique___opaque_item_61 = value;
        break;
      case 62:
        _struct._unique___opaque_item_62 = value;
        break;
      case 63:
        _struct._unique___opaque_item_63 = value;
        break;
      case 64:
        _struct._unique___opaque_item_64 = value;
        break;
      case 65:
        _struct._unique___opaque_item_65 = value;
        break;
      case 66:
        _struct._unique___opaque_item_66 = value;
        break;
      case 67:
        _struct._unique___opaque_item_67 = value;
        break;
      case 68:
        _struct._unique___opaque_item_68 = value;
        break;
      case 69:
        _struct._unique___opaque_item_69 = value;
        break;
      case 70:
        _struct._unique___opaque_item_70 = value;
        break;
      case 71:
        _struct._unique___opaque_item_71 = value;
        break;
      case 72:
        _struct._unique___opaque_item_72 = value;
        break;
      case 73:
        _struct._unique___opaque_item_73 = value;
        break;
      case 74:
        _struct._unique___opaque_item_74 = value;
        break;
      case 75:
        _struct._unique___opaque_item_75 = value;
        break;
      case 76:
        _struct._unique___opaque_item_76 = value;
        break;
      case 77:
        _struct._unique___opaque_item_77 = value;
        break;
      case 78:
        _struct._unique___opaque_item_78 = value;
        break;
      case 79:
        _struct._unique___opaque_item_79 = value;
        break;
      case 80:
        _struct._unique___opaque_item_80 = value;
        break;
      case 81:
        _struct._unique___opaque_item_81 = value;
        break;
      case 82:
        _struct._unique___opaque_item_82 = value;
        break;
      case 83:
        _struct._unique___opaque_item_83 = value;
        break;
      case 84:
        _struct._unique___opaque_item_84 = value;
        break;
      case 85:
        _struct._unique___opaque_item_85 = value;
        break;
      case 86:
        _struct._unique___opaque_item_86 = value;
        break;
      case 87:
        _struct._unique___opaque_item_87 = value;
        break;
      case 88:
        _struct._unique___opaque_item_88 = value;
        break;
      case 89:
        _struct._unique___opaque_item_89 = value;
        break;
      case 90:
        _struct._unique___opaque_item_90 = value;
        break;
      case 91:
        _struct._unique___opaque_item_91 = value;
        break;
      case 92:
        _struct._unique___opaque_item_92 = value;
        break;
      case 93:
        _struct._unique___opaque_item_93 = value;
        break;
      case 94:
        _struct._unique___opaque_item_94 = value;
        break;
      case 95:
        _struct._unique___opaque_item_95 = value;
        break;
      case 96:
        _struct._unique___opaque_item_96 = value;
        break;
      case 97:
        _struct._unique___opaque_item_97 = value;
        break;
      case 98:
        _struct._unique___opaque_item_98 = value;
        break;
      case 99:
        _struct._unique___opaque_item_99 = value;
        break;
      case 100:
        _struct._unique___opaque_item_100 = value;
        break;
      case 101:
        _struct._unique___opaque_item_101 = value;
        break;
      case 102:
        _struct._unique___opaque_item_102 = value;
        break;
      case 103:
        _struct._unique___opaque_item_103 = value;
        break;
      case 104:
        _struct._unique___opaque_item_104 = value;
        break;
      case 105:
        _struct._unique___opaque_item_105 = value;
        break;
      case 106:
        _struct._unique___opaque_item_106 = value;
        break;
      case 107:
        _struct._unique___opaque_item_107 = value;
        break;
      case 108:
        _struct._unique___opaque_item_108 = value;
        break;
      case 109:
        _struct._unique___opaque_item_109 = value;
        break;
      case 110:
        _struct._unique___opaque_item_110 = value;
        break;
      case 111:
        _struct._unique___opaque_item_111 = value;
        break;
      case 112:
        _struct._unique___opaque_item_112 = value;
        break;
      case 113:
        _struct._unique___opaque_item_113 = value;
        break;
      case 114:
        _struct._unique___opaque_item_114 = value;
        break;
      case 115:
        _struct._unique___opaque_item_115 = value;
        break;
      case 116:
        _struct._unique___opaque_item_116 = value;
        break;
      case 117:
        _struct._unique___opaque_item_117 = value;
        break;
      case 118:
        _struct._unique___opaque_item_118 = value;
        break;
      case 119:
        _struct._unique___opaque_item_119 = value;
        break;
      case 120:
        _struct._unique___opaque_item_120 = value;
        break;
      case 121:
        _struct._unique___opaque_item_121 = value;
        break;
      case 122:
        _struct._unique___opaque_item_122 = value;
        break;
      case 123:
        _struct._unique___opaque_item_123 = value;
        break;
      case 124:
        _struct._unique___opaque_item_124 = value;
        break;
      case 125:
        _struct._unique___opaque_item_125 = value;
        break;
      case 126:
        _struct._unique___opaque_item_126 = value;
        break;
      case 127:
        _struct._unique___opaque_item_127 = value;
        break;
      case 128:
        _struct._unique___opaque_item_128 = value;
        break;
      case 129:
        _struct._unique___opaque_item_129 = value;
        break;
      case 130:
        _struct._unique___opaque_item_130 = value;
        break;
      case 131:
        _struct._unique___opaque_item_131 = value;
        break;
      case 132:
        _struct._unique___opaque_item_132 = value;
        break;
      case 133:
        _struct._unique___opaque_item_133 = value;
        break;
      case 134:
        _struct._unique___opaque_item_134 = value;
        break;
      case 135:
        _struct._unique___opaque_item_135 = value;
        break;
      case 136:
        _struct._unique___opaque_item_136 = value;
        break;
      case 137:
        _struct._unique___opaque_item_137 = value;
        break;
      case 138:
        _struct._unique___opaque_item_138 = value;
        break;
      case 139:
        _struct._unique___opaque_item_139 = value;
        break;
      case 140:
        _struct._unique___opaque_item_140 = value;
        break;
      case 141:
        _struct._unique___opaque_item_141 = value;
        break;
      case 142:
        _struct._unique___opaque_item_142 = value;
        break;
      case 143:
        _struct._unique___opaque_item_143 = value;
        break;
      case 144:
        _struct._unique___opaque_item_144 = value;
        break;
      case 145:
        _struct._unique___opaque_item_145 = value;
        break;
      case 146:
        _struct._unique___opaque_item_146 = value;
        break;
      case 147:
        _struct._unique___opaque_item_147 = value;
        break;
      case 148:
        _struct._unique___opaque_item_148 = value;
        break;
      case 149:
        _struct._unique___opaque_item_149 = value;
        break;
      case 150:
        _struct._unique___opaque_item_150 = value;
        break;
      case 151:
        _struct._unique___opaque_item_151 = value;
        break;
      case 152:
        _struct._unique___opaque_item_152 = value;
        break;
      case 153:
        _struct._unique___opaque_item_153 = value;
        break;
      case 154:
        _struct._unique___opaque_item_154 = value;
        break;
      case 155:
        _struct._unique___opaque_item_155 = value;
        break;
      case 156:
        _struct._unique___opaque_item_156 = value;
        break;
      case 157:
        _struct._unique___opaque_item_157 = value;
        break;
      case 158:
        _struct._unique___opaque_item_158 = value;
        break;
      case 159:
        _struct._unique___opaque_item_159 = value;
        break;
      case 160:
        _struct._unique___opaque_item_160 = value;
        break;
      case 161:
        _struct._unique___opaque_item_161 = value;
        break;
      case 162:
        _struct._unique___opaque_item_162 = value;
        break;
      case 163:
        _struct._unique___opaque_item_163 = value;
        break;
      case 164:
        _struct._unique___opaque_item_164 = value;
        break;
      case 165:
        _struct._unique___opaque_item_165 = value;
        break;
      case 166:
        _struct._unique___opaque_item_166 = value;
        break;
      case 167:
        _struct._unique___opaque_item_167 = value;
        break;
      case 168:
        _struct._unique___opaque_item_168 = value;
        break;
      case 169:
        _struct._unique___opaque_item_169 = value;
        break;
      case 170:
        _struct._unique___opaque_item_170 = value;
        break;
      case 171:
        _struct._unique___opaque_item_171 = value;
        break;
      case 172:
        _struct._unique___opaque_item_172 = value;
        break;
      case 173:
        _struct._unique___opaque_item_173 = value;
        break;
      case 174:
        _struct._unique___opaque_item_174 = value;
        break;
      case 175:
        _struct._unique___opaque_item_175 = value;
        break;
      case 176:
        _struct._unique___opaque_item_176 = value;
        break;
      case 177:
        _struct._unique___opaque_item_177 = value;
        break;
      case 178:
        _struct._unique___opaque_item_178 = value;
        break;
      case 179:
        _struct._unique___opaque_item_179 = value;
        break;
      case 180:
        _struct._unique___opaque_item_180 = value;
        break;
      case 181:
        _struct._unique___opaque_item_181 = value;
        break;
      case 182:
        _struct._unique___opaque_item_182 = value;
        break;
      case 183:
        _struct._unique___opaque_item_183 = value;
        break;
      case 184:
        _struct._unique___opaque_item_184 = value;
        break;
      case 185:
        _struct._unique___opaque_item_185 = value;
        break;
      case 186:
        _struct._unique___opaque_item_186 = value;
        break;
      case 187:
        _struct._unique___opaque_item_187 = value;
        break;
      case 188:
        _struct._unique___opaque_item_188 = value;
        break;
      case 189:
        _struct._unique___opaque_item_189 = value;
        break;
      case 190:
        _struct._unique___opaque_item_190 = value;
        break;
      case 191:
        _struct._unique___opaque_item_191 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

class _opaque_pthread_rwlockattr_t extends ffi.Struct {
  @ffi.Int64()
  external int __sig;

  @ffi.Int8()
  external int _unique___opaque_item_0;
  @ffi.Int8()
  external int _unique___opaque_item_1;
  @ffi.Int8()
  external int _unique___opaque_item_2;
  @ffi.Int8()
  external int _unique___opaque_item_3;
  @ffi.Int8()
  external int _unique___opaque_item_4;
  @ffi.Int8()
  external int _unique___opaque_item_5;
  @ffi.Int8()
  external int _unique___opaque_item_6;
  @ffi.Int8()
  external int _unique___opaque_item_7;
  @ffi.Int8()
  external int _unique___opaque_item_8;
  @ffi.Int8()
  external int _unique___opaque_item_9;
  @ffi.Int8()
  external int _unique___opaque_item_10;
  @ffi.Int8()
  external int _unique___opaque_item_11;
  @ffi.Int8()
  external int _unique___opaque_item_12;
  @ffi.Int8()
  external int _unique___opaque_item_13;
  @ffi.Int8()
  external int _unique___opaque_item_14;
  @ffi.Int8()
  external int _unique___opaque_item_15;

  /// Helper for array `__opaque`.
  _ArrayHelper__opaque_pthread_rwlockattr_t___opaque_level0 get __opaque =>
      _ArrayHelper__opaque_pthread_rwlockattr_t___opaque_level0(
          this, [16], 0, 0);
}

/// Helper for array `__opaque` in struct `_opaque_pthread_rwlockattr_t`.
class _ArrayHelper__opaque_pthread_rwlockattr_t___opaque_level0 {
  _ArrayHelper__opaque_pthread_rwlockattr_t___opaque_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  final _opaque_pthread_rwlockattr_t _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique___opaque_item_0;
      case 1:
        return _struct._unique___opaque_item_1;
      case 2:
        return _struct._unique___opaque_item_2;
      case 3:
        return _struct._unique___opaque_item_3;
      case 4:
        return _struct._unique___opaque_item_4;
      case 5:
        return _struct._unique___opaque_item_5;
      case 6:
        return _struct._unique___opaque_item_6;
      case 7:
        return _struct._unique___opaque_item_7;
      case 8:
        return _struct._unique___opaque_item_8;
      case 9:
        return _struct._unique___opaque_item_9;
      case 10:
        return _struct._unique___opaque_item_10;
      case 11:
        return _struct._unique___opaque_item_11;
      case 12:
        return _struct._unique___opaque_item_12;
      case 13:
        return _struct._unique___opaque_item_13;
      case 14:
        return _struct._unique___opaque_item_14;
      case 15:
        return _struct._unique___opaque_item_15;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique___opaque_item_0 = value;
        break;
      case 1:
        _struct._unique___opaque_item_1 = value;
        break;
      case 2:
        _struct._unique___opaque_item_2 = value;
        break;
      case 3:
        _struct._unique___opaque_item_3 = value;
        break;
      case 4:
        _struct._unique___opaque_item_4 = value;
        break;
      case 5:
        _struct._unique___opaque_item_5 = value;
        break;
      case 6:
        _struct._unique___opaque_item_6 = value;
        break;
      case 7:
        _struct._unique___opaque_item_7 = value;
        break;
      case 8:
        _struct._unique___opaque_item_8 = value;
        break;
      case 9:
        _struct._unique___opaque_item_9 = value;
        break;
      case 10:
        _struct._unique___opaque_item_10 = value;
        break;
      case 11:
        _struct._unique___opaque_item_11 = value;
        break;
      case 12:
        _struct._unique___opaque_item_12 = value;
        break;
      case 13:
        _struct._unique___opaque_item_13 = value;
        break;
      case 14:
        _struct._unique___opaque_item_14 = value;
        break;
      case 15:
        _struct._unique___opaque_item_15 = value;
        break;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}
