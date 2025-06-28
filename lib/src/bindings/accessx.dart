/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: non_constant_identifier_names

part of 'mac.dart';

final class accessx_descriptor extends ffi.Struct {
  @ffi.Uint32()
  external int ad_name_offset;

  @ffi.Int32()
  external int ad_flags;

  @ffi.Int32()
  external int _unique_ad_pad_item_0;
  @ffi.Int32()
  external int _unique_ad_pad_item_1;

  /// Helper for array `ad_pad`.
  ArrayHelper_accessx_descriptor_ad_pad_level0 get ad_pad =>
      ArrayHelper_accessx_descriptor_ad_pad_level0(this, [2], 0, 0);
}

/// Helper for array `ad_pad` in struct `accessx_descriptor`.
class ArrayHelper_accessx_descriptor_ad_pad_level0 {
  ArrayHelper_accessx_descriptor_ad_pad_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final accessx_descriptor _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_ad_pad_item_0;
      case 1:
        return _struct._unique_ad_pad_item_1;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_ad_pad_item_0 = value;
      case 1:
        _struct._unique_ad_pad_item_1 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}

final class fd_set extends ffi.Struct {
  @ffi.Int32()
  external int _unique_fds_bits_item_0;
  @ffi.Int32()
  external int _unique_fds_bits_item_1;
  @ffi.Int32()
  external int _unique_fds_bits_item_2;
  @ffi.Int32()
  external int _unique_fds_bits_item_3;
  @ffi.Int32()
  external int _unique_fds_bits_item_4;
  @ffi.Int32()
  external int _unique_fds_bits_item_5;
  @ffi.Int32()
  external int _unique_fds_bits_item_6;
  @ffi.Int32()
  external int _unique_fds_bits_item_7;
  @ffi.Int32()
  external int _unique_fds_bits_item_8;
  @ffi.Int32()
  external int _unique_fds_bits_item_9;
  @ffi.Int32()
  external int _unique_fds_bits_item_10;
  @ffi.Int32()
  external int _unique_fds_bits_item_11;
  @ffi.Int32()
  external int _unique_fds_bits_item_12;
  @ffi.Int32()
  external int _unique_fds_bits_item_13;
  @ffi.Int32()
  external int _unique_fds_bits_item_14;
  @ffi.Int32()
  external int _unique_fds_bits_item_15;
  @ffi.Int32()
  external int _unique_fds_bits_item_16;
  @ffi.Int32()
  external int _unique_fds_bits_item_17;
  @ffi.Int32()
  external int _unique_fds_bits_item_18;
  @ffi.Int32()
  external int _unique_fds_bits_item_19;
  @ffi.Int32()
  external int _unique_fds_bits_item_20;
  @ffi.Int32()
  external int _unique_fds_bits_item_21;
  @ffi.Int32()
  external int _unique_fds_bits_item_22;
  @ffi.Int32()
  external int _unique_fds_bits_item_23;
  @ffi.Int32()
  external int _unique_fds_bits_item_24;
  @ffi.Int32()
  external int _unique_fds_bits_item_25;
  @ffi.Int32()
  external int _unique_fds_bits_item_26;
  @ffi.Int32()
  external int _unique_fds_bits_item_27;
  @ffi.Int32()
  external int _unique_fds_bits_item_28;
  @ffi.Int32()
  external int _unique_fds_bits_item_29;
  @ffi.Int32()
  external int _unique_fds_bits_item_30;
  @ffi.Int32()
  external int _unique_fds_bits_item_31;

  /// Helper for array `fds_bits`.
  ArrayHelper_fd_set_fds_bits_level0 get fds_bits =>
      ArrayHelper_fd_set_fds_bits_level0(this, [32], 0, 0);
}

/// Helper for array `fds_bits` in struct `fd_set`.
class ArrayHelper_fd_set_fds_bits_level0 {
  ArrayHelper_fd_set_fds_bits_level0(
      this._struct, this.dimensions, this.level, this._absoluteIndex);
  void _checkBounds(int index) {
    if (index >= length || index < 0) {
      throw RangeError(
          'Dimension $level: index not in range 0..$length exclusive.');
    }
  }

  final fd_set _struct;
  final List<int> dimensions;
  final int level;
  final int _absoluteIndex;
  int get length => dimensions[level];

  int operator [](int index) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        return _struct._unique_fds_bits_item_0;
      case 1:
        return _struct._unique_fds_bits_item_1;
      case 2:
        return _struct._unique_fds_bits_item_2;
      case 3:
        return _struct._unique_fds_bits_item_3;
      case 4:
        return _struct._unique_fds_bits_item_4;
      case 5:
        return _struct._unique_fds_bits_item_5;
      case 6:
        return _struct._unique_fds_bits_item_6;
      case 7:
        return _struct._unique_fds_bits_item_7;
      case 8:
        return _struct._unique_fds_bits_item_8;
      case 9:
        return _struct._unique_fds_bits_item_9;
      case 10:
        return _struct._unique_fds_bits_item_10;
      case 11:
        return _struct._unique_fds_bits_item_11;
      case 12:
        return _struct._unique_fds_bits_item_12;
      case 13:
        return _struct._unique_fds_bits_item_13;
      case 14:
        return _struct._unique_fds_bits_item_14;
      case 15:
        return _struct._unique_fds_bits_item_15;
      case 16:
        return _struct._unique_fds_bits_item_16;
      case 17:
        return _struct._unique_fds_bits_item_17;
      case 18:
        return _struct._unique_fds_bits_item_18;
      case 19:
        return _struct._unique_fds_bits_item_19;
      case 20:
        return _struct._unique_fds_bits_item_20;
      case 21:
        return _struct._unique_fds_bits_item_21;
      case 22:
        return _struct._unique_fds_bits_item_22;
      case 23:
        return _struct._unique_fds_bits_item_23;
      case 24:
        return _struct._unique_fds_bits_item_24;
      case 25:
        return _struct._unique_fds_bits_item_25;
      case 26:
        return _struct._unique_fds_bits_item_26;
      case 27:
        return _struct._unique_fds_bits_item_27;
      case 28:
        return _struct._unique_fds_bits_item_28;
      case 29:
        return _struct._unique_fds_bits_item_29;
      case 30:
        return _struct._unique_fds_bits_item_30;
      case 31:
        return _struct._unique_fds_bits_item_31;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }

  void operator []=(int index, int value) {
    _checkBounds(index);
    switch (_absoluteIndex + index) {
      case 0:
        _struct._unique_fds_bits_item_0 = value;
      case 1:
        _struct._unique_fds_bits_item_1 = value;
      case 2:
        _struct._unique_fds_bits_item_2 = value;
      case 3:
        _struct._unique_fds_bits_item_3 = value;
      case 4:
        _struct._unique_fds_bits_item_4 = value;
      case 5:
        _struct._unique_fds_bits_item_5 = value;
      case 6:
        _struct._unique_fds_bits_item_6 = value;
      case 7:
        _struct._unique_fds_bits_item_7 = value;
      case 8:
        _struct._unique_fds_bits_item_8 = value;
      case 9:
        _struct._unique_fds_bits_item_9 = value;
      case 10:
        _struct._unique_fds_bits_item_10 = value;
      case 11:
        _struct._unique_fds_bits_item_11 = value;
      case 12:
        _struct._unique_fds_bits_item_12 = value;
      case 13:
        _struct._unique_fds_bits_item_13 = value;
      case 14:
        _struct._unique_fds_bits_item_14 = value;
      case 15:
        _struct._unique_fds_bits_item_15 = value;
      case 16:
        _struct._unique_fds_bits_item_16 = value;
      case 17:
        _struct._unique_fds_bits_item_17 = value;
      case 18:
        _struct._unique_fds_bits_item_18 = value;
      case 19:
        _struct._unique_fds_bits_item_19 = value;
      case 20:
        _struct._unique_fds_bits_item_20 = value;
      case 21:
        _struct._unique_fds_bits_item_21 = value;
      case 22:
        _struct._unique_fds_bits_item_22 = value;
      case 23:
        _struct._unique_fds_bits_item_23 = value;
      case 24:
        _struct._unique_fds_bits_item_24 = value;
      case 25:
        _struct._unique_fds_bits_item_25 = value;
      case 26:
        _struct._unique_fds_bits_item_26 = value;
      case 27:
        _struct._unique_fds_bits_item_27 = value;
      case 28:
        _struct._unique_fds_bits_item_28 = value;
      case 29:
        _struct._unique_fds_bits_item_29 = value;
      case 30:
        _struct._unique_fds_bits_item_30 = value;
      case 31:
        _struct._unique_fds_bits_item_31 = value;
      default:
        throw Exception('Invalid Array Helper generated.');
    }
  }
}
