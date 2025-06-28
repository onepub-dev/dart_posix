/*
 * Copyright (c) 2025 S. Brett Sutton 2022+
 *
 * This software is licensed under the MIT License.
 * SPDX-License-Identifier: MIT
 */

// ignore_for_file: non_constant_identifier_names
part of 'mac.dart';

// class _opaque_pthread_t extends ffi.Struct {
//   @ffi.Int64()
//   // ignore: unused_field
//   external int __sig;

//   // ignore: unused_field
//   external ffi.Pointer<__darwin_pthread_handler_rec> __cleanup_stack;

//   @ffi.Int8()
//   external int _unique___opaque_item_0;
//   @ffi.Int8()
//   external int _unique___opaque_item_1;
//   @ffi.Int8()
//   external int _unique___opaque_item_2;
//   @ffi.Int8()
//   external int _unique___opaque_item_3;
//   @ffi.Int8()
//   external int _unique___opaque_item_4;
//   @ffi.Int8()
//   external int _unique___opaque_item_5;
//   @ffi.Int8()
//   external int _unique___opaque_item_6;
//   @ffi.Int8()
//   external int _unique___opaque_item_7;
//   @ffi.Int8()
//   external int _unique___opaque_item_8;
//   @ffi.Int8()
//   external int _unique___opaque_item_9;
//   @ffi.Int8()
//   external int _unique___opaque_item_10;
//   @ffi.Int8()
//   external int _unique___opaque_item_11;
//   @ffi.Int8()
//   external int _unique___opaque_item_12;
//   @ffi.Int8()
//   external int _unique___opaque_item_13;
//   @ffi.Int8()
//   external int _unique___opaque_item_14;
//   @ffi.Int8()
//   external int _unique___opaque_item_15;
//   @ffi.Int8()
//   external int _unique___opaque_item_16;
//   @ffi.Int8()
//   external int _unique___opaque_item_17;
//   @ffi.Int8()
//   external int _unique___opaque_item_18;
//   @ffi.Int8()
//   external int _unique___opaque_item_19;
//   @ffi.Int8()
//   external int _unique___opaque_item_20;
//   @ffi.Int8()
//   external int _unique___opaque_item_21;
//   @ffi.Int8()
//   external int _unique___opaque_item_22;
//   @ffi.Int8()
//   external int _unique___opaque_item_23;
//   @ffi.Int8()
//   external int _unique___opaque_item_24;
//   @ffi.Int8()
//   external int _unique___opaque_item_25;
//   @ffi.Int8()
//   external int _unique___opaque_item_26;
//   @ffi.Int8()
//   external int _unique___opaque_item_27;
//   @ffi.Int8()
//   external int _unique___opaque_item_28;
//   @ffi.Int8()
//   external int _unique___opaque_item_29;
//   @ffi.Int8()
//   external int _unique___opaque_item_30;
//   @ffi.Int8()
//   external int _unique___opaque_item_31;
//   @ffi.Int8()
//   external int _unique___opaque_item_32;
//   @ffi.Int8()
//   external int _unique___opaque_item_33;
//   @ffi.Int8()
//   external int _unique___opaque_item_34;
//   @ffi.Int8()
//   external int _unique___opaque_item_35;
//   @ffi.Int8()
//   external int _unique___opaque_item_36;
//   @ffi.Int8()
//   external int _unique___opaque_item_37;
//   @ffi.Int8()
//   external int _unique___opaque_item_38;
//   @ffi.Int8()
//   external int _unique___opaque_item_39;
//   @ffi.Int8()
//   external int _unique___opaque_item_40;
//   @ffi.Int8()
//   external int _unique___opaque_item_41;
//   @ffi.Int8()
//   external int _unique___opaque_item_42;
//   @ffi.Int8()
//   external int _unique___opaque_item_43;
//   @ffi.Int8()
//   external int _unique___opaque_item_44;
//   @ffi.Int8()
//   external int _unique___opaque_item_45;
//   @ffi.Int8()
//   external int _unique___opaque_item_46;
//   @ffi.Int8()
//   external int _unique___opaque_item_47;
//   @ffi.Int8()
//   external int _unique___opaque_item_48;
//   @ffi.Int8()
//   external int _unique___opaque_item_49;
//   @ffi.Int8()
//   external int _unique___opaque_item_50;
//   @ffi.Int8()
//   external int _unique___opaque_item_51;
//   @ffi.Int8()
//   external int _unique___opaque_item_52;
//   @ffi.Int8()
//   external int _unique___opaque_item_53;
//   @ffi.Int8()
//   external int _unique___opaque_item_54;
//   @ffi.Int8()
//   external int _unique___opaque_item_55;
//   @ffi.Int8()
//   external int _unique___opaque_item_56;
//   @ffi.Int8()
//   external int _unique___opaque_item_57;
//   @ffi.Int8()
//   external int _unique___opaque_item_58;
//   @ffi.Int8()
//   external int _unique___opaque_item_59;
//   @ffi.Int8()
//   external int _unique___opaque_item_60;
//   @ffi.Int8()
//   external int _unique___opaque_item_61;
//   @ffi.Int8()
//   external int _unique___opaque_item_62;
//   @ffi.Int8()
//   external int _unique___opaque_item_63;
//   @ffi.Int8()
//   external int _unique___opaque_item_64;
//   @ffi.Int8()
//   external int _unique___opaque_item_65;
//   @ffi.Int8()
//   external int _unique___opaque_item_66;
//   @ffi.Int8()
//   external int _unique___opaque_item_67;
//   @ffi.Int8()
//   external int _unique___opaque_item_68;
//   @ffi.Int8()
//   external int _unique___opaque_item_69;
//   @ffi.Int8()
//   external int _unique___opaque_item_70;
//   @ffi.Int8()
//   external int _unique___opaque_item_71;
//   @ffi.Int8()
//   external int _unique___opaque_item_72;
//   @ffi.Int8()
//   external int _unique___opaque_item_73;
//   @ffi.Int8()
//   external int _unique___opaque_item_74;
//   @ffi.Int8()
//   external int _unique___opaque_item_75;
//   @ffi.Int8()
//   external int _unique___opaque_item_76;
//   @ffi.Int8()
//   external int _unique___opaque_item_77;
//   @ffi.Int8()
//   external int _unique___opaque_item_78;
//   @ffi.Int8()
//   external int _unique___opaque_item_79;
//   @ffi.Int8()
//   external int _unique___opaque_item_80;
//   @ffi.Int8()
//   external int _unique___opaque_item_81;
//   @ffi.Int8()
//   external int _unique___opaque_item_82;
//   @ffi.Int8()
//   external int _unique___opaque_item_83;
//   @ffi.Int8()
//   external int _unique___opaque_item_84;
//   @ffi.Int8()
//   external int _unique___opaque_item_85;
//   @ffi.Int8()
//   external int _unique___opaque_item_86;
//   @ffi.Int8()
//   external int _unique___opaque_item_87;
//   @ffi.Int8()
//   external int _unique___opaque_item_88;
//   @ffi.Int8()
//   external int _unique___opaque_item_89;
//   @ffi.Int8()
//   external int _unique___opaque_item_90;
//   @ffi.Int8()
//   external int _unique___opaque_item_91;
//   @ffi.Int8()
//   external int _unique___opaque_item_92;
//   @ffi.Int8()
//   external int _unique___opaque_item_93;
//   @ffi.Int8()
//   external int _unique___opaque_item_94;
//   @ffi.Int8()
//   external int _unique___opaque_item_95;
//   @ffi.Int8()
//   external int _unique___opaque_item_96;
//   @ffi.Int8()
//   external int _unique___opaque_item_97;
//   @ffi.Int8()
//   external int _unique___opaque_item_98;
//   @ffi.Int8()
//   external int _unique___opaque_item_99;
//   @ffi.Int8()
//   external int _unique___opaque_item_100;
//   @ffi.Int8()
//   external int _unique___opaque_item_101;
//   @ffi.Int8()
//   external int _unique___opaque_item_102;
//   @ffi.Int8()
//   external int _unique___opaque_item_103;
//   @ffi.Int8()
//   external int _unique___opaque_item_104;
//   @ffi.Int8()
//   external int _unique___opaque_item_105;
//   @ffi.Int8()
//   external int _unique___opaque_item_106;
//   @ffi.Int8()
//   external int _unique___opaque_item_107;
//   @ffi.Int8()
//   external int _unique___opaque_item_108;
//   @ffi.Int8()
//   external int _unique___opaque_item_109;
//   @ffi.Int8()
//   external int _unique___opaque_item_110;
//   @ffi.Int8()
//   external int _unique___opaque_item_111;
//   @ffi.Int8()
//   external int _unique___opaque_item_112;
//   @ffi.Int8()
//   external int _unique___opaque_item_113;
//   @ffi.Int8()
//   external int _unique___opaque_item_114;
//   @ffi.Int8()
//   external int _unique___opaque_item_115;
//   @ffi.Int8()
//   external int _unique___opaque_item_116;
//   @ffi.Int8()
//   external int _unique___opaque_item_117;
//   @ffi.Int8()
//   external int _unique___opaque_item_118;
//   @ffi.Int8()
//   external int _unique___opaque_item_119;
//   @ffi.Int8()
//   external int _unique___opaque_item_120;
//   @ffi.Int8()
//   external int _unique___opaque_item_121;
//   @ffi.Int8()
//   external int _unique___opaque_item_122;
//   @ffi.Int8()
//   external int _unique___opaque_item_123;
//   @ffi.Int8()
//   external int _unique___opaque_item_124;
//   @ffi.Int8()
//   external int _unique___opaque_item_125;
//   @ffi.Int8()
//   external int _unique___opaque_item_126;
//   @ffi.Int8()
//   external int _unique___opaque_item_127;
//   @ffi.Int8()
//   external int _unique___opaque_item_128;
//   @ffi.Int8()
//   external int _unique___opaque_item_129;
//   @ffi.Int8()
//   external int _unique___opaque_item_130;
//   @ffi.Int8()
//   external int _unique___opaque_item_131;
//   @ffi.Int8()
//   external int _unique___opaque_item_132;
//   @ffi.Int8()
//   external int _unique___opaque_item_133;
//   @ffi.Int8()
//   external int _unique___opaque_item_134;
//   @ffi.Int8()
//   external int _unique___opaque_item_135;
//   @ffi.Int8()
//   external int _unique___opaque_item_136;
//   @ffi.Int8()
//   external int _unique___opaque_item_137;
//   @ffi.Int8()
//   external int _unique___opaque_item_138;
//   @ffi.Int8()
//   external int _unique___opaque_item_139;
//   @ffi.Int8()
//   external int _unique___opaque_item_140;
//   @ffi.Int8()
//   external int _unique___opaque_item_141;
//   @ffi.Int8()
//   external int _unique___opaque_item_142;
//   @ffi.Int8()
//   external int _unique___opaque_item_143;
//   @ffi.Int8()
//   external int _unique___opaque_item_144;
//   @ffi.Int8()
//   external int _unique___opaque_item_145;
//   @ffi.Int8()
//   external int _unique___opaque_item_146;
//   @ffi.Int8()
//   external int _unique___opaque_item_147;
//   @ffi.Int8()
//   external int _unique___opaque_item_148;
//   @ffi.Int8()
//   external int _unique___opaque_item_149;
//   @ffi.Int8()
//   external int _unique___opaque_item_150;
//   @ffi.Int8()
//   external int _unique___opaque_item_151;
//   @ffi.Int8()
//   external int _unique___opaque_item_152;
//   @ffi.Int8()
//   external int _unique___opaque_item_153;
//   @ffi.Int8()
//   external int _unique___opaque_item_154;
//   @ffi.Int8()
//   external int _unique___opaque_item_155;
//   @ffi.Int8()
//   external int _unique___opaque_item_156;
//   @ffi.Int8()
//   external int _unique___opaque_item_157;
//   @ffi.Int8()
//   external int _unique___opaque_item_158;
//   @ffi.Int8()
//   external int _unique___opaque_item_159;
//   @ffi.Int8()
//   external int _unique___opaque_item_160;
//   @ffi.Int8()
//   external int _unique___opaque_item_161;
//   @ffi.Int8()
//   external int _unique___opaque_item_162;
//   @ffi.Int8()
//   external int _unique___opaque_item_163;
//   @ffi.Int8()
//   external int _unique___opaque_item_164;
//   @ffi.Int8()
//   external int _unique___opaque_item_165;
//   @ffi.Int8()
//   external int _unique___opaque_item_166;
//   @ffi.Int8()
//   external int _unique___opaque_item_167;
//   @ffi.Int8()
//   external int _unique___opaque_item_168;
//   @ffi.Int8()
//   external int _unique___opaque_item_169;
//   @ffi.Int8()
//   external int _unique___opaque_item_170;
//   @ffi.Int8()
//   external int _unique___opaque_item_171;
//   @ffi.Int8()
//   external int _unique___opaque_item_172;
//   @ffi.Int8()
//   external int _unique___opaque_item_173;
//   @ffi.Int8()
//   external int _unique___opaque_item_174;
//   @ffi.Int8()
//   external int _unique___opaque_item_175;
//   @ffi.Int8()
//   external int _unique___opaque_item_176;
//   @ffi.Int8()
//   external int _unique___opaque_item_177;
//   @ffi.Int8()
//   external int _unique___opaque_item_178;
//   @ffi.Int8()
//   external int _unique___opaque_item_179;
//   @ffi.Int8()
//   external int _unique___opaque_item_180;
//   @ffi.Int8()
//   external int _unique___opaque_item_181;
//   @ffi.Int8()
//   external int _unique___opaque_item_182;
//   @ffi.Int8()
//   external int _unique___opaque_item_183;
//   @ffi.Int8()
//   external int _unique___opaque_item_184;
//   @ffi.Int8()
//   external int _unique___opaque_item_185;
//   @ffi.Int8()
//   external int _unique___opaque_item_186;
//   @ffi.Int8()
//   external int _unique___opaque_item_187;
//   @ffi.Int8()
//   external int _unique___opaque_item_188;
//   @ffi.Int8()
//   external int _unique___opaque_item_189;
//   @ffi.Int8()
//   external int _unique___opaque_item_190;
//   @ffi.Int8()
//   external int _unique___opaque_item_191;
//   @ffi.Int8()
//   external int _unique___opaque_item_192;
//   @ffi.Int8()
//   external int _unique___opaque_item_193;
//   @ffi.Int8()
//   external int _unique___opaque_item_194;
//   @ffi.Int8()
//   external int _unique___opaque_item_195;
//   @ffi.Int8()
//   external int _unique___opaque_item_196;
//   @ffi.Int8()
//   external int _unique___opaque_item_197;
//   @ffi.Int8()
//   external int _unique___opaque_item_198;
//   @ffi.Int8()
//   external int _unique___opaque_item_199;
//   @ffi.Int8()
//   external int _unique___opaque_item_200;
//   @ffi.Int8()
//   external int _unique___opaque_item_201;
//   @ffi.Int8()
//   external int _unique___opaque_item_202;
//   @ffi.Int8()
//   external int _unique___opaque_item_203;
//   @ffi.Int8()
//   external int _unique___opaque_item_204;
//   @ffi.Int8()
//   external int _unique___opaque_item_205;
//   @ffi.Int8()
//   external int _unique___opaque_item_206;
//   @ffi.Int8()
//   external int _unique___opaque_item_207;
//   @ffi.Int8()
//   external int _unique___opaque_item_208;
//   @ffi.Int8()
//   external int _unique___opaque_item_209;
//   @ffi.Int8()
//   external int _unique___opaque_item_210;
//   @ffi.Int8()
//   external int _unique___opaque_item_211;
//   @ffi.Int8()
//   external int _unique___opaque_item_212;
//   @ffi.Int8()
//   external int _unique___opaque_item_213;
//   @ffi.Int8()
//   external int _unique___opaque_item_214;
//   @ffi.Int8()
//   external int _unique___opaque_item_215;
//   @ffi.Int8()
//   external int _unique___opaque_item_216;
//   @ffi.Int8()
//   external int _unique___opaque_item_217;
//   @ffi.Int8()
//   external int _unique___opaque_item_218;
//   @ffi.Int8()
//   external int _unique___opaque_item_219;
//   @ffi.Int8()
//   external int _unique___opaque_item_220;
//   @ffi.Int8()
//   external int _unique___opaque_item_221;
//   @ffi.Int8()
//   external int _unique___opaque_item_222;
//   @ffi.Int8()
//   external int _unique___opaque_item_223;
//   @ffi.Int8()
//   external int _unique___opaque_item_224;
//   @ffi.Int8()
//   external int _unique___opaque_item_225;
//   @ffi.Int8()
//   external int _unique___opaque_item_226;
//   @ffi.Int8()
//   external int _unique___opaque_item_227;
//   @ffi.Int8()
//   external int _unique___opaque_item_228;
//   @ffi.Int8()
//   external int _unique___opaque_item_229;
//   @ffi.Int8()
//   external int _unique___opaque_item_230;
//   @ffi.Int8()
//   external int _unique___opaque_item_231;
//   @ffi.Int8()
//   external int _unique___opaque_item_232;
//   @ffi.Int8()
//   external int _unique___opaque_item_233;
//   @ffi.Int8()
//   external int _unique___opaque_item_234;
//   @ffi.Int8()
//   external int _unique___opaque_item_235;
//   @ffi.Int8()
//   external int _unique___opaque_item_236;
//   @ffi.Int8()
//   external int _unique___opaque_item_237;
//   @ffi.Int8()
//   external int _unique___opaque_item_238;
//   @ffi.Int8()
//   external int _unique___opaque_item_239;
//   @ffi.Int8()
//   external int _unique___opaque_item_240;
//   @ffi.Int8()
//   external int _unique___opaque_item_241;
//   @ffi.Int8()
//   external int _unique___opaque_item_242;
//   @ffi.Int8()
//   external int _unique___opaque_item_243;
//   @ffi.Int8()
//   external int _unique___opaque_item_244;
//   @ffi.Int8()
//   external int _unique___opaque_item_245;
//   @ffi.Int8()
//   external int _unique___opaque_item_246;
//   @ffi.Int8()
//   external int _unique___opaque_item_247;
//   @ffi.Int8()
//   external int _unique___opaque_item_248;
//   @ffi.Int8()
//   external int _unique___opaque_item_249;
//   @ffi.Int8()
//   external int _unique___opaque_item_250;
//   @ffi.Int8()
//   external int _unique___opaque_item_251;
//   @ffi.Int8()
//   external int _unique___opaque_item_252;
//   @ffi.Int8()
//   external int _unique___opaque_item_253;
//   @ffi.Int8()
//   external int _unique___opaque_item_254;
//   @ffi.Int8()
//   external int _unique___opaque_item_255;
//   @ffi.Int8()
//   external int _unique___opaque_item_256;
//   @ffi.Int8()
//   external int _unique___opaque_item_257;
//   @ffi.Int8()
//   external int _unique___opaque_item_258;
//   @ffi.Int8()
//   external int _unique___opaque_item_259;
//   @ffi.Int8()
//   external int _unique___opaque_item_260;
//   @ffi.Int8()
//   external int _unique___opaque_item_261;
//   @ffi.Int8()
//   external int _unique___opaque_item_262;
//   @ffi.Int8()
//   external int _unique___opaque_item_263;
//   @ffi.Int8()
//   external int _unique___opaque_item_264;
//   @ffi.Int8()
//   external int _unique___opaque_item_265;
//   @ffi.Int8()
//   external int _unique___opaque_item_266;
//   @ffi.Int8()
//   external int _unique___opaque_item_267;
//   @ffi.Int8()
//   external int _unique___opaque_item_268;
//   @ffi.Int8()
//   external int _unique___opaque_item_269;
//   @ffi.Int8()
//   external int _unique___opaque_item_270;
//   @ffi.Int8()
//   external int _unique___opaque_item_271;
//   @ffi.Int8()
//   external int _unique___opaque_item_272;
//   @ffi.Int8()
//   external int _unique___opaque_item_273;
//   @ffi.Int8()
//   external int _unique___opaque_item_274;
//   @ffi.Int8()
//   external int _unique___opaque_item_275;
//   @ffi.Int8()
//   external int _unique___opaque_item_276;
//   @ffi.Int8()
//   external int _unique___opaque_item_277;
//   @ffi.Int8()
//   external int _unique___opaque_item_278;
//   @ffi.Int8()
//   external int _unique___opaque_item_279;
//   @ffi.Int8()
//   external int _unique___opaque_item_280;
//   @ffi.Int8()
//   external int _unique___opaque_item_281;
//   @ffi.Int8()
//   external int _unique___opaque_item_282;
//   @ffi.Int8()
//   external int _unique___opaque_item_283;
//   @ffi.Int8()
//   external int _unique___opaque_item_284;
//   @ffi.Int8()
//   external int _unique___opaque_item_285;
//   @ffi.Int8()
//   external int _unique___opaque_item_286;
//   @ffi.Int8()
//   external int _unique___opaque_item_287;
//   @ffi.Int8()
//   external int _unique___opaque_item_288;
//   @ffi.Int8()
//   external int _unique___opaque_item_289;
//   @ffi.Int8()
//   external int _unique___opaque_item_290;
//   @ffi.Int8()
//   external int _unique___opaque_item_291;
//   @ffi.Int8()
//   external int _unique___opaque_item_292;
//   @ffi.Int8()
//   external int _unique___opaque_item_293;
//   @ffi.Int8()
//   external int _unique___opaque_item_294;
//   @ffi.Int8()
//   external int _unique___opaque_item_295;
//   @ffi.Int8()
//   external int _unique___opaque_item_296;
//   @ffi.Int8()
//   external int _unique___opaque_item_297;
//   @ffi.Int8()
//   external int _unique___opaque_item_298;
//   @ffi.Int8()
//   external int _unique___opaque_item_299;
//   @ffi.Int8()
//   external int _unique___opaque_item_300;
//   @ffi.Int8()
//   external int _unique___opaque_item_301;
//   @ffi.Int8()
//   external int _unique___opaque_item_302;
//   @ffi.Int8()
//   external int _unique___opaque_item_303;
//   @ffi.Int8()
//   external int _unique___opaque_item_304;
//   @ffi.Int8()
//   external int _unique___opaque_item_305;
//   @ffi.Int8()
//   external int _unique___opaque_item_306;
//   @ffi.Int8()
//   external int _unique___opaque_item_307;
//   @ffi.Int8()
//   external int _unique___opaque_item_308;
//   @ffi.Int8()
//   external int _unique___opaque_item_309;
//   @ffi.Int8()
//   external int _unique___opaque_item_310;
//   @ffi.Int8()
//   external int _unique___opaque_item_311;
//   @ffi.Int8()
//   external int _unique___opaque_item_312;
//   @ffi.Int8()
//   external int _unique___opaque_item_313;
//   @ffi.Int8()
//   external int _unique___opaque_item_314;
//   @ffi.Int8()
//   external int _unique___opaque_item_315;
//   @ffi.Int8()
//   external int _unique___opaque_item_316;
//   @ffi.Int8()
//   external int _unique___opaque_item_317;
//   @ffi.Int8()
//   external int _unique___opaque_item_318;
//   @ffi.Int8()
//   external int _unique___opaque_item_319;
//   @ffi.Int8()
//   external int _unique___opaque_item_320;
//   @ffi.Int8()
//   external int _unique___opaque_item_321;
//   @ffi.Int8()
//   external int _unique___opaque_item_322;
//   @ffi.Int8()
//   external int _unique___opaque_item_323;
//   @ffi.Int8()
//   external int _unique___opaque_item_324;
//   @ffi.Int8()
//   external int _unique___opaque_item_325;
//   @ffi.Int8()
//   external int _unique___opaque_item_326;
//   @ffi.Int8()
//   external int _unique___opaque_item_327;
//   @ffi.Int8()
//   external int _unique___opaque_item_328;
//   @ffi.Int8()
//   external int _unique___opaque_item_329;
//   @ffi.Int8()
//   external int _unique___opaque_item_330;
//   @ffi.Int8()
//   external int _unique___opaque_item_331;
//   @ffi.Int8()
//   external int _unique___opaque_item_332;
//   @ffi.Int8()
//   external int _unique___opaque_item_333;
//   @ffi.Int8()
//   external int _unique___opaque_item_334;
//   @ffi.Int8()
//   external int _unique___opaque_item_335;
//   @ffi.Int8()
//   external int _unique___opaque_item_336;
//   @ffi.Int8()
//   external int _unique___opaque_item_337;
//   @ffi.Int8()
//   external int _unique___opaque_item_338;
//   @ffi.Int8()
//   external int _unique___opaque_item_339;
//   @ffi.Int8()
//   external int _unique___opaque_item_340;
//   @ffi.Int8()
//   external int _unique___opaque_item_341;
//   @ffi.Int8()
//   external int _unique___opaque_item_342;
//   @ffi.Int8()
//   external int _unique___opaque_item_343;
//   @ffi.Int8()
//   external int _unique___opaque_item_344;
//   @ffi.Int8()
//   external int _unique___opaque_item_345;
//   @ffi.Int8()
//   external int _unique___opaque_item_346;
//   @ffi.Int8()
//   external int _unique___opaque_item_347;
//   @ffi.Int8()
//   external int _unique___opaque_item_348;
//   @ffi.Int8()
//   external int _unique___opaque_item_349;
//   @ffi.Int8()
//   external int _unique___opaque_item_350;
//   @ffi.Int8()
//   external int _unique___opaque_item_351;
//   @ffi.Int8()
//   external int _unique___opaque_item_352;
//   @ffi.Int8()
//   external int _unique___opaque_item_353;
//   @ffi.Int8()
//   external int _unique___opaque_item_354;
//   @ffi.Int8()
//   external int _unique___opaque_item_355;
//   @ffi.Int8()
//   external int _unique___opaque_item_356;
//   @ffi.Int8()
//   external int _unique___opaque_item_357;
//   @ffi.Int8()
//   external int _unique___opaque_item_358;
//   @ffi.Int8()
//   external int _unique___opaque_item_359;
//   @ffi.Int8()
//   external int _unique___opaque_item_360;
//   @ffi.Int8()
//   external int _unique___opaque_item_361;
//   @ffi.Int8()
//   external int _unique___opaque_item_362;
//   @ffi.Int8()
//   external int _unique___opaque_item_363;
//   @ffi.Int8()
//   external int _unique___opaque_item_364;
//   @ffi.Int8()
//   external int _unique___opaque_item_365;
//   @ffi.Int8()
//   external int _unique___opaque_item_366;
//   @ffi.Int8()
//   external int _unique___opaque_item_367;
//   @ffi.Int8()
//   external int _unique___opaque_item_368;
//   @ffi.Int8()
//   external int _unique___opaque_item_369;
//   @ffi.Int8()
//   external int _unique___opaque_item_370;
//   @ffi.Int8()
//   external int _unique___opaque_item_371;
//   @ffi.Int8()
//   external int _unique___opaque_item_372;
//   @ffi.Int8()
//   external int _unique___opaque_item_373;
//   @ffi.Int8()
//   external int _unique___opaque_item_374;
//   @ffi.Int8()
//   external int _unique___opaque_item_375;
//   @ffi.Int8()
//   external int _unique___opaque_item_376;
//   @ffi.Int8()
//   external int _unique___opaque_item_377;
//   @ffi.Int8()
//   external int _unique___opaque_item_378;
//   @ffi.Int8()
//   external int _unique___opaque_item_379;
//   @ffi.Int8()
//   external int _unique___opaque_item_380;
//   @ffi.Int8()
//   external int _unique___opaque_item_381;
//   @ffi.Int8()
//   external int _unique___opaque_item_382;
//   @ffi.Int8()
//   external int _unique___opaque_item_383;
//   @ffi.Int8()
//   external int _unique___opaque_item_384;
//   @ffi.Int8()
//   external int _unique___opaque_item_385;
//   @ffi.Int8()
//   external int _unique___opaque_item_386;
//   @ffi.Int8()
//   external int _unique___opaque_item_387;
//   @ffi.Int8()
//   external int _unique___opaque_item_388;
//   @ffi.Int8()
//   external int _unique___opaque_item_389;
//   @ffi.Int8()
//   external int _unique___opaque_item_390;
//   @ffi.Int8()
//   external int _unique___opaque_item_391;
//   @ffi.Int8()
//   external int _unique___opaque_item_392;
//   @ffi.Int8()
//   external int _unique___opaque_item_393;
//   @ffi.Int8()
//   external int _unique___opaque_item_394;
//   @ffi.Int8()
//   external int _unique___opaque_item_395;
//   @ffi.Int8()
//   external int _unique___opaque_item_396;
//   @ffi.Int8()
//   external int _unique___opaque_item_397;
//   @ffi.Int8()
//   external int _unique___opaque_item_398;
//   @ffi.Int8()
//   external int _unique___opaque_item_399;
//   @ffi.Int8()
//   external int _unique___opaque_item_400;
//   @ffi.Int8()
//   external int _unique___opaque_item_401;
//   @ffi.Int8()
//   external int _unique___opaque_item_402;
//   @ffi.Int8()
//   external int _unique___opaque_item_403;
//   @ffi.Int8()
//   external int _unique___opaque_item_404;
//   @ffi.Int8()
//   external int _unique___opaque_item_405;
//   @ffi.Int8()
//   external int _unique___opaque_item_406;
//   @ffi.Int8()
//   external int _unique___opaque_item_407;
//   @ffi.Int8()
//   external int _unique___opaque_item_408;
//   @ffi.Int8()
//   external int _unique___opaque_item_409;
//   @ffi.Int8()
//   external int _unique___opaque_item_410;
//   @ffi.Int8()
//   external int _unique___opaque_item_411;
//   @ffi.Int8()
//   external int _unique___opaque_item_412;
//   @ffi.Int8()
//   external int _unique___opaque_item_413;
//   @ffi.Int8()
//   external int _unique___opaque_item_414;
//   @ffi.Int8()
//   external int _unique___opaque_item_415;
//   @ffi.Int8()
//   external int _unique___opaque_item_416;
//   @ffi.Int8()
//   external int _unique___opaque_item_417;
//   @ffi.Int8()
//   external int _unique___opaque_item_418;
//   @ffi.Int8()
//   external int _unique___opaque_item_419;
//   @ffi.Int8()
//   external int _unique___opaque_item_420;
//   @ffi.Int8()
//   external int _unique___opaque_item_421;
//   @ffi.Int8()
//   external int _unique___opaque_item_422;
//   @ffi.Int8()
//   external int _unique___opaque_item_423;
//   @ffi.Int8()
//   external int _unique___opaque_item_424;
//   @ffi.Int8()
//   external int _unique___opaque_item_425;
//   @ffi.Int8()
//   external int _unique___opaque_item_426;
//   @ffi.Int8()
//   external int _unique___opaque_item_427;
//   @ffi.Int8()
//   external int _unique___opaque_item_428;
//   @ffi.Int8()
//   external int _unique___opaque_item_429;
//   @ffi.Int8()
//   external int _unique___opaque_item_430;
//   @ffi.Int8()
//   external int _unique___opaque_item_431;
//   @ffi.Int8()
//   external int _unique___opaque_item_432;
//   @ffi.Int8()
//   external int _unique___opaque_item_433;
//   @ffi.Int8()
//   external int _unique___opaque_item_434;
//   @ffi.Int8()
//   external int _unique___opaque_item_435;
//   @ffi.Int8()
//   external int _unique___opaque_item_436;
//   @ffi.Int8()
//   external int _unique___opaque_item_437;
//   @ffi.Int8()
//   external int _unique___opaque_item_438;
//   @ffi.Int8()
//   external int _unique___opaque_item_439;
//   @ffi.Int8()
//   external int _unique___opaque_item_440;
//   @ffi.Int8()
//   external int _unique___opaque_item_441;
//   @ffi.Int8()
//   external int _unique___opaque_item_442;
//   @ffi.Int8()
//   external int _unique___opaque_item_443;
//   @ffi.Int8()
//   external int _unique___opaque_item_444;
//   @ffi.Int8()
//   external int _unique___opaque_item_445;
//   @ffi.Int8()
//   external int _unique___opaque_item_446;
//   @ffi.Int8()
//   external int _unique___opaque_item_447;
//   @ffi.Int8()
//   external int _unique___opaque_item_448;
//   @ffi.Int8()
//   external int _unique___opaque_item_449;
//   @ffi.Int8()
//   external int _unique___opaque_item_450;
//   @ffi.Int8()
//   external int _unique___opaque_item_451;
//   @ffi.Int8()
//   external int _unique___opaque_item_452;
//   @ffi.Int8()
//   external int _unique___opaque_item_453;
//   @ffi.Int8()
//   external int _unique___opaque_item_454;
//   @ffi.Int8()
//   external int _unique___opaque_item_455;
//   @ffi.Int8()
//   external int _unique___opaque_item_456;
//   @ffi.Int8()
//   external int _unique___opaque_item_457;
//   @ffi.Int8()
//   external int _unique___opaque_item_458;
//   @ffi.Int8()
//   external int _unique___opaque_item_459;
//   @ffi.Int8()
//   external int _unique___opaque_item_460;
//   @ffi.Int8()
//   external int _unique___opaque_item_461;
//   @ffi.Int8()
//   external int _unique___opaque_item_462;
//   @ffi.Int8()
//   external int _unique___opaque_item_463;
//   @ffi.Int8()
//   external int _unique___opaque_item_464;
//   @ffi.Int8()
//   external int _unique___opaque_item_465;
//   @ffi.Int8()
//   external int _unique___opaque_item_466;
//   @ffi.Int8()
//   external int _unique___opaque_item_467;
//   @ffi.Int8()
//   external int _unique___opaque_item_468;
//   @ffi.Int8()
//   external int _unique___opaque_item_469;
//   @ffi.Int8()
//   external int _unique___opaque_item_470;
//   @ffi.Int8()
//   external int _unique___opaque_item_471;
//   @ffi.Int8()
//   external int _unique___opaque_item_472;
//   @ffi.Int8()
//   external int _unique___opaque_item_473;
//   @ffi.Int8()
//   external int _unique___opaque_item_474;
//   @ffi.Int8()
//   external int _unique___opaque_item_475;
//   @ffi.Int8()
//   external int _unique___opaque_item_476;
//   @ffi.Int8()
//   external int _unique___opaque_item_477;
//   @ffi.Int8()
//   external int _unique___opaque_item_478;
//   @ffi.Int8()
//   external int _unique___opaque_item_479;
//   @ffi.Int8()
//   external int _unique___opaque_item_480;
//   @ffi.Int8()
//   external int _unique___opaque_item_481;
//   @ffi.Int8()
//   external int _unique___opaque_item_482;
//   @ffi.Int8()
//   external int _unique___opaque_item_483;
//   @ffi.Int8()
//   external int _unique___opaque_item_484;
//   @ffi.Int8()
//   external int _unique___opaque_item_485;
//   @ffi.Int8()
//   external int _unique___opaque_item_486;
//   @ffi.Int8()
//   external int _unique___opaque_item_487;
//   @ffi.Int8()
//   external int _unique___opaque_item_488;
//   @ffi.Int8()
//   external int _unique___opaque_item_489;
//   @ffi.Int8()
//   external int _unique___opaque_item_490;
//   @ffi.Int8()
//   external int _unique___opaque_item_491;
//   @ffi.Int8()
//   external int _unique___opaque_item_492;
//   @ffi.Int8()
//   external int _unique___opaque_item_493;
//   @ffi.Int8()
//   external int _unique___opaque_item_494;
//   @ffi.Int8()
//   external int _unique___opaque_item_495;
//   @ffi.Int8()
//   external int _unique___opaque_item_496;
//   @ffi.Int8()
//   external int _unique___opaque_item_497;
//   @ffi.Int8()
//   external int _unique___opaque_item_498;
//   @ffi.Int8()
//   external int _unique___opaque_item_499;
//   @ffi.Int8()
//   external int _unique___opaque_item_500;
//   @ffi.Int8()
//   external int _unique___opaque_item_501;
//   @ffi.Int8()
//   external int _unique___opaque_item_502;
//   @ffi.Int8()
//   external int _unique___opaque_item_503;
//   @ffi.Int8()
//   external int _unique___opaque_item_504;
//   @ffi.Int8()
//   external int _unique___opaque_item_505;
//   @ffi.Int8()
//   external int _unique___opaque_item_506;
//   @ffi.Int8()
//   external int _unique___opaque_item_507;
//   @ffi.Int8()
//   external int _unique___opaque_item_508;
//   @ffi.Int8()
//   external int _unique___opaque_item_509;
//   @ffi.Int8()
//   external int _unique___opaque_item_510;
//   @ffi.Int8()
//   external int _unique___opaque_item_511;
//   @ffi.Int8()
//   external int _unique___opaque_item_512;
//   @ffi.Int8()
//   external int _unique___opaque_item_513;
//   @ffi.Int8()
//   external int _unique___opaque_item_514;
//   @ffi.Int8()
//   external int _unique___opaque_item_515;
//   @ffi.Int8()
//   external int _unique___opaque_item_516;
//   @ffi.Int8()
//   external int _unique___opaque_item_517;
//   @ffi.Int8()
//   external int _unique___opaque_item_518;
//   @ffi.Int8()
//   external int _unique___opaque_item_519;
//   @ffi.Int8()
//   external int _unique___opaque_item_520;
//   @ffi.Int8()
//   external int _unique___opaque_item_521;
//   @ffi.Int8()
//   external int _unique___opaque_item_522;
//   @ffi.Int8()
//   external int _unique___opaque_item_523;
//   @ffi.Int8()
//   external int _unique___opaque_item_524;
//   @ffi.Int8()
//   external int _unique___opaque_item_525;
//   @ffi.Int8()
//   external int _unique___opaque_item_526;
//   @ffi.Int8()
//   external int _unique___opaque_item_527;
//   @ffi.Int8()
//   external int _unique___opaque_item_528;
//   @ffi.Int8()
//   external int _unique___opaque_item_529;
//   @ffi.Int8()
//   external int _unique___opaque_item_530;
//   @ffi.Int8()
//   external int _unique___opaque_item_531;
//   @ffi.Int8()
//   external int _unique___opaque_item_532;
//   @ffi.Int8()
//   external int _unique___opaque_item_533;
//   @ffi.Int8()
//   external int _unique___opaque_item_534;
//   @ffi.Int8()
//   external int _unique___opaque_item_535;
//   @ffi.Int8()
//   external int _unique___opaque_item_536;
//   @ffi.Int8()
//   external int _unique___opaque_item_537;
//   @ffi.Int8()
//   external int _unique___opaque_item_538;
//   @ffi.Int8()
//   external int _unique___opaque_item_539;
//   @ffi.Int8()
//   external int _unique___opaque_item_540;
//   @ffi.Int8()
//   external int _unique___opaque_item_541;
//   @ffi.Int8()
//   external int _unique___opaque_item_542;
//   @ffi.Int8()
//   external int _unique___opaque_item_543;
//   @ffi.Int8()
//   external int _unique___opaque_item_544;
//   @ffi.Int8()
//   external int _unique___opaque_item_545;
//   @ffi.Int8()
//   external int _unique___opaque_item_546;
//   @ffi.Int8()
//   external int _unique___opaque_item_547;
//   @ffi.Int8()
//   external int _unique___opaque_item_548;
//   @ffi.Int8()
//   external int _unique___opaque_item_549;
//   @ffi.Int8()
//   external int _unique___opaque_item_550;
//   @ffi.Int8()
//   external int _unique___opaque_item_551;
//   @ffi.Int8()
//   external int _unique___opaque_item_552;
//   @ffi.Int8()
//   external int _unique___opaque_item_553;
//   @ffi.Int8()
//   external int _unique___opaque_item_554;
//   @ffi.Int8()
//   external int _unique___opaque_item_555;
//   @ffi.Int8()
//   external int _unique___opaque_item_556;
//   @ffi.Int8()
//   external int _unique___opaque_item_557;
//   @ffi.Int8()
//   external int _unique___opaque_item_558;
//   @ffi.Int8()
//   external int _unique___opaque_item_559;
//   @ffi.Int8()
//   external int _unique___opaque_item_560;
//   @ffi.Int8()
//   external int _unique___opaque_item_561;
//   @ffi.Int8()
//   external int _unique___opaque_item_562;
//   @ffi.Int8()
//   external int _unique___opaque_item_563;
//   @ffi.Int8()
//   external int _unique___opaque_item_564;
//   @ffi.Int8()
//   external int _unique___opaque_item_565;
//   @ffi.Int8()
//   external int _unique___opaque_item_566;
//   @ffi.Int8()
//   external int _unique___opaque_item_567;
//   @ffi.Int8()
//   external int _unique___opaque_item_568;
//   @ffi.Int8()
//   external int _unique___opaque_item_569;
//   @ffi.Int8()
//   external int _unique___opaque_item_570;
//   @ffi.Int8()
//   external int _unique___opaque_item_571;
//   @ffi.Int8()
//   external int _unique___opaque_item_572;
//   @ffi.Int8()
//   external int _unique___opaque_item_573;
//   @ffi.Int8()
//   external int _unique___opaque_item_574;
//   @ffi.Int8()
//   external int _unique___opaque_item_575;
//   @ffi.Int8()
//   external int _unique___opaque_item_576;
//   @ffi.Int8()
//   external int _unique___opaque_item_577;
//   @ffi.Int8()
//   external int _unique___opaque_item_578;
//   @ffi.Int8()
//   external int _unique___opaque_item_579;
//   @ffi.Int8()
//   external int _unique___opaque_item_580;
//   @ffi.Int8()
//   external int _unique___opaque_item_581;
//   @ffi.Int8()
//   external int _unique___opaque_item_582;
//   @ffi.Int8()
//   external int _unique___opaque_item_583;
//   @ffi.Int8()
//   external int _unique___opaque_item_584;
//   @ffi.Int8()
//   external int _unique___opaque_item_585;
//   @ffi.Int8()
//   external int _unique___opaque_item_586;
//   @ffi.Int8()
//   external int _unique___opaque_item_587;
//   @ffi.Int8()
//   external int _unique___opaque_item_588;
//   @ffi.Int8()
//   external int _unique___opaque_item_589;
//   @ffi.Int8()
//   external int _unique___opaque_item_590;
//   @ffi.Int8()
//   external int _unique___opaque_item_591;
//   @ffi.Int8()
//   external int _unique___opaque_item_592;
//   @ffi.Int8()
//   external int _unique___opaque_item_593;
//   @ffi.Int8()
//   external int _unique___opaque_item_594;
//   @ffi.Int8()
//   external int _unique___opaque_item_595;
//   @ffi.Int8()
//   external int _unique___opaque_item_596;
//   @ffi.Int8()
//   external int _unique___opaque_item_597;
//   @ffi.Int8()
//   external int _unique___opaque_item_598;
//   @ffi.Int8()
//   external int _unique___opaque_item_599;
//   @ffi.Int8()
//   external int _unique___opaque_item_600;
//   @ffi.Int8()
//   external int _unique___opaque_item_601;
//   @ffi.Int8()
//   external int _unique___opaque_item_602;
//   @ffi.Int8()
//   external int _unique___opaque_item_603;
//   @ffi.Int8()
//   external int _unique___opaque_item_604;
//   @ffi.Int8()
//   external int _unique___opaque_item_605;
//   @ffi.Int8()
//   external int _unique___opaque_item_606;
//   @ffi.Int8()
//   external int _unique___opaque_item_607;
//   @ffi.Int8()
//   external int _unique___opaque_item_608;
//   @ffi.Int8()
//   external int _unique___opaque_item_609;
//   @ffi.Int8()
//   external int _unique___opaque_item_610;
//   @ffi.Int8()
//   external int _unique___opaque_item_611;
//   @ffi.Int8()
//   external int _unique___opaque_item_612;
//   @ffi.Int8()
//   external int _unique___opaque_item_613;
//   @ffi.Int8()
//   external int _unique___opaque_item_614;
//   @ffi.Int8()
//   external int _unique___opaque_item_615;
//   @ffi.Int8()
//   external int _unique___opaque_item_616;
//   @ffi.Int8()
//   external int _unique___opaque_item_617;
//   @ffi.Int8()
//   external int _unique___opaque_item_618;
//   @ffi.Int8()
//   external int _unique___opaque_item_619;
//   @ffi.Int8()
//   external int _unique___opaque_item_620;
//   @ffi.Int8()
//   external int _unique___opaque_item_621;
//   @ffi.Int8()
//   external int _unique___opaque_item_622;
//   @ffi.Int8()
//   external int _unique___opaque_item_623;
//   @ffi.Int8()
//   external int _unique___opaque_item_624;
//   @ffi.Int8()
//   external int _unique___opaque_item_625;
//   @ffi.Int8()
//   external int _unique___opaque_item_626;
//   @ffi.Int8()
//   external int _unique___opaque_item_627;
//   @ffi.Int8()
//   external int _unique___opaque_item_628;
//   @ffi.Int8()
//   external int _unique___opaque_item_629;
//   @ffi.Int8()
//   external int _unique___opaque_item_630;
//   @ffi.Int8()
//   external int _unique___opaque_item_631;
//   @ffi.Int8()
//   external int _unique___opaque_item_632;
//   @ffi.Int8()
//   external int _unique___opaque_item_633;
//   @ffi.Int8()
//   external int _unique___opaque_item_634;
//   @ffi.Int8()
//   external int _unique___opaque_item_635;
//   @ffi.Int8()
//   external int _unique___opaque_item_636;
//   @ffi.Int8()
//   external int _unique___opaque_item_637;
//   @ffi.Int8()
//   external int _unique___opaque_item_638;
//   @ffi.Int8()
//   external int _unique___opaque_item_639;
//   @ffi.Int8()
//   external int _unique___opaque_item_640;
//   @ffi.Int8()
//   external int _unique___opaque_item_641;
//   @ffi.Int8()
//   external int _unique___opaque_item_642;
//   @ffi.Int8()
//   external int _unique___opaque_item_643;
//   @ffi.Int8()
//   external int _unique___opaque_item_644;
//   @ffi.Int8()
//   external int _unique___opaque_item_645;
//   @ffi.Int8()
//   external int _unique___opaque_item_646;
//   @ffi.Int8()
//   external int _unique___opaque_item_647;
//   @ffi.Int8()
//   external int _unique___opaque_item_648;
//   @ffi.Int8()
//   external int _unique___opaque_item_649;
//   @ffi.Int8()
//   external int _unique___opaque_item_650;
//   @ffi.Int8()
//   external int _unique___opaque_item_651;
//   @ffi.Int8()
//   external int _unique___opaque_item_652;
//   @ffi.Int8()
//   external int _unique___opaque_item_653;
//   @ffi.Int8()
//   external int _unique___opaque_item_654;
//   @ffi.Int8()
//   external int _unique___opaque_item_655;
//   @ffi.Int8()
//   external int _unique___opaque_item_656;
//   @ffi.Int8()
//   external int _unique___opaque_item_657;
//   @ffi.Int8()
//   external int _unique___opaque_item_658;
//   @ffi.Int8()
//   external int _unique___opaque_item_659;
//   @ffi.Int8()
//   external int _unique___opaque_item_660;
//   @ffi.Int8()
//   external int _unique___opaque_item_661;
//   @ffi.Int8()
//   external int _unique___opaque_item_662;
//   @ffi.Int8()
//   external int _unique___opaque_item_663;
//   @ffi.Int8()
//   external int _unique___opaque_item_664;
//   @ffi.Int8()
//   external int _unique___opaque_item_665;
//   @ffi.Int8()
//   external int _unique___opaque_item_666;
//   @ffi.Int8()
//   external int _unique___opaque_item_667;
//   @ffi.Int8()
//   external int _unique___opaque_item_668;
//   @ffi.Int8()
//   external int _unique___opaque_item_669;
//   @ffi.Int8()
//   external int _unique___opaque_item_670;
//   @ffi.Int8()
//   external int _unique___opaque_item_671;
//   @ffi.Int8()
//   external int _unique___opaque_item_672;
//   @ffi.Int8()
//   external int _unique___opaque_item_673;
//   @ffi.Int8()
//   external int _unique___opaque_item_674;
//   @ffi.Int8()
//   external int _unique___opaque_item_675;
//   @ffi.Int8()
//   external int _unique___opaque_item_676;
//   @ffi.Int8()
//   external int _unique___opaque_item_677;
//   @ffi.Int8()
//   external int _unique___opaque_item_678;
//   @ffi.Int8()
//   external int _unique___opaque_item_679;
//   @ffi.Int8()
//   external int _unique___opaque_item_680;
//   @ffi.Int8()
//   external int _unique___opaque_item_681;
//   @ffi.Int8()
//   external int _unique___opaque_item_682;
//   @ffi.Int8()
//   external int _unique___opaque_item_683;
//   @ffi.Int8()
//   external int _unique___opaque_item_684;
//   @ffi.Int8()
//   external int _unique___opaque_item_685;
//   @ffi.Int8()
//   external int _unique___opaque_item_686;
//   @ffi.Int8()
//   external int _unique___opaque_item_687;
//   @ffi.Int8()
//   external int _unique___opaque_item_688;
//   @ffi.Int8()
//   external int _unique___opaque_item_689;
//   @ffi.Int8()
//   external int _unique___opaque_item_690;
//   @ffi.Int8()
//   external int _unique___opaque_item_691;
//   @ffi.Int8()
//   external int _unique___opaque_item_692;
//   @ffi.Int8()
//   external int _unique___opaque_item_693;
//   @ffi.Int8()
//   external int _unique___opaque_item_694;
//   @ffi.Int8()
//   external int _unique___opaque_item_695;
//   @ffi.Int8()
//   external int _unique___opaque_item_696;
//   @ffi.Int8()
//   external int _unique___opaque_item_697;
//   @ffi.Int8()
//   external int _unique___opaque_item_698;
//   @ffi.Int8()
//   external int _unique___opaque_item_699;
//   @ffi.Int8()
//   external int _unique___opaque_item_700;
//   @ffi.Int8()
//   external int _unique___opaque_item_701;
//   @ffi.Int8()
//   external int _unique___opaque_item_702;
//   @ffi.Int8()
//   external int _unique___opaque_item_703;
//   @ffi.Int8()
//   external int _unique___opaque_item_704;
//   @ffi.Int8()
//   external int _unique___opaque_item_705;
//   @ffi.Int8()
//   external int _unique___opaque_item_706;
//   @ffi.Int8()
//   external int _unique___opaque_item_707;
//   @ffi.Int8()
//   external int _unique___opaque_item_708;
//   @ffi.Int8()
//   external int _unique___opaque_item_709;
//   @ffi.Int8()
//   external int _unique___opaque_item_710;
//   @ffi.Int8()
//   external int _unique___opaque_item_711;
//   @ffi.Int8()
//   external int _unique___opaque_item_712;
//   @ffi.Int8()
//   external int _unique___opaque_item_713;
//   @ffi.Int8()
//   external int _unique___opaque_item_714;
//   @ffi.Int8()
//   external int _unique___opaque_item_715;
//   @ffi.Int8()
//   external int _unique___opaque_item_716;
//   @ffi.Int8()
//   external int _unique___opaque_item_717;
//   @ffi.Int8()
//   external int _unique___opaque_item_718;
//   @ffi.Int8()
//   external int _unique___opaque_item_719;
//   @ffi.Int8()
//   external int _unique___opaque_item_720;
//   @ffi.Int8()
//   external int _unique___opaque_item_721;
//   @ffi.Int8()
//   external int _unique___opaque_item_722;
//   @ffi.Int8()
//   external int _unique___opaque_item_723;
//   @ffi.Int8()
//   external int _unique___opaque_item_724;
//   @ffi.Int8()
//   external int _unique___opaque_item_725;
//   @ffi.Int8()
//   external int _unique___opaque_item_726;
//   @ffi.Int8()
//   external int _unique___opaque_item_727;
//   @ffi.Int8()
//   external int _unique___opaque_item_728;
//   @ffi.Int8()
//   external int _unique___opaque_item_729;
//   @ffi.Int8()
//   external int _unique___opaque_item_730;
//   @ffi.Int8()
//   external int _unique___opaque_item_731;
//   @ffi.Int8()
//   external int _unique___opaque_item_732;
//   @ffi.Int8()
//   external int _unique___opaque_item_733;
//   @ffi.Int8()
//   external int _unique___opaque_item_734;
//   @ffi.Int8()
//   external int _unique___opaque_item_735;
//   @ffi.Int8()
//   external int _unique___opaque_item_736;
//   @ffi.Int8()
//   external int _unique___opaque_item_737;
//   @ffi.Int8()
//   external int _unique___opaque_item_738;
//   @ffi.Int8()
//   external int _unique___opaque_item_739;
//   @ffi.Int8()
//   external int _unique___opaque_item_740;
//   @ffi.Int8()
//   external int _unique___opaque_item_741;
//   @ffi.Int8()
//   external int _unique___opaque_item_742;
//   @ffi.Int8()
//   external int _unique___opaque_item_743;
//   @ffi.Int8()
//   external int _unique___opaque_item_744;
//   @ffi.Int8()
//   external int _unique___opaque_item_745;
//   @ffi.Int8()
//   external int _unique___opaque_item_746;
//   @ffi.Int8()
//   external int _unique___opaque_item_747;
//   @ffi.Int8()
//   external int _unique___opaque_item_748;
//   @ffi.Int8()
//   external int _unique___opaque_item_749;
//   @ffi.Int8()
//   external int _unique___opaque_item_750;
//   @ffi.Int8()
//   external int _unique___opaque_item_751;
//   @ffi.Int8()
//   external int _unique___opaque_item_752;
//   @ffi.Int8()
//   external int _unique___opaque_item_753;
//   @ffi.Int8()
//   external int _unique___opaque_item_754;
//   @ffi.Int8()
//   external int _unique___opaque_item_755;
//   @ffi.Int8()
//   external int _unique___opaque_item_756;
//   @ffi.Int8()
//   external int _unique___opaque_item_757;
//   @ffi.Int8()
//   external int _unique___opaque_item_758;
//   @ffi.Int8()
//   external int _unique___opaque_item_759;
//   @ffi.Int8()
//   external int _unique___opaque_item_760;
//   @ffi.Int8()
//   external int _unique___opaque_item_761;
//   @ffi.Int8()
//   external int _unique___opaque_item_762;
//   @ffi.Int8()
//   external int _unique___opaque_item_763;
//   @ffi.Int8()
//   external int _unique___opaque_item_764;
//   @ffi.Int8()
//   external int _unique___opaque_item_765;
//   @ffi.Int8()
//   external int _unique___opaque_item_766;
//   @ffi.Int8()
//   external int _unique___opaque_item_767;
//   @ffi.Int8()
//   external int _unique___opaque_item_768;
//   @ffi.Int8()
//   external int _unique___opaque_item_769;
//   @ffi.Int8()
//   external int _unique___opaque_item_770;
//   @ffi.Int8()
//   external int _unique___opaque_item_771;
//   @ffi.Int8()
//   external int _unique___opaque_item_772;
//   @ffi.Int8()
//   external int _unique___opaque_item_773;
//   @ffi.Int8()
//   external int _unique___opaque_item_774;
//   @ffi.Int8()
//   external int _unique___opaque_item_775;
//   @ffi.Int8()
//   external int _unique___opaque_item_776;
//   @ffi.Int8()
//   external int _unique___opaque_item_777;
//   @ffi.Int8()
//   external int _unique___opaque_item_778;
//   @ffi.Int8()
//   external int _unique___opaque_item_779;
//   @ffi.Int8()
//   external int _unique___opaque_item_780;
//   @ffi.Int8()
//   external int _unique___opaque_item_781;
//   @ffi.Int8()
//   external int _unique___opaque_item_782;
//   @ffi.Int8()
//   external int _unique___opaque_item_783;
//   @ffi.Int8()
//   external int _unique___opaque_item_784;
//   @ffi.Int8()
//   external int _unique___opaque_item_785;
//   @ffi.Int8()
//   external int _unique___opaque_item_786;
//   @ffi.Int8()
//   external int _unique___opaque_item_787;
//   @ffi.Int8()
//   external int _unique___opaque_item_788;
//   @ffi.Int8()
//   external int _unique___opaque_item_789;
//   @ffi.Int8()
//   external int _unique___opaque_item_790;
//   @ffi.Int8()
//   external int _unique___opaque_item_791;
//   @ffi.Int8()
//   external int _unique___opaque_item_792;
//   @ffi.Int8()
//   external int _unique___opaque_item_793;
//   @ffi.Int8()
//   external int _unique___opaque_item_794;
//   @ffi.Int8()
//   external int _unique___opaque_item_795;
//   @ffi.Int8()
//   external int _unique___opaque_item_796;
//   @ffi.Int8()
//   external int _unique___opaque_item_797;
//   @ffi.Int8()
//   external int _unique___opaque_item_798;
//   @ffi.Int8()
//   external int _unique___opaque_item_799;
//   @ffi.Int8()
//   external int _unique___opaque_item_800;
//   @ffi.Int8()
//   external int _unique___opaque_item_801;
//   @ffi.Int8()
//   external int _unique___opaque_item_802;
//   @ffi.Int8()
//   external int _unique___opaque_item_803;
//   @ffi.Int8()
//   external int _unique___opaque_item_804;
//   @ffi.Int8()
//   external int _unique___opaque_item_805;
//   @ffi.Int8()
//   external int _unique___opaque_item_806;
//   @ffi.Int8()
//   external int _unique___opaque_item_807;
//   @ffi.Int8()
//   external int _unique___opaque_item_808;
//   @ffi.Int8()
//   external int _unique___opaque_item_809;
//   @ffi.Int8()
//   external int _unique___opaque_item_810;
//   @ffi.Int8()
//   external int _unique___opaque_item_811;
//   @ffi.Int8()
//   external int _unique___opaque_item_812;
//   @ffi.Int8()
//   external int _unique___opaque_item_813;
//   @ffi.Int8()
//   external int _unique___opaque_item_814;
//   @ffi.Int8()
//   external int _unique___opaque_item_815;
//   @ffi.Int8()
//   external int _unique___opaque_item_816;
//   @ffi.Int8()
//   external int _unique___opaque_item_817;
//   @ffi.Int8()
//   external int _unique___opaque_item_818;
//   @ffi.Int8()
//   external int _unique___opaque_item_819;
//   @ffi.Int8()
//   external int _unique___opaque_item_820;
//   @ffi.Int8()
//   external int _unique___opaque_item_821;
//   @ffi.Int8()
//   external int _unique___opaque_item_822;
//   @ffi.Int8()
//   external int _unique___opaque_item_823;
//   @ffi.Int8()
//   external int _unique___opaque_item_824;
//   @ffi.Int8()
//   external int _unique___opaque_item_825;
//   @ffi.Int8()
//   external int _unique___opaque_item_826;
//   @ffi.Int8()
//   external int _unique___opaque_item_827;
//   @ffi.Int8()
//   external int _unique___opaque_item_828;
//   @ffi.Int8()
//   external int _unique___opaque_item_829;
//   @ffi.Int8()
//   external int _unique___opaque_item_830;
//   @ffi.Int8()
//   external int _unique___opaque_item_831;
//   @ffi.Int8()
//   external int _unique___opaque_item_832;
//   @ffi.Int8()
//   external int _unique___opaque_item_833;
//   @ffi.Int8()
//   external int _unique___opaque_item_834;
//   @ffi.Int8()
//   external int _unique___opaque_item_835;
//   @ffi.Int8()
//   external int _unique___opaque_item_836;
//   @ffi.Int8()
//   external int _unique___opaque_item_837;
//   @ffi.Int8()
//   external int _unique___opaque_item_838;
//   @ffi.Int8()
//   external int _unique___opaque_item_839;
//   @ffi.Int8()
//   external int _unique___opaque_item_840;
//   @ffi.Int8()
//   external int _unique___opaque_item_841;
//   @ffi.Int8()
//   external int _unique___opaque_item_842;
//   @ffi.Int8()
//   external int _unique___opaque_item_843;
//   @ffi.Int8()
//   external int _unique___opaque_item_844;
//   @ffi.Int8()
//   external int _unique___opaque_item_845;
//   @ffi.Int8()
//   external int _unique___opaque_item_846;
//   @ffi.Int8()
//   external int _unique___opaque_item_847;
//   @ffi.Int8()
//   external int _unique___opaque_item_848;
//   @ffi.Int8()
//   external int _unique___opaque_item_849;
//   @ffi.Int8()
//   external int _unique___opaque_item_850;
//   @ffi.Int8()
//   external int _unique___opaque_item_851;
//   @ffi.Int8()
//   external int _unique___opaque_item_852;
//   @ffi.Int8()
//   external int _unique___opaque_item_853;
//   @ffi.Int8()
//   external int _unique___opaque_item_854;
//   @ffi.Int8()
//   external int _unique___opaque_item_855;
//   @ffi.Int8()
//   external int _unique___opaque_item_856;
//   @ffi.Int8()
//   external int _unique___opaque_item_857;
//   @ffi.Int8()
//   external int _unique___opaque_item_858;
//   @ffi.Int8()
//   external int _unique___opaque_item_859;
//   @ffi.Int8()
//   external int _unique___opaque_item_860;
//   @ffi.Int8()
//   external int _unique___opaque_item_861;
//   @ffi.Int8()
//   external int _unique___opaque_item_862;
//   @ffi.Int8()
//   external int _unique___opaque_item_863;
//   @ffi.Int8()
//   external int _unique___opaque_item_864;
//   @ffi.Int8()
//   external int _unique___opaque_item_865;
//   @ffi.Int8()
//   external int _unique___opaque_item_866;
//   @ffi.Int8()
//   external int _unique___opaque_item_867;
//   @ffi.Int8()
//   external int _unique___opaque_item_868;
//   @ffi.Int8()
//   external int _unique___opaque_item_869;
//   @ffi.Int8()
//   external int _unique___opaque_item_870;
//   @ffi.Int8()
//   external int _unique___opaque_item_871;
//   @ffi.Int8()
//   external int _unique___opaque_item_872;
//   @ffi.Int8()
//   external int _unique___opaque_item_873;
//   @ffi.Int8()
//   external int _unique___opaque_item_874;
//   @ffi.Int8()
//   external int _unique___opaque_item_875;
//   @ffi.Int8()
//   external int _unique___opaque_item_876;
//   @ffi.Int8()
//   external int _unique___opaque_item_877;
//   @ffi.Int8()
//   external int _unique___opaque_item_878;
//   @ffi.Int8()
//   external int _unique___opaque_item_879;
//   @ffi.Int8()
//   external int _unique___opaque_item_880;
//   @ffi.Int8()
//   external int _unique___opaque_item_881;
//   @ffi.Int8()
//   external int _unique___opaque_item_882;
//   @ffi.Int8()
//   external int _unique___opaque_item_883;
//   @ffi.Int8()
//   external int _unique___opaque_item_884;
//   @ffi.Int8()
//   external int _unique___opaque_item_885;
//   @ffi.Int8()
//   external int _unique___opaque_item_886;
//   @ffi.Int8()
//   external int _unique___opaque_item_887;
//   @ffi.Int8()
//   external int _unique___opaque_item_888;
//   @ffi.Int8()
//   external int _unique___opaque_item_889;
//   @ffi.Int8()
//   external int _unique___opaque_item_890;
//   @ffi.Int8()
//   external int _unique___opaque_item_891;
//   @ffi.Int8()
//   external int _unique___opaque_item_892;
//   @ffi.Int8()
//   external int _unique___opaque_item_893;
//   @ffi.Int8()
//   external int _unique___opaque_item_894;
//   @ffi.Int8()
//   external int _unique___opaque_item_895;
//   @ffi.Int8()
//   external int _unique___opaque_item_896;
//   @ffi.Int8()
//   external int _unique___opaque_item_897;
//   @ffi.Int8()
//   external int _unique___opaque_item_898;
//   @ffi.Int8()
//   external int _unique___opaque_item_899;
//   @ffi.Int8()
//   external int _unique___opaque_item_900;
//   @ffi.Int8()
//   external int _unique___opaque_item_901;
//   @ffi.Int8()
//   external int _unique___opaque_item_902;
//   @ffi.Int8()
//   external int _unique___opaque_item_903;
//   @ffi.Int8()
//   external int _unique___opaque_item_904;
//   @ffi.Int8()
//   external int _unique___opaque_item_905;
//   @ffi.Int8()
//   external int _unique___opaque_item_906;
//   @ffi.Int8()
//   external int _unique___opaque_item_907;
//   @ffi.Int8()
//   external int _unique___opaque_item_908;
//   @ffi.Int8()
//   external int _unique___opaque_item_909;
//   @ffi.Int8()
//   external int _unique___opaque_item_910;
//   @ffi.Int8()
//   external int _unique___opaque_item_911;
//   @ffi.Int8()
//   external int _unique___opaque_item_912;
//   @ffi.Int8()
//   external int _unique___opaque_item_913;
//   @ffi.Int8()
//   external int _unique___opaque_item_914;
//   @ffi.Int8()
//   external int _unique___opaque_item_915;
//   @ffi.Int8()
//   external int _unique___opaque_item_916;
//   @ffi.Int8()
//   external int _unique___opaque_item_917;
//   @ffi.Int8()
//   external int _unique___opaque_item_918;
//   @ffi.Int8()
//   external int _unique___opaque_item_919;
//   @ffi.Int8()
//   external int _unique___opaque_item_920;
//   @ffi.Int8()
//   external int _unique___opaque_item_921;
//   @ffi.Int8()
//   external int _unique___opaque_item_922;
//   @ffi.Int8()
//   external int _unique___opaque_item_923;
//   @ffi.Int8()
//   external int _unique___opaque_item_924;
//   @ffi.Int8()
//   external int _unique___opaque_item_925;
//   @ffi.Int8()
//   external int _unique___opaque_item_926;
//   @ffi.Int8()
//   external int _unique___opaque_item_927;
//   @ffi.Int8()
//   external int _unique___opaque_item_928;
//   @ffi.Int8()
//   external int _unique___opaque_item_929;
//   @ffi.Int8()
//   external int _unique___opaque_item_930;
//   @ffi.Int8()
//   external int _unique___opaque_item_931;
//   @ffi.Int8()
//   external int _unique___opaque_item_932;
//   @ffi.Int8()
//   external int _unique___opaque_item_933;
//   @ffi.Int8()
//   external int _unique___opaque_item_934;
//   @ffi.Int8()
//   external int _unique___opaque_item_935;
//   @ffi.Int8()
//   external int _unique___opaque_item_936;
//   @ffi.Int8()
//   external int _unique___opaque_item_937;
//   @ffi.Int8()
//   external int _unique___opaque_item_938;
//   @ffi.Int8()
//   external int _unique___opaque_item_939;
//   @ffi.Int8()
//   external int _unique___opaque_item_940;
//   @ffi.Int8()
//   external int _unique___opaque_item_941;
//   @ffi.Int8()
//   external int _unique___opaque_item_942;
//   @ffi.Int8()
//   external int _unique___opaque_item_943;
//   @ffi.Int8()
//   external int _unique___opaque_item_944;
//   @ffi.Int8()
//   external int _unique___opaque_item_945;
//   @ffi.Int8()
//   external int _unique___opaque_item_946;
//   @ffi.Int8()
//   external int _unique___opaque_item_947;
//   @ffi.Int8()
//   external int _unique___opaque_item_948;
//   @ffi.Int8()
//   external int _unique___opaque_item_949;
//   @ffi.Int8()
//   external int _unique___opaque_item_950;
//   @ffi.Int8()
//   external int _unique___opaque_item_951;
//   @ffi.Int8()
//   external int _unique___opaque_item_952;
//   @ffi.Int8()
//   external int _unique___opaque_item_953;
//   @ffi.Int8()
//   external int _unique___opaque_item_954;
//   @ffi.Int8()
//   external int _unique___opaque_item_955;
//   @ffi.Int8()
//   external int _unique___opaque_item_956;
//   @ffi.Int8()
//   external int _unique___opaque_item_957;
//   @ffi.Int8()
//   external int _unique___opaque_item_958;
//   @ffi.Int8()
//   external int _unique___opaque_item_959;
//   @ffi.Int8()
//   external int _unique___opaque_item_960;
//   @ffi.Int8()
//   external int _unique___opaque_item_961;
//   @ffi.Int8()
//   external int _unique___opaque_item_962;
//   @ffi.Int8()
//   external int _unique___opaque_item_963;
//   @ffi.Int8()
//   external int _unique___opaque_item_964;
//   @ffi.Int8()
//   external int _unique___opaque_item_965;
//   @ffi.Int8()
//   external int _unique___opaque_item_966;
//   @ffi.Int8()
//   external int _unique___opaque_item_967;
//   @ffi.Int8()
//   external int _unique___opaque_item_968;
//   @ffi.Int8()
//   external int _unique___opaque_item_969;
//   @ffi.Int8()
//   external int _unique___opaque_item_970;
//   @ffi.Int8()
//   external int _unique___opaque_item_971;
//   @ffi.Int8()
//   external int _unique___opaque_item_972;
//   @ffi.Int8()
//   external int _unique___opaque_item_973;
//   @ffi.Int8()
//   external int _unique___opaque_item_974;
//   @ffi.Int8()
//   external int _unique___opaque_item_975;
//   @ffi.Int8()
//   external int _unique___opaque_item_976;
//   @ffi.Int8()
//   external int _unique___opaque_item_977;
//   @ffi.Int8()
//   external int _unique___opaque_item_978;
//   @ffi.Int8()
//   external int _unique___opaque_item_979;
//   @ffi.Int8()
//   external int _unique___opaque_item_980;
//   @ffi.Int8()
//   external int _unique___opaque_item_981;
//   @ffi.Int8()
//   external int _unique___opaque_item_982;
//   @ffi.Int8()
//   external int _unique___opaque_item_983;
//   @ffi.Int8()
//   external int _unique___opaque_item_984;
//   @ffi.Int8()
//   external int _unique___opaque_item_985;
//   @ffi.Int8()
//   external int _unique___opaque_item_986;
//   @ffi.Int8()
//   external int _unique___opaque_item_987;
//   @ffi.Int8()
//   external int _unique___opaque_item_988;
//   @ffi.Int8()
//   external int _unique___opaque_item_989;
//   @ffi.Int8()
//   external int _unique___opaque_item_990;
//   @ffi.Int8()
//   external int _unique___opaque_item_991;
//   @ffi.Int8()
//   external int _unique___opaque_item_992;
//   @ffi.Int8()
//   external int _unique___opaque_item_993;
//   @ffi.Int8()
//   external int _unique___opaque_item_994;
//   @ffi.Int8()
//   external int _unique___opaque_item_995;
//   @ffi.Int8()
//   external int _unique___opaque_item_996;
//   @ffi.Int8()
//   external int _unique___opaque_item_997;
//   @ffi.Int8()
//   external int _unique___opaque_item_998;
//   @ffi.Int8()
//   external int _unique___opaque_item_999;
//   @ffi.Int8()
//   external int _unique___opaque_item_1000;
//   @ffi.Int8()
//   external int _unique___opaque_item_1001;
//   @ffi.Int8()
//   external int _unique___opaque_item_1002;
//   @ffi.Int8()
//   external int _unique___opaque_item_1003;
//   @ffi.Int8()
//   external int _unique___opaque_item_1004;
//   @ffi.Int8()
//   external int _unique___opaque_item_1005;
//   @ffi.Int8()
//   external int _unique___opaque_item_1006;
//   @ffi.Int8()
//   external int _unique___opaque_item_1007;
//   @ffi.Int8()
//   external int _unique___opaque_item_1008;
//   @ffi.Int8()
//   external int _unique___opaque_item_1009;
//   @ffi.Int8()
//   external int _unique___opaque_item_1010;
//   @ffi.Int8()
//   external int _unique___opaque_item_1011;
//   @ffi.Int8()
//   external int _unique___opaque_item_1012;
//   @ffi.Int8()
//   external int _unique___opaque_item_1013;
//   @ffi.Int8()
//   external int _unique___opaque_item_1014;
//   @ffi.Int8()
//   external int _unique___opaque_item_1015;
//   @ffi.Int8()
//   external int _unique___opaque_item_1016;
//   @ffi.Int8()
//   external int _unique___opaque_item_1017;
//   @ffi.Int8()
//   external int _unique___opaque_item_1018;
//   @ffi.Int8()
//   external int _unique___opaque_item_1019;
//   @ffi.Int8()
//   external int _unique___opaque_item_1020;
//   @ffi.Int8()
//   external int _unique___opaque_item_1021;
//   @ffi.Int8()
//   external int _unique___opaque_item_1022;
//   @ffi.Int8()
//   external int _unique___opaque_item_1023;
//   @ffi.Int8()
//   external int _unique___opaque_item_1024;
//   @ffi.Int8()
//   external int _unique___opaque_item_1025;
//   @ffi.Int8()
//   external int _unique___opaque_item_1026;
//   @ffi.Int8()
//   external int _unique___opaque_item_1027;
//   @ffi.Int8()
//   external int _unique___opaque_item_1028;
//   @ffi.Int8()
//   external int _unique___opaque_item_1029;
//   @ffi.Int8()
//   external int _unique___opaque_item_1030;
//   @ffi.Int8()
//   external int _unique___opaque_item_1031;
//   @ffi.Int8()
//   external int _unique___opaque_item_1032;
//   @ffi.Int8()
//   external int _unique___opaque_item_1033;
//   @ffi.Int8()
//   external int _unique___opaque_item_1034;
//   @ffi.Int8()
//   external int _unique___opaque_item_1035;
//   @ffi.Int8()
//   external int _unique___opaque_item_1036;
//   @ffi.Int8()
//   external int _unique___opaque_item_1037;
//   @ffi.Int8()
//   external int _unique___opaque_item_1038;
//   @ffi.Int8()
//   external int _unique___opaque_item_1039;
//   @ffi.Int8()
//   external int _unique___opaque_item_1040;
//   @ffi.Int8()
//   external int _unique___opaque_item_1041;
//   @ffi.Int8()
//   external int _unique___opaque_item_1042;
//   @ffi.Int8()
//   external int _unique___opaque_item_1043;
//   @ffi.Int8()
//   external int _unique___opaque_item_1044;
//   @ffi.Int8()
//   external int _unique___opaque_item_1045;
//   @ffi.Int8()
//   external int _unique___opaque_item_1046;
//   @ffi.Int8()
//   external int _unique___opaque_item_1047;
//   @ffi.Int8()
//   external int _unique___opaque_item_1048;
//   @ffi.Int8()
//   external int _unique___opaque_item_1049;
//   @ffi.Int8()
//   external int _unique___opaque_item_1050;
//   @ffi.Int8()
//   external int _unique___opaque_item_1051;
//   @ffi.Int8()
//   external int _unique___opaque_item_1052;
//   @ffi.Int8()
//   external int _unique___opaque_item_1053;
//   @ffi.Int8()
//   external int _unique___opaque_item_1054;
//   @ffi.Int8()
//   external int _unique___opaque_item_1055;
//   @ffi.Int8()
//   external int _unique___opaque_item_1056;
//   @ffi.Int8()
//   external int _unique___opaque_item_1057;
//   @ffi.Int8()
//   external int _unique___opaque_item_1058;
//   @ffi.Int8()
//   external int _unique___opaque_item_1059;
//   @ffi.Int8()
//   external int _unique___opaque_item_1060;
//   @ffi.Int8()
//   external int _unique___opaque_item_1061;
//   @ffi.Int8()
//   external int _unique___opaque_item_1062;
//   @ffi.Int8()
//   external int _unique___opaque_item_1063;
//   @ffi.Int8()
//   external int _unique___opaque_item_1064;
//   @ffi.Int8()
//   external int _unique___opaque_item_1065;
//   @ffi.Int8()
//   external int _unique___opaque_item_1066;
//   @ffi.Int8()
//   external int _unique___opaque_item_1067;
//   @ffi.Int8()
//   external int _unique___opaque_item_1068;
//   @ffi.Int8()
//   external int _unique___opaque_item_1069;
//   @ffi.Int8()
//   external int _unique___opaque_item_1070;
//   @ffi.Int8()
//   external int _unique___opaque_item_1071;
//   @ffi.Int8()
//   external int _unique___opaque_item_1072;
//   @ffi.Int8()
//   external int _unique___opaque_item_1073;
//   @ffi.Int8()
//   external int _unique___opaque_item_1074;
//   @ffi.Int8()
//   external int _unique___opaque_item_1075;
//   @ffi.Int8()
//   external int _unique___opaque_item_1076;
//   @ffi.Int8()
//   external int _unique___opaque_item_1077;
//   @ffi.Int8()
//   external int _unique___opaque_item_1078;
//   @ffi.Int8()
//   external int _unique___opaque_item_1079;
//   @ffi.Int8()
//   external int _unique___opaque_item_1080;
//   @ffi.Int8()
//   external int _unique___opaque_item_1081;
//   @ffi.Int8()
//   external int _unique___opaque_item_1082;
//   @ffi.Int8()
//   external int _unique___opaque_item_1083;
//   @ffi.Int8()
//   external int _unique___opaque_item_1084;
//   @ffi.Int8()
//   external int _unique___opaque_item_1085;
//   @ffi.Int8()
//   external int _unique___opaque_item_1086;
//   @ffi.Int8()
//   external int _unique___opaque_item_1087;
//   @ffi.Int8()
//   external int _unique___opaque_item_1088;
//   @ffi.Int8()
//   external int _unique___opaque_item_1089;
//   @ffi.Int8()
//   external int _unique___opaque_item_1090;
//   @ffi.Int8()
//   external int _unique___opaque_item_1091;
//   @ffi.Int8()
//   external int _unique___opaque_item_1092;
//   @ffi.Int8()
//   external int _unique___opaque_item_1093;
//   @ffi.Int8()
//   external int _unique___opaque_item_1094;
//   @ffi.Int8()
//   external int _unique___opaque_item_1095;
//   @ffi.Int8()
//   external int _unique___opaque_item_1096;
//   @ffi.Int8()
//   external int _unique___opaque_item_1097;
//   @ffi.Int8()
//   external int _unique___opaque_item_1098;
//   @ffi.Int8()
//   external int _unique___opaque_item_1099;
//   @ffi.Int8()
//   external int _unique___opaque_item_1100;
//   @ffi.Int8()
//   external int _unique___opaque_item_1101;
//   @ffi.Int8()
//   external int _unique___opaque_item_1102;
//   @ffi.Int8()
//   external int _unique___opaque_item_1103;
//   @ffi.Int8()
//   external int _unique___opaque_item_1104;
//   @ffi.Int8()
//   external int _unique___opaque_item_1105;
//   @ffi.Int8()
//   external int _unique___opaque_item_1106;
//   @ffi.Int8()
//   external int _unique___opaque_item_1107;
//   @ffi.Int8()
//   external int _unique___opaque_item_1108;
//   @ffi.Int8()
//   external int _unique___opaque_item_1109;
//   @ffi.Int8()
//   external int _unique___opaque_item_1110;
//   @ffi.Int8()
//   external int _unique___opaque_item_1111;
//   @ffi.Int8()
//   external int _unique___opaque_item_1112;
//   @ffi.Int8()
//   external int _unique___opaque_item_1113;
//   @ffi.Int8()
//   external int _unique___opaque_item_1114;
//   @ffi.Int8()
//   external int _unique___opaque_item_1115;
//   @ffi.Int8()
//   external int _unique___opaque_item_1116;
//   @ffi.Int8()
//   external int _unique___opaque_item_1117;
//   @ffi.Int8()
//   external int _unique___opaque_item_1118;
//   @ffi.Int8()
//   external int _unique___opaque_item_1119;
//   @ffi.Int8()
//   external int _unique___opaque_item_1120;
//   @ffi.Int8()
//   external int _unique___opaque_item_1121;
//   @ffi.Int8()
//   external int _unique___opaque_item_1122;
//   @ffi.Int8()
//   external int _unique___opaque_item_1123;
//   @ffi.Int8()
//   external int _unique___opaque_item_1124;
//   @ffi.Int8()
//   external int _unique___opaque_item_1125;
//   @ffi.Int8()
//   external int _unique___opaque_item_1126;
//   @ffi.Int8()
//   external int _unique___opaque_item_1127;
//   @ffi.Int8()
//   external int _unique___opaque_item_1128;
//   @ffi.Int8()
//   external int _unique___opaque_item_1129;
//   @ffi.Int8()
//   external int _unique___opaque_item_1130;
//   @ffi.Int8()
//   external int _unique___opaque_item_1131;
//   @ffi.Int8()
//   external int _unique___opaque_item_1132;
//   @ffi.Int8()
//   external int _unique___opaque_item_1133;
//   @ffi.Int8()
//   external int _unique___opaque_item_1134;
//   @ffi.Int8()
//   external int _unique___opaque_item_1135;
//   @ffi.Int8()
//   external int _unique___opaque_item_1136;
//   @ffi.Int8()
//   external int _unique___opaque_item_1137;
//   @ffi.Int8()
//   external int _unique___opaque_item_1138;
//   @ffi.Int8()
//   external int _unique___opaque_item_1139;
//   @ffi.Int8()
//   external int _unique___opaque_item_1140;
//   @ffi.Int8()
//   external int _unique___opaque_item_1141;
//   @ffi.Int8()
//   external int _unique___opaque_item_1142;
//   @ffi.Int8()
//   external int _unique___opaque_item_1143;
//   @ffi.Int8()
//   external int _unique___opaque_item_1144;
//   @ffi.Int8()
//   external int _unique___opaque_item_1145;
//   @ffi.Int8()
//   external int _unique___opaque_item_1146;
//   @ffi.Int8()
//   external int _unique___opaque_item_1147;
//   @ffi.Int8()
//   external int _unique___opaque_item_1148;
//   @ffi.Int8()
//   external int _unique___opaque_item_1149;
//   @ffi.Int8()
//   external int _unique___opaque_item_1150;
//   @ffi.Int8()
//   external int _unique___opaque_item_1151;
//   @ffi.Int8()
//   external int _unique___opaque_item_1152;
//   @ffi.Int8()
//   external int _unique___opaque_item_1153;
//   @ffi.Int8()
//   external int _unique___opaque_item_1154;
//   @ffi.Int8()
//   external int _unique___opaque_item_1155;
//   @ffi.Int8()
//   external int _unique___opaque_item_1156;
//   @ffi.Int8()
//   external int _unique___opaque_item_1157;
//   @ffi.Int8()
//   external int _unique___opaque_item_1158;
//   @ffi.Int8()
//   external int _unique___opaque_item_1159;
//   @ffi.Int8()
//   external int _unique___opaque_item_1160;
//   @ffi.Int8()
//   external int _unique___opaque_item_1161;
//   @ffi.Int8()
//   external int _unique___opaque_item_1162;
//   @ffi.Int8()
//   external int _unique___opaque_item_1163;
//   @ffi.Int8()
//   external int _unique___opaque_item_1164;
//   @ffi.Int8()
//   external int _unique___opaque_item_1165;
//   @ffi.Int8()
//   external int _unique___opaque_item_1166;
//   @ffi.Int8()
//   external int _unique___opaque_item_1167;
//   @ffi.Int8()
//   external int _unique___opaque_item_1168;
//   @ffi.Int8()
//   external int _unique___opaque_item_1169;
//   @ffi.Int8()
//   external int _unique___opaque_item_1170;
//   @ffi.Int8()
//   external int _unique___opaque_item_1171;
//   @ffi.Int8()
//   external int _unique___opaque_item_1172;
//   @ffi.Int8()
//   external int _unique___opaque_item_1173;
//   @ffi.Int8()
//   external int _unique___opaque_item_1174;
//   @ffi.Int8()
//   external int _unique___opaque_item_1175;
//   @ffi.Int8()
//   external int _unique___opaque_item_1176;
//   @ffi.Int8()
//   external int _unique___opaque_item_1177;
//   @ffi.Int8()
//   external int _unique___opaque_item_1178;
//   @ffi.Int8()
//   external int _unique___opaque_item_1179;
//   @ffi.Int8()
//   external int _unique___opaque_item_1180;
//   @ffi.Int8()
//   external int _unique___opaque_item_1181;
//   @ffi.Int8()
//   external int _unique___opaque_item_1182;
//   @ffi.Int8()
//   external int _unique___opaque_item_1183;
//   @ffi.Int8()
//   external int _unique___opaque_item_1184;
//   @ffi.Int8()
//   external int _unique___opaque_item_1185;
//   @ffi.Int8()
//   external int _unique___opaque_item_1186;
//   @ffi.Int8()
//   external int _unique___opaque_item_1187;
//   @ffi.Int8()
//   external int _unique___opaque_item_1188;
//   @ffi.Int8()
//   external int _unique___opaque_item_1189;
//   @ffi.Int8()
//   external int _unique___opaque_item_1190;
//   @ffi.Int8()
//   external int _unique___opaque_item_1191;
//   @ffi.Int8()
//   external int _unique___opaque_item_1192;
//   @ffi.Int8()
//   external int _unique___opaque_item_1193;
//   @ffi.Int8()
//   external int _unique___opaque_item_1194;
//   @ffi.Int8()
//   external int _unique___opaque_item_1195;
//   @ffi.Int8()
//   external int _unique___opaque_item_1196;
//   @ffi.Int8()
//   external int _unique___opaque_item_1197;
//   @ffi.Int8()
//   external int _unique___opaque_item_1198;
//   @ffi.Int8()
//   external int _unique___opaque_item_1199;
//   @ffi.Int8()
//   external int _unique___opaque_item_1200;
//   @ffi.Int8()
//   external int _unique___opaque_item_1201;
//   @ffi.Int8()
//   external int _unique___opaque_item_1202;
//   @ffi.Int8()
//   external int _unique___opaque_item_1203;
//   @ffi.Int8()
//   external int _unique___opaque_item_1204;
//   @ffi.Int8()
//   external int _unique___opaque_item_1205;
//   @ffi.Int8()
//   external int _unique___opaque_item_1206;
//   @ffi.Int8()
//   external int _unique___opaque_item_1207;
//   @ffi.Int8()
//   external int _unique___opaque_item_1208;
//   @ffi.Int8()
//   external int _unique___opaque_item_1209;
//   @ffi.Int8()
//   external int _unique___opaque_item_1210;
//   @ffi.Int8()
//   external int _unique___opaque_item_1211;
//   @ffi.Int8()
//   external int _unique___opaque_item_1212;
//   @ffi.Int8()
//   external int _unique___opaque_item_1213;
//   @ffi.Int8()
//   external int _unique___opaque_item_1214;
//   @ffi.Int8()
//   external int _unique___opaque_item_1215;
//   @ffi.Int8()
//   external int _unique___opaque_item_1216;
//   @ffi.Int8()
//   external int _unique___opaque_item_1217;
//   @ffi.Int8()
//   external int _unique___opaque_item_1218;
//   @ffi.Int8()
//   external int _unique___opaque_item_1219;
//   @ffi.Int8()
//   external int _unique___opaque_item_1220;
//   @ffi.Int8()
//   external int _unique___opaque_item_1221;
//   @ffi.Int8()
//   external int _unique___opaque_item_1222;
//   @ffi.Int8()
//   external int _unique___opaque_item_1223;
//   @ffi.Int8()
//   external int _unique___opaque_item_1224;
//   @ffi.Int8()
//   external int _unique___opaque_item_1225;
//   @ffi.Int8()
//   external int _unique___opaque_item_1226;
//   @ffi.Int8()
//   external int _unique___opaque_item_1227;
//   @ffi.Int8()
//   external int _unique___opaque_item_1228;
//   @ffi.Int8()
//   external int _unique___opaque_item_1229;
//   @ffi.Int8()
//   external int _unique___opaque_item_1230;
//   @ffi.Int8()
//   external int _unique___opaque_item_1231;
//   @ffi.Int8()
//   external int _unique___opaque_item_1232;
//   @ffi.Int8()
//   external int _unique___opaque_item_1233;
//   @ffi.Int8()
//   external int _unique___opaque_item_1234;
//   @ffi.Int8()
//   external int _unique___opaque_item_1235;
//   @ffi.Int8()
//   external int _unique___opaque_item_1236;
//   @ffi.Int8()
//   external int _unique___opaque_item_1237;
//   @ffi.Int8()
//   external int _unique___opaque_item_1238;
//   @ffi.Int8()
//   external int _unique___opaque_item_1239;
//   @ffi.Int8()
//   external int _unique___opaque_item_1240;
//   @ffi.Int8()
//   external int _unique___opaque_item_1241;
//   @ffi.Int8()
//   external int _unique___opaque_item_1242;
//   @ffi.Int8()
//   external int _unique___opaque_item_1243;
//   @ffi.Int8()
//   external int _unique___opaque_item_1244;
//   @ffi.Int8()
//   external int _unique___opaque_item_1245;
//   @ffi.Int8()
//   external int _unique___opaque_item_1246;
//   @ffi.Int8()
//   external int _unique___opaque_item_1247;
//   @ffi.Int8()
//   external int _unique___opaque_item_1248;
//   @ffi.Int8()
//   external int _unique___opaque_item_1249;
//   @ffi.Int8()
//   external int _unique___opaque_item_1250;
//   @ffi.Int8()
//   external int _unique___opaque_item_1251;
//   @ffi.Int8()
//   external int _unique___opaque_item_1252;
//   @ffi.Int8()
//   external int _unique___opaque_item_1253;
//   @ffi.Int8()
//   external int _unique___opaque_item_1254;
//   @ffi.Int8()
//   external int _unique___opaque_item_1255;
//   @ffi.Int8()
//   external int _unique___opaque_item_1256;
//   @ffi.Int8()
//   external int _unique___opaque_item_1257;
//   @ffi.Int8()
//   external int _unique___opaque_item_1258;
//   @ffi.Int8()
//   external int _unique___opaque_item_1259;
//   @ffi.Int8()
//   external int _unique___opaque_item_1260;
//   @ffi.Int8()
//   external int _unique___opaque_item_1261;
//   @ffi.Int8()
//   external int _unique___opaque_item_1262;
//   @ffi.Int8()
//   external int _unique___opaque_item_1263;
//   @ffi.Int8()
//   external int _unique___opaque_item_1264;
//   @ffi.Int8()
//   external int _unique___opaque_item_1265;
//   @ffi.Int8()
//   external int _unique___opaque_item_1266;
//   @ffi.Int8()
//   external int _unique___opaque_item_1267;
//   @ffi.Int8()
//   external int _unique___opaque_item_1268;
//   @ffi.Int8()
//   external int _unique___opaque_item_1269;
//   @ffi.Int8()
//   external int _unique___opaque_item_1270;
//   @ffi.Int8()
//   external int _unique___opaque_item_1271;
//   @ffi.Int8()
//   external int _unique___opaque_item_1272;
//   @ffi.Int8()
//   external int _unique___opaque_item_1273;
//   @ffi.Int8()
//   external int _unique___opaque_item_1274;
//   @ffi.Int8()
//   external int _unique___opaque_item_1275;
//   @ffi.Int8()
//   external int _unique___opaque_item_1276;
//   @ffi.Int8()
//   external int _unique___opaque_item_1277;
//   @ffi.Int8()
//   external int _unique___opaque_item_1278;
//   @ffi.Int8()
//   external int _unique___opaque_item_1279;
//   @ffi.Int8()
//   external int _unique___opaque_item_1280;
//   @ffi.Int8()
//   external int _unique___opaque_item_1281;
//   @ffi.Int8()
//   external int _unique___opaque_item_1282;
//   @ffi.Int8()
//   external int _unique___opaque_item_1283;
//   @ffi.Int8()
//   external int _unique___opaque_item_1284;
//   @ffi.Int8()
//   external int _unique___opaque_item_1285;
//   @ffi.Int8()
//   external int _unique___opaque_item_1286;
//   @ffi.Int8()
//   external int _unique___opaque_item_1287;
//   @ffi.Int8()
//   external int _unique___opaque_item_1288;
//   @ffi.Int8()
//   external int _unique___opaque_item_1289;
//   @ffi.Int8()
//   external int _unique___opaque_item_1290;
//   @ffi.Int8()
//   external int _unique___opaque_item_1291;
//   @ffi.Int8()
//   external int _unique___opaque_item_1292;
//   @ffi.Int8()
//   external int _unique___opaque_item_1293;
//   @ffi.Int8()
//   external int _unique___opaque_item_1294;
//   @ffi.Int8()
//   external int _unique___opaque_item_1295;
//   @ffi.Int8()
//   external int _unique___opaque_item_1296;
//   @ffi.Int8()
//   external int _unique___opaque_item_1297;
//   @ffi.Int8()
//   external int _unique___opaque_item_1298;
//   @ffi.Int8()
//   external int _unique___opaque_item_1299;
//   @ffi.Int8()
//   external int _unique___opaque_item_1300;
//   @ffi.Int8()
//   external int _unique___opaque_item_1301;
//   @ffi.Int8()
//   external int _unique___opaque_item_1302;
//   @ffi.Int8()
//   external int _unique___opaque_item_1303;
//   @ffi.Int8()
//   external int _unique___opaque_item_1304;
//   @ffi.Int8()
//   external int _unique___opaque_item_1305;
//   @ffi.Int8()
//   external int _unique___opaque_item_1306;
//   @ffi.Int8()
//   external int _unique___opaque_item_1307;
//   @ffi.Int8()
//   external int _unique___opaque_item_1308;
//   @ffi.Int8()
//   external int _unique___opaque_item_1309;
//   @ffi.Int8()
//   external int _unique___opaque_item_1310;
//   @ffi.Int8()
//   external int _unique___opaque_item_1311;
//   @ffi.Int8()
//   external int _unique___opaque_item_1312;
//   @ffi.Int8()
//   external int _unique___opaque_item_1313;
//   @ffi.Int8()
//   external int _unique___opaque_item_1314;
//   @ffi.Int8()
//   external int _unique___opaque_item_1315;
//   @ffi.Int8()
//   external int _unique___opaque_item_1316;
//   @ffi.Int8()
//   external int _unique___opaque_item_1317;
//   @ffi.Int8()
//   external int _unique___opaque_item_1318;
//   @ffi.Int8()
//   external int _unique___opaque_item_1319;
//   @ffi.Int8()
//   external int _unique___opaque_item_1320;
//   @ffi.Int8()
//   external int _unique___opaque_item_1321;
//   @ffi.Int8()
//   external int _unique___opaque_item_1322;
//   @ffi.Int8()
//   external int _unique___opaque_item_1323;
//   @ffi.Int8()
//   external int _unique___opaque_item_1324;
//   @ffi.Int8()
//   external int _unique___opaque_item_1325;
//   @ffi.Int8()
//   external int _unique___opaque_item_1326;
//   @ffi.Int8()
//   external int _unique___opaque_item_1327;
//   @ffi.Int8()
//   external int _unique___opaque_item_1328;
//   @ffi.Int8()
//   external int _unique___opaque_item_1329;
//   @ffi.Int8()
//   external int _unique___opaque_item_1330;
//   @ffi.Int8()
//   external int _unique___opaque_item_1331;
//   @ffi.Int8()
//   external int _unique___opaque_item_1332;
//   @ffi.Int8()
//   external int _unique___opaque_item_1333;
//   @ffi.Int8()
//   external int _unique___opaque_item_1334;
//   @ffi.Int8()
//   external int _unique___opaque_item_1335;
//   @ffi.Int8()
//   external int _unique___opaque_item_1336;
//   @ffi.Int8()
//   external int _unique___opaque_item_1337;
//   @ffi.Int8()
//   external int _unique___opaque_item_1338;
//   @ffi.Int8()
//   external int _unique___opaque_item_1339;
//   @ffi.Int8()
//   external int _unique___opaque_item_1340;
//   @ffi.Int8()
//   external int _unique___opaque_item_1341;
//   @ffi.Int8()
//   external int _unique___opaque_item_1342;
//   @ffi.Int8()
//   external int _unique___opaque_item_1343;
//   @ffi.Int8()
//   external int _unique___opaque_item_1344;
//   @ffi.Int8()
//   external int _unique___opaque_item_1345;
//   @ffi.Int8()
//   external int _unique___opaque_item_1346;
//   @ffi.Int8()
//   external int _unique___opaque_item_1347;
//   @ffi.Int8()
//   external int _unique___opaque_item_1348;
//   @ffi.Int8()
//   external int _unique___opaque_item_1349;
//   @ffi.Int8()
//   external int _unique___opaque_item_1350;
//   @ffi.Int8()
//   external int _unique___opaque_item_1351;
//   @ffi.Int8()
//   external int _unique___opaque_item_1352;
//   @ffi.Int8()
//   external int _unique___opaque_item_1353;
//   @ffi.Int8()
//   external int _unique___opaque_item_1354;
//   @ffi.Int8()
//   external int _unique___opaque_item_1355;
//   @ffi.Int8()
//   external int _unique___opaque_item_1356;
//   @ffi.Int8()
//   external int _unique___opaque_item_1357;
//   @ffi.Int8()
//   external int _unique___opaque_item_1358;
//   @ffi.Int8()
//   external int _unique___opaque_item_1359;
//   @ffi.Int8()
//   external int _unique___opaque_item_1360;
//   @ffi.Int8()
//   external int _unique___opaque_item_1361;
//   @ffi.Int8()
//   external int _unique___opaque_item_1362;
//   @ffi.Int8()
//   external int _unique___opaque_item_1363;
//   @ffi.Int8()
//   external int _unique___opaque_item_1364;
//   @ffi.Int8()
//   external int _unique___opaque_item_1365;
//   @ffi.Int8()
//   external int _unique___opaque_item_1366;
//   @ffi.Int8()
//   external int _unique___opaque_item_1367;
//   @ffi.Int8()
//   external int _unique___opaque_item_1368;
//   @ffi.Int8()
//   external int _unique___opaque_item_1369;
//   @ffi.Int8()
//   external int _unique___opaque_item_1370;
//   @ffi.Int8()
//   external int _unique___opaque_item_1371;
//   @ffi.Int8()
//   external int _unique___opaque_item_1372;
//   @ffi.Int8()
//   external int _unique___opaque_item_1373;
//   @ffi.Int8()
//   external int _unique___opaque_item_1374;
//   @ffi.Int8()
//   external int _unique___opaque_item_1375;
//   @ffi.Int8()
//   external int _unique___opaque_item_1376;
//   @ffi.Int8()
//   external int _unique___opaque_item_1377;
//   @ffi.Int8()
//   external int _unique___opaque_item_1378;
//   @ffi.Int8()
//   external int _unique___opaque_item_1379;
//   @ffi.Int8()
//   external int _unique___opaque_item_1380;
//   @ffi.Int8()
//   external int _unique___opaque_item_1381;
//   @ffi.Int8()
//   external int _unique___opaque_item_1382;
//   @ffi.Int8()
//   external int _unique___opaque_item_1383;
//   @ffi.Int8()
//   external int _unique___opaque_item_1384;
//   @ffi.Int8()
//   external int _unique___opaque_item_1385;
//   @ffi.Int8()
//   external int _unique___opaque_item_1386;
//   @ffi.Int8()
//   external int _unique___opaque_item_1387;
//   @ffi.Int8()
//   external int _unique___opaque_item_1388;
//   @ffi.Int8()
//   external int _unique___opaque_item_1389;
//   @ffi.Int8()
//   external int _unique___opaque_item_1390;
//   @ffi.Int8()
//   external int _unique___opaque_item_1391;
//   @ffi.Int8()
//   external int _unique___opaque_item_1392;
//   @ffi.Int8()
//   external int _unique___opaque_item_1393;
//   @ffi.Int8()
//   external int _unique___opaque_item_1394;
//   @ffi.Int8()
//   external int _unique___opaque_item_1395;
//   @ffi.Int8()
//   external int _unique___opaque_item_1396;
//   @ffi.Int8()
//   external int _unique___opaque_item_1397;
//   @ffi.Int8()
//   external int _unique___opaque_item_1398;
//   @ffi.Int8()
//   external int _unique___opaque_item_1399;
//   @ffi.Int8()
//   external int _unique___opaque_item_1400;
//   @ffi.Int8()
//   external int _unique___opaque_item_1401;
//   @ffi.Int8()
//   external int _unique___opaque_item_1402;
//   @ffi.Int8()
//   external int _unique___opaque_item_1403;
//   @ffi.Int8()
//   external int _unique___opaque_item_1404;
//   @ffi.Int8()
//   external int _unique___opaque_item_1405;
//   @ffi.Int8()
//   external int _unique___opaque_item_1406;
//   @ffi.Int8()
//   external int _unique___opaque_item_1407;
//   @ffi.Int8()
//   external int _unique___opaque_item_1408;
//   @ffi.Int8()
//   external int _unique___opaque_item_1409;
//   @ffi.Int8()
//   external int _unique___opaque_item_1410;
//   @ffi.Int8()
//   external int _unique___opaque_item_1411;
//   @ffi.Int8()
//   external int _unique___opaque_item_1412;
//   @ffi.Int8()
//   external int _unique___opaque_item_1413;
//   @ffi.Int8()
//   external int _unique___opaque_item_1414;
//   @ffi.Int8()
//   external int _unique___opaque_item_1415;
//   @ffi.Int8()
//   external int _unique___opaque_item_1416;
//   @ffi.Int8()
//   external int _unique___opaque_item_1417;
//   @ffi.Int8()
//   external int _unique___opaque_item_1418;
//   @ffi.Int8()
//   external int _unique___opaque_item_1419;
//   @ffi.Int8()
//   external int _unique___opaque_item_1420;
//   @ffi.Int8()
//   external int _unique___opaque_item_1421;
//   @ffi.Int8()
//   external int _unique___opaque_item_1422;
//   @ffi.Int8()
//   external int _unique___opaque_item_1423;
//   @ffi.Int8()
//   external int _unique___opaque_item_1424;
//   @ffi.Int8()
//   external int _unique___opaque_item_1425;
//   @ffi.Int8()
//   external int _unique___opaque_item_1426;
//   @ffi.Int8()
//   external int _unique___opaque_item_1427;
//   @ffi.Int8()
//   external int _unique___opaque_item_1428;
//   @ffi.Int8()
//   external int _unique___opaque_item_1429;
//   @ffi.Int8()
//   external int _unique___opaque_item_1430;
//   @ffi.Int8()
//   external int _unique___opaque_item_1431;
//   @ffi.Int8()
//   external int _unique___opaque_item_1432;
//   @ffi.Int8()
//   external int _unique___opaque_item_1433;
//   @ffi.Int8()
//   external int _unique___opaque_item_1434;
//   @ffi.Int8()
//   external int _unique___opaque_item_1435;
//   @ffi.Int8()
//   external int _unique___opaque_item_1436;
//   @ffi.Int8()
//   external int _unique___opaque_item_1437;
//   @ffi.Int8()
//   external int _unique___opaque_item_1438;
//   @ffi.Int8()
//   external int _unique___opaque_item_1439;
//   @ffi.Int8()
//   external int _unique___opaque_item_1440;
//   @ffi.Int8()
//   external int _unique___opaque_item_1441;
//   @ffi.Int8()
//   external int _unique___opaque_item_1442;
//   @ffi.Int8()
//   external int _unique___opaque_item_1443;
//   @ffi.Int8()
//   external int _unique___opaque_item_1444;
//   @ffi.Int8()
//   external int _unique___opaque_item_1445;
//   @ffi.Int8()
//   external int _unique___opaque_item_1446;
//   @ffi.Int8()
//   external int _unique___opaque_item_1447;
//   @ffi.Int8()
//   external int _unique___opaque_item_1448;
//   @ffi.Int8()
//   external int _unique___opaque_item_1449;
//   @ffi.Int8()
//   external int _unique___opaque_item_1450;
//   @ffi.Int8()
//   external int _unique___opaque_item_1451;
//   @ffi.Int8()
//   external int _unique___opaque_item_1452;
//   @ffi.Int8()
//   external int _unique___opaque_item_1453;
//   @ffi.Int8()
//   external int _unique___opaque_item_1454;
//   @ffi.Int8()
//   external int _unique___opaque_item_1455;
//   @ffi.Int8()
//   external int _unique___opaque_item_1456;
//   @ffi.Int8()
//   external int _unique___opaque_item_1457;
//   @ffi.Int8()
//   external int _unique___opaque_item_1458;
//   @ffi.Int8()
//   external int _unique___opaque_item_1459;
//   @ffi.Int8()
//   external int _unique___opaque_item_1460;
//   @ffi.Int8()
//   external int _unique___opaque_item_1461;
//   @ffi.Int8()
//   external int _unique___opaque_item_1462;
//   @ffi.Int8()
//   external int _unique___opaque_item_1463;
//   @ffi.Int8()
//   external int _unique___opaque_item_1464;
//   @ffi.Int8()
//   external int _unique___opaque_item_1465;
//   @ffi.Int8()
//   external int _unique___opaque_item_1466;
//   @ffi.Int8()
//   external int _unique___opaque_item_1467;
//   @ffi.Int8()
//   external int _unique___opaque_item_1468;
//   @ffi.Int8()
//   external int _unique___opaque_item_1469;
//   @ffi.Int8()
//   external int _unique___opaque_item_1470;
//   @ffi.Int8()
//   external int _unique___opaque_item_1471;
//   @ffi.Int8()
//   external int _unique___opaque_item_1472;
//   @ffi.Int8()
//   external int _unique___opaque_item_1473;
//   @ffi.Int8()
//   external int _unique___opaque_item_1474;
//   @ffi.Int8()
//   external int _unique___opaque_item_1475;
//   @ffi.Int8()
//   external int _unique___opaque_item_1476;
//   @ffi.Int8()
//   external int _unique___opaque_item_1477;
//   @ffi.Int8()
//   external int _unique___opaque_item_1478;
//   @ffi.Int8()
//   external int _unique___opaque_item_1479;
//   @ffi.Int8()
//   external int _unique___opaque_item_1480;
//   @ffi.Int8()
//   external int _unique___opaque_item_1481;
//   @ffi.Int8()
//   external int _unique___opaque_item_1482;
//   @ffi.Int8()
//   external int _unique___opaque_item_1483;
//   @ffi.Int8()
//   external int _unique___opaque_item_1484;
//   @ffi.Int8()
//   external int _unique___opaque_item_1485;
//   @ffi.Int8()
//   external int _unique___opaque_item_1486;
//   @ffi.Int8()
//   external int _unique___opaque_item_1487;
//   @ffi.Int8()
//   external int _unique___opaque_item_1488;
//   @ffi.Int8()
//   external int _unique___opaque_item_1489;
//   @ffi.Int8()
//   external int _unique___opaque_item_1490;
//   @ffi.Int8()
//   external int _unique___opaque_item_1491;
//   @ffi.Int8()
//   external int _unique___opaque_item_1492;
//   @ffi.Int8()
//   external int _unique___opaque_item_1493;
//   @ffi.Int8()
//   external int _unique___opaque_item_1494;
//   @ffi.Int8()
//   external int _unique___opaque_item_1495;
//   @ffi.Int8()
//   external int _unique___opaque_item_1496;
//   @ffi.Int8()
//   external int _unique___opaque_item_1497;
//   @ffi.Int8()
//   external int _unique___opaque_item_1498;
//   @ffi.Int8()
//   external int _unique___opaque_item_1499;
//   @ffi.Int8()
//   external int _unique___opaque_item_1500;
//   @ffi.Int8()
//   external int _unique___opaque_item_1501;
//   @ffi.Int8()
//   external int _unique___opaque_item_1502;
//   @ffi.Int8()
//   external int _unique___opaque_item_1503;
//   @ffi.Int8()
//   external int _unique___opaque_item_1504;
//   @ffi.Int8()
//   external int _unique___opaque_item_1505;
//   @ffi.Int8()
//   external int _unique___opaque_item_1506;
//   @ffi.Int8()
//   external int _unique___opaque_item_1507;
//   @ffi.Int8()
//   external int _unique___opaque_item_1508;
//   @ffi.Int8()
//   external int _unique___opaque_item_1509;
//   @ffi.Int8()
//   external int _unique___opaque_item_1510;
//   @ffi.Int8()
//   external int _unique___opaque_item_1511;
//   @ffi.Int8()
//   external int _unique___opaque_item_1512;
//   @ffi.Int8()
//   external int _unique___opaque_item_1513;
//   @ffi.Int8()
//   external int _unique___opaque_item_1514;
//   @ffi.Int8()
//   external int _unique___opaque_item_1515;
//   @ffi.Int8()
//   external int _unique___opaque_item_1516;
//   @ffi.Int8()
//   external int _unique___opaque_item_1517;
//   @ffi.Int8()
//   external int _unique___opaque_item_1518;
//   @ffi.Int8()
//   external int _unique___opaque_item_1519;
//   @ffi.Int8()
//   external int _unique___opaque_item_1520;
//   @ffi.Int8()
//   external int _unique___opaque_item_1521;
//   @ffi.Int8()
//   external int _unique___opaque_item_1522;
//   @ffi.Int8()
//   external int _unique___opaque_item_1523;
//   @ffi.Int8()
//   external int _unique___opaque_item_1524;
//   @ffi.Int8()
//   external int _unique___opaque_item_1525;
//   @ffi.Int8()
//   external int _unique___opaque_item_1526;
//   @ffi.Int8()
//   external int _unique___opaque_item_1527;
//   @ffi.Int8()
//   external int _unique___opaque_item_1528;
//   @ffi.Int8()
//   external int _unique___opaque_item_1529;
//   @ffi.Int8()
//   external int _unique___opaque_item_1530;
//   @ffi.Int8()
//   external int _unique___opaque_item_1531;
//   @ffi.Int8()
//   external int _unique___opaque_item_1532;
//   @ffi.Int8()
//   external int _unique___opaque_item_1533;
//   @ffi.Int8()
//   external int _unique___opaque_item_1534;
//   @ffi.Int8()
//   external int _unique___opaque_item_1535;
//   @ffi.Int8()
//   external int _unique___opaque_item_1536;
//   @ffi.Int8()
//   external int _unique___opaque_item_1537;
//   @ffi.Int8()
//   external int _unique___opaque_item_1538;
//   @ffi.Int8()
//   external int _unique___opaque_item_1539;
//   @ffi.Int8()
//   external int _unique___opaque_item_1540;
//   @ffi.Int8()
//   external int _unique___opaque_item_1541;
//   @ffi.Int8()
//   external int _unique___opaque_item_1542;
//   @ffi.Int8()
//   external int _unique___opaque_item_1543;
//   @ffi.Int8()
//   external int _unique___opaque_item_1544;
//   @ffi.Int8()
//   external int _unique___opaque_item_1545;
//   @ffi.Int8()
//   external int _unique___opaque_item_1546;
//   @ffi.Int8()
//   external int _unique___opaque_item_1547;
//   @ffi.Int8()
//   external int _unique___opaque_item_1548;
//   @ffi.Int8()
//   external int _unique___opaque_item_1549;
//   @ffi.Int8()
//   external int _unique___opaque_item_1550;
//   @ffi.Int8()
//   external int _unique___opaque_item_1551;
//   @ffi.Int8()
//   external int _unique___opaque_item_1552;
//   @ffi.Int8()
//   external int _unique___opaque_item_1553;
//   @ffi.Int8()
//   external int _unique___opaque_item_1554;
//   @ffi.Int8()
//   external int _unique___opaque_item_1555;
//   @ffi.Int8()
//   external int _unique___opaque_item_1556;
//   @ffi.Int8()
//   external int _unique___opaque_item_1557;
//   @ffi.Int8()
//   external int _unique___opaque_item_1558;
//   @ffi.Int8()
//   external int _unique___opaque_item_1559;
//   @ffi.Int8()
//   external int _unique___opaque_item_1560;
//   @ffi.Int8()
//   external int _unique___opaque_item_1561;
//   @ffi.Int8()
//   external int _unique___opaque_item_1562;
//   @ffi.Int8()
//   external int _unique___opaque_item_1563;
//   @ffi.Int8()
//   external int _unique___opaque_item_1564;
//   @ffi.Int8()
//   external int _unique___opaque_item_1565;
//   @ffi.Int8()
//   external int _unique___opaque_item_1566;
//   @ffi.Int8()
//   external int _unique___opaque_item_1567;
//   @ffi.Int8()
//   external int _unique___opaque_item_1568;
//   @ffi.Int8()
//   external int _unique___opaque_item_1569;
//   @ffi.Int8()
//   external int _unique___opaque_item_1570;
//   @ffi.Int8()
//   external int _unique___opaque_item_1571;
//   @ffi.Int8()
//   external int _unique___opaque_item_1572;
//   @ffi.Int8()
//   external int _unique___opaque_item_1573;
//   @ffi.Int8()
//   external int _unique___opaque_item_1574;
//   @ffi.Int8()
//   external int _unique___opaque_item_1575;
//   @ffi.Int8()
//   external int _unique___opaque_item_1576;
//   @ffi.Int8()
//   external int _unique___opaque_item_1577;
//   @ffi.Int8()
//   external int _unique___opaque_item_1578;
//   @ffi.Int8()
//   external int _unique___opaque_item_1579;
//   @ffi.Int8()
//   external int _unique___opaque_item_1580;
//   @ffi.Int8()
//   external int _unique___opaque_item_1581;
//   @ffi.Int8()
//   external int _unique___opaque_item_1582;
//   @ffi.Int8()
//   external int _unique___opaque_item_1583;
//   @ffi.Int8()
//   external int _unique___opaque_item_1584;
//   @ffi.Int8()
//   external int _unique___opaque_item_1585;
//   @ffi.Int8()
//   external int _unique___opaque_item_1586;
//   @ffi.Int8()
//   external int _unique___opaque_item_1587;
//   @ffi.Int8()
//   external int _unique___opaque_item_1588;
//   @ffi.Int8()
//   external int _unique___opaque_item_1589;
//   @ffi.Int8()
//   external int _unique___opaque_item_1590;
//   @ffi.Int8()
//   external int _unique___opaque_item_1591;
//   @ffi.Int8()
//   external int _unique___opaque_item_1592;
//   @ffi.Int8()
//   external int _unique___opaque_item_1593;
//   @ffi.Int8()
//   external int _unique___opaque_item_1594;
//   @ffi.Int8()
//   external int _unique___opaque_item_1595;
//   @ffi.Int8()
//   external int _unique___opaque_item_1596;
//   @ffi.Int8()
//   external int _unique___opaque_item_1597;
//   @ffi.Int8()
//   external int _unique___opaque_item_1598;
//   @ffi.Int8()
//   external int _unique___opaque_item_1599;
//   @ffi.Int8()
//   external int _unique___opaque_item_1600;
//   @ffi.Int8()
//   external int _unique___opaque_item_1601;
//   @ffi.Int8()
//   external int _unique___opaque_item_1602;
//   @ffi.Int8()
//   external int _unique___opaque_item_1603;
//   @ffi.Int8()
//   external int _unique___opaque_item_1604;
//   @ffi.Int8()
//   external int _unique___opaque_item_1605;
//   @ffi.Int8()
//   external int _unique___opaque_item_1606;
//   @ffi.Int8()
//   external int _unique___opaque_item_1607;
//   @ffi.Int8()
//   external int _unique___opaque_item_1608;
//   @ffi.Int8()
//   external int _unique___opaque_item_1609;
//   @ffi.Int8()
//   external int _unique___opaque_item_1610;
//   @ffi.Int8()
//   external int _unique___opaque_item_1611;
//   @ffi.Int8()
//   external int _unique___opaque_item_1612;
//   @ffi.Int8()
//   external int _unique___opaque_item_1613;
//   @ffi.Int8()
//   external int _unique___opaque_item_1614;
//   @ffi.Int8()
//   external int _unique___opaque_item_1615;
//   @ffi.Int8()
//   external int _unique___opaque_item_1616;
//   @ffi.Int8()
//   external int _unique___opaque_item_1617;
//   @ffi.Int8()
//   external int _unique___opaque_item_1618;
//   @ffi.Int8()
//   external int _unique___opaque_item_1619;
//   @ffi.Int8()
//   external int _unique___opaque_item_1620;
//   @ffi.Int8()
//   external int _unique___opaque_item_1621;
//   @ffi.Int8()
//   external int _unique___opaque_item_1622;
//   @ffi.Int8()
//   external int _unique___opaque_item_1623;
//   @ffi.Int8()
//   external int _unique___opaque_item_1624;
//   @ffi.Int8()
//   external int _unique___opaque_item_1625;
//   @ffi.Int8()
//   external int _unique___opaque_item_1626;
//   @ffi.Int8()
//   external int _unique___opaque_item_1627;
//   @ffi.Int8()
//   external int _unique___opaque_item_1628;
//   @ffi.Int8()
//   external int _unique___opaque_item_1629;
//   @ffi.Int8()
//   external int _unique___opaque_item_1630;
//   @ffi.Int8()
//   external int _unique___opaque_item_1631;
//   @ffi.Int8()
//   external int _unique___opaque_item_1632;
//   @ffi.Int8()
//   external int _unique___opaque_item_1633;
//   @ffi.Int8()
//   external int _unique___opaque_item_1634;
//   @ffi.Int8()
//   external int _unique___opaque_item_1635;
//   @ffi.Int8()
//   external int _unique___opaque_item_1636;
//   @ffi.Int8()
//   external int _unique___opaque_item_1637;
//   @ffi.Int8()
//   external int _unique___opaque_item_1638;
//   @ffi.Int8()
//   external int _unique___opaque_item_1639;
//   @ffi.Int8()
//   external int _unique___opaque_item_1640;
//   @ffi.Int8()
//   external int _unique___opaque_item_1641;
//   @ffi.Int8()
//   external int _unique___opaque_item_1642;
//   @ffi.Int8()
//   external int _unique___opaque_item_1643;
//   @ffi.Int8()
//   external int _unique___opaque_item_1644;
//   @ffi.Int8()
//   external int _unique___opaque_item_1645;
//   @ffi.Int8()
//   external int _unique___opaque_item_1646;
//   @ffi.Int8()
//   external int _unique___opaque_item_1647;
//   @ffi.Int8()
//   external int _unique___opaque_item_1648;
//   @ffi.Int8()
//   external int _unique___opaque_item_1649;
//   @ffi.Int8()
//   external int _unique___opaque_item_1650;
//   @ffi.Int8()
//   external int _unique___opaque_item_1651;
//   @ffi.Int8()
//   external int _unique___opaque_item_1652;
//   @ffi.Int8()
//   external int _unique___opaque_item_1653;
//   @ffi.Int8()
//   external int _unique___opaque_item_1654;
//   @ffi.Int8()
//   external int _unique___opaque_item_1655;
//   @ffi.Int8()
//   external int _unique___opaque_item_1656;
//   @ffi.Int8()
//   external int _unique___opaque_item_1657;
//   @ffi.Int8()
//   external int _unique___opaque_item_1658;
//   @ffi.Int8()
//   external int _unique___opaque_item_1659;
//   @ffi.Int8()
//   external int _unique___opaque_item_1660;
//   @ffi.Int8()
//   external int _unique___opaque_item_1661;
//   @ffi.Int8()
//   external int _unique___opaque_item_1662;
//   @ffi.Int8()
//   external int _unique___opaque_item_1663;
//   @ffi.Int8()
//   external int _unique___opaque_item_1664;
//   @ffi.Int8()
//   external int _unique___opaque_item_1665;
//   @ffi.Int8()
//   external int _unique___opaque_item_1666;
//   @ffi.Int8()
//   external int _unique___opaque_item_1667;
//   @ffi.Int8()
//   external int _unique___opaque_item_1668;
//   @ffi.Int8()
//   external int _unique___opaque_item_1669;
//   @ffi.Int8()
//   external int _unique___opaque_item_1670;
//   @ffi.Int8()
//   external int _unique___opaque_item_1671;
//   @ffi.Int8()
//   external int _unique___opaque_item_1672;
//   @ffi.Int8()
//   external int _unique___opaque_item_1673;
//   @ffi.Int8()
//   external int _unique___opaque_item_1674;
//   @ffi.Int8()
//   external int _unique___opaque_item_1675;
//   @ffi.Int8()
//   external int _unique___opaque_item_1676;
//   @ffi.Int8()
//   external int _unique___opaque_item_1677;
//   @ffi.Int8()
//   external int _unique___opaque_item_1678;
//   @ffi.Int8()
//   external int _unique___opaque_item_1679;
//   @ffi.Int8()
//   external int _unique___opaque_item_1680;
//   @ffi.Int8()
//   external int _unique___opaque_item_1681;
//   @ffi.Int8()
//   external int _unique___opaque_item_1682;
//   @ffi.Int8()
//   external int _unique___opaque_item_1683;
//   @ffi.Int8()
//   external int _unique___opaque_item_1684;
//   @ffi.Int8()
//   external int _unique___opaque_item_1685;
//   @ffi.Int8()
//   external int _unique___opaque_item_1686;
//   @ffi.Int8()
//   external int _unique___opaque_item_1687;
//   @ffi.Int8()
//   external int _unique___opaque_item_1688;
//   @ffi.Int8()
//   external int _unique___opaque_item_1689;
//   @ffi.Int8()
//   external int _unique___opaque_item_1690;
//   @ffi.Int8()
//   external int _unique___opaque_item_1691;
//   @ffi.Int8()
//   external int _unique___opaque_item_1692;
//   @ffi.Int8()
//   external int _unique___opaque_item_1693;
//   @ffi.Int8()
//   external int _unique___opaque_item_1694;
//   @ffi.Int8()
//   external int _unique___opaque_item_1695;
//   @ffi.Int8()
//   external int _unique___opaque_item_1696;
//   @ffi.Int8()
//   external int _unique___opaque_item_1697;
//   @ffi.Int8()
//   external int _unique___opaque_item_1698;
//   @ffi.Int8()
//   external int _unique___opaque_item_1699;
//   @ffi.Int8()
//   external int _unique___opaque_item_1700;
//   @ffi.Int8()
//   external int _unique___opaque_item_1701;
//   @ffi.Int8()
//   external int _unique___opaque_item_1702;
//   @ffi.Int8()
//   external int _unique___opaque_item_1703;
//   @ffi.Int8()
//   external int _unique___opaque_item_1704;
//   @ffi.Int8()
//   external int _unique___opaque_item_1705;
//   @ffi.Int8()
//   external int _unique___opaque_item_1706;
//   @ffi.Int8()
//   external int _unique___opaque_item_1707;
//   @ffi.Int8()
//   external int _unique___opaque_item_1708;
//   @ffi.Int8()
//   external int _unique___opaque_item_1709;
//   @ffi.Int8()
//   external int _unique___opaque_item_1710;
//   @ffi.Int8()
//   external int _unique___opaque_item_1711;
//   @ffi.Int8()
//   external int _unique___opaque_item_1712;
//   @ffi.Int8()
//   external int _unique___opaque_item_1713;
//   @ffi.Int8()
//   external int _unique___opaque_item_1714;
//   @ffi.Int8()
//   external int _unique___opaque_item_1715;
//   @ffi.Int8()
//   external int _unique___opaque_item_1716;
//   @ffi.Int8()
//   external int _unique___opaque_item_1717;
//   @ffi.Int8()
//   external int _unique___opaque_item_1718;
//   @ffi.Int8()
//   external int _unique___opaque_item_1719;
//   @ffi.Int8()
//   external int _unique___opaque_item_1720;
//   @ffi.Int8()
//   external int _unique___opaque_item_1721;
//   @ffi.Int8()
//   external int _unique___opaque_item_1722;
//   @ffi.Int8()
//   external int _unique___opaque_item_1723;
//   @ffi.Int8()
//   external int _unique___opaque_item_1724;
//   @ffi.Int8()
//   external int _unique___opaque_item_1725;
//   @ffi.Int8()
//   external int _unique___opaque_item_1726;
//   @ffi.Int8()
//   external int _unique___opaque_item_1727;
//   @ffi.Int8()
//   external int _unique___opaque_item_1728;
//   @ffi.Int8()
//   external int _unique___opaque_item_1729;
//   @ffi.Int8()
//   external int _unique___opaque_item_1730;
//   @ffi.Int8()
//   external int _unique___opaque_item_1731;
//   @ffi.Int8()
//   external int _unique___opaque_item_1732;
//   @ffi.Int8()
//   external int _unique___opaque_item_1733;
//   @ffi.Int8()
//   external int _unique___opaque_item_1734;
//   @ffi.Int8()
//   external int _unique___opaque_item_1735;
//   @ffi.Int8()
//   external int _unique___opaque_item_1736;
//   @ffi.Int8()
//   external int _unique___opaque_item_1737;
//   @ffi.Int8()
//   external int _unique___opaque_item_1738;
//   @ffi.Int8()
//   external int _unique___opaque_item_1739;
//   @ffi.Int8()
//   external int _unique___opaque_item_1740;
//   @ffi.Int8()
//   external int _unique___opaque_item_1741;
//   @ffi.Int8()
//   external int _unique___opaque_item_1742;
//   @ffi.Int8()
//   external int _unique___opaque_item_1743;
//   @ffi.Int8()
//   external int _unique___opaque_item_1744;
//   @ffi.Int8()
//   external int _unique___opaque_item_1745;
//   @ffi.Int8()
//   external int _unique___opaque_item_1746;
//   @ffi.Int8()
//   external int _unique___opaque_item_1747;
//   @ffi.Int8()
//   external int _unique___opaque_item_1748;
//   @ffi.Int8()
//   external int _unique___opaque_item_1749;
//   @ffi.Int8()
//   external int _unique___opaque_item_1750;
//   @ffi.Int8()
//   external int _unique___opaque_item_1751;
//   @ffi.Int8()
//   external int _unique___opaque_item_1752;
//   @ffi.Int8()
//   external int _unique___opaque_item_1753;
//   @ffi.Int8()
//   external int _unique___opaque_item_1754;
//   @ffi.Int8()
//   external int _unique___opaque_item_1755;
//   @ffi.Int8()
//   external int _unique___opaque_item_1756;
//   @ffi.Int8()
//   external int _unique___opaque_item_1757;
//   @ffi.Int8()
//   external int _unique___opaque_item_1758;
//   @ffi.Int8()
//   external int _unique___opaque_item_1759;
//   @ffi.Int8()
//   external int _unique___opaque_item_1760;
//   @ffi.Int8()
//   external int _unique___opaque_item_1761;
//   @ffi.Int8()
//   external int _unique___opaque_item_1762;
//   @ffi.Int8()
//   external int _unique___opaque_item_1763;
//   @ffi.Int8()
//   external int _unique___opaque_item_1764;
//   @ffi.Int8()
//   external int _unique___opaque_item_1765;
//   @ffi.Int8()
//   external int _unique___opaque_item_1766;
//   @ffi.Int8()
//   external int _unique___opaque_item_1767;
//   @ffi.Int8()
//   external int _unique___opaque_item_1768;
//   @ffi.Int8()
//   external int _unique___opaque_item_1769;
//   @ffi.Int8()
//   external int _unique___opaque_item_1770;
//   @ffi.Int8()
//   external int _unique___opaque_item_1771;
//   @ffi.Int8()
//   external int _unique___opaque_item_1772;
//   @ffi.Int8()
//   external int _unique___opaque_item_1773;
//   @ffi.Int8()
//   external int _unique___opaque_item_1774;
//   @ffi.Int8()
//   external int _unique___opaque_item_1775;
//   @ffi.Int8()
//   external int _unique___opaque_item_1776;
//   @ffi.Int8()
//   external int _unique___opaque_item_1777;
//   @ffi.Int8()
//   external int _unique___opaque_item_1778;
//   @ffi.Int8()
//   external int _unique___opaque_item_1779;
//   @ffi.Int8()
//   external int _unique___opaque_item_1780;
//   @ffi.Int8()
//   external int _unique___opaque_item_1781;
//   @ffi.Int8()
//   external int _unique___opaque_item_1782;
//   @ffi.Int8()
//   external int _unique___opaque_item_1783;
//   @ffi.Int8()
//   external int _unique___opaque_item_1784;
//   @ffi.Int8()
//   external int _unique___opaque_item_1785;
//   @ffi.Int8()
//   external int _unique___opaque_item_1786;
//   @ffi.Int8()
//   external int _unique___opaque_item_1787;
//   @ffi.Int8()
//   external int _unique___opaque_item_1788;
//   @ffi.Int8()
//   external int _unique___opaque_item_1789;
//   @ffi.Int8()
//   external int _unique___opaque_item_1790;
//   @ffi.Int8()
//   external int _unique___opaque_item_1791;
//   @ffi.Int8()
//   external int _unique___opaque_item_1792;
//   @ffi.Int8()
//   external int _unique___opaque_item_1793;
//   @ffi.Int8()
//   external int _unique___opaque_item_1794;
//   @ffi.Int8()
//   external int _unique___opaque_item_1795;
//   @ffi.Int8()
//   external int _unique___opaque_item_1796;
//   @ffi.Int8()
//   external int _unique___opaque_item_1797;
//   @ffi.Int8()
//   external int _unique___opaque_item_1798;
//   @ffi.Int8()
//   external int _unique___opaque_item_1799;
//   @ffi.Int8()
//   external int _unique___opaque_item_1800;
//   @ffi.Int8()
//   external int _unique___opaque_item_1801;
//   @ffi.Int8()
//   external int _unique___opaque_item_1802;
//   @ffi.Int8()
//   external int _unique___opaque_item_1803;
//   @ffi.Int8()
//   external int _unique___opaque_item_1804;
//   @ffi.Int8()
//   external int _unique___opaque_item_1805;
//   @ffi.Int8()
//   external int _unique___opaque_item_1806;
//   @ffi.Int8()
//   external int _unique___opaque_item_1807;
//   @ffi.Int8()
//   external int _unique___opaque_item_1808;
//   @ffi.Int8()
//   external int _unique___opaque_item_1809;
//   @ffi.Int8()
//   external int _unique___opaque_item_1810;
//   @ffi.Int8()
//   external int _unique___opaque_item_1811;
//   @ffi.Int8()
//   external int _unique___opaque_item_1812;
//   @ffi.Int8()
//   external int _unique___opaque_item_1813;
//   @ffi.Int8()
//   external int _unique___opaque_item_1814;
//   @ffi.Int8()
//   external int _unique___opaque_item_1815;
//   @ffi.Int8()
//   external int _unique___opaque_item_1816;
//   @ffi.Int8()
//   external int _unique___opaque_item_1817;
//   @ffi.Int8()
//   external int _unique___opaque_item_1818;
//   @ffi.Int8()
//   external int _unique___opaque_item_1819;
//   @ffi.Int8()
//   external int _unique___opaque_item_1820;
//   @ffi.Int8()
//   external int _unique___opaque_item_1821;
//   @ffi.Int8()
//   external int _unique___opaque_item_1822;
//   @ffi.Int8()
//   external int _unique___opaque_item_1823;
//   @ffi.Int8()
//   external int _unique___opaque_item_1824;
//   @ffi.Int8()
//   external int _unique___opaque_item_1825;
//   @ffi.Int8()
//   external int _unique___opaque_item_1826;
//   @ffi.Int8()
//   external int _unique___opaque_item_1827;
//   @ffi.Int8()
//   external int _unique___opaque_item_1828;
//   @ffi.Int8()
//   external int _unique___opaque_item_1829;
//   @ffi.Int8()
//   external int _unique___opaque_item_1830;
//   @ffi.Int8()
//   external int _unique___opaque_item_1831;
//   @ffi.Int8()
//   external int _unique___opaque_item_1832;
//   @ffi.Int8()
//   external int _unique___opaque_item_1833;
//   @ffi.Int8()
//   external int _unique___opaque_item_1834;
//   @ffi.Int8()
//   external int _unique___opaque_item_1835;
//   @ffi.Int8()
//   external int _unique___opaque_item_1836;
//   @ffi.Int8()
//   external int _unique___opaque_item_1837;
//   @ffi.Int8()
//   external int _unique___opaque_item_1838;
//   @ffi.Int8()
//   external int _unique___opaque_item_1839;
//   @ffi.Int8()
//   external int _unique___opaque_item_1840;
//   @ffi.Int8()
//   external int _unique___opaque_item_1841;
//   @ffi.Int8()
//   external int _unique___opaque_item_1842;
//   @ffi.Int8()
//   external int _unique___opaque_item_1843;
//   @ffi.Int8()
//   external int _unique___opaque_item_1844;
//   @ffi.Int8()
//   external int _unique___opaque_item_1845;
//   @ffi.Int8()
//   external int _unique___opaque_item_1846;
//   @ffi.Int8()
//   external int _unique___opaque_item_1847;
//   @ffi.Int8()
//   external int _unique___opaque_item_1848;
//   @ffi.Int8()
//   external int _unique___opaque_item_1849;
//   @ffi.Int8()
//   external int _unique___opaque_item_1850;
//   @ffi.Int8()
//   external int _unique___opaque_item_1851;
//   @ffi.Int8()
//   external int _unique___opaque_item_1852;
//   @ffi.Int8()
//   external int _unique___opaque_item_1853;
//   @ffi.Int8()
//   external int _unique___opaque_item_1854;
//   @ffi.Int8()
//   external int _unique___opaque_item_1855;
//   @ffi.Int8()
//   external int _unique___opaque_item_1856;
//   @ffi.Int8()
//   external int _unique___opaque_item_1857;
//   @ffi.Int8()
//   external int _unique___opaque_item_1858;
//   @ffi.Int8()
//   external int _unique___opaque_item_1859;
//   @ffi.Int8()
//   external int _unique___opaque_item_1860;
//   @ffi.Int8()
//   external int _unique___opaque_item_1861;
//   @ffi.Int8()
//   external int _unique___opaque_item_1862;
//   @ffi.Int8()
//   external int _unique___opaque_item_1863;
//   @ffi.Int8()
//   external int _unique___opaque_item_1864;
//   @ffi.Int8()
//   external int _unique___opaque_item_1865;
//   @ffi.Int8()
//   external int _unique___opaque_item_1866;
//   @ffi.Int8()
//   external int _unique___opaque_item_1867;
//   @ffi.Int8()
//   external int _unique___opaque_item_1868;
//   @ffi.Int8()
//   external int _unique___opaque_item_1869;
//   @ffi.Int8()
//   external int _unique___opaque_item_1870;
//   @ffi.Int8()
//   external int _unique___opaque_item_1871;
//   @ffi.Int8()
//   external int _unique___opaque_item_1872;
//   @ffi.Int8()
//   external int _unique___opaque_item_1873;
//   @ffi.Int8()
//   external int _unique___opaque_item_1874;
//   @ffi.Int8()
//   external int _unique___opaque_item_1875;
//   @ffi.Int8()
//   external int _unique___opaque_item_1876;
//   @ffi.Int8()
//   external int _unique___opaque_item_1877;
//   @ffi.Int8()
//   external int _unique___opaque_item_1878;
//   @ffi.Int8()
//   external int _unique___opaque_item_1879;
//   @ffi.Int8()
//   external int _unique___opaque_item_1880;
//   @ffi.Int8()
//   external int _unique___opaque_item_1881;
//   @ffi.Int8()
//   external int _unique___opaque_item_1882;
//   @ffi.Int8()
//   external int _unique___opaque_item_1883;
//   @ffi.Int8()
//   external int _unique___opaque_item_1884;
//   @ffi.Int8()
//   external int _unique___opaque_item_1885;
//   @ffi.Int8()
//   external int _unique___opaque_item_1886;
//   @ffi.Int8()
//   external int _unique___opaque_item_1887;
//   @ffi.Int8()
//   external int _unique___opaque_item_1888;
//   @ffi.Int8()
//   external int _unique___opaque_item_1889;
//   @ffi.Int8()
//   external int _unique___opaque_item_1890;
//   @ffi.Int8()
//   external int _unique___opaque_item_1891;
//   @ffi.Int8()
//   external int _unique___opaque_item_1892;
//   @ffi.Int8()
//   external int _unique___opaque_item_1893;
//   @ffi.Int8()
//   external int _unique___opaque_item_1894;
//   @ffi.Int8()
//   external int _unique___opaque_item_1895;
//   @ffi.Int8()
//   external int _unique___opaque_item_1896;
//   @ffi.Int8()
//   external int _unique___opaque_item_1897;
//   @ffi.Int8()
//   external int _unique___opaque_item_1898;
//   @ffi.Int8()
//   external int _unique___opaque_item_1899;
//   @ffi.Int8()
//   external int _unique___opaque_item_1900;
//   @ffi.Int8()
//   external int _unique___opaque_item_1901;
//   @ffi.Int8()
//   external int _unique___opaque_item_1902;
//   @ffi.Int8()
//   external int _unique___opaque_item_1903;
//   @ffi.Int8()
//   external int _unique___opaque_item_1904;
//   @ffi.Int8()
//   external int _unique___opaque_item_1905;
//   @ffi.Int8()
//   external int _unique___opaque_item_1906;
//   @ffi.Int8()
//   external int _unique___opaque_item_1907;
//   @ffi.Int8()
//   external int _unique___opaque_item_1908;
//   @ffi.Int8()
//   external int _unique___opaque_item_1909;
//   @ffi.Int8()
//   external int _unique___opaque_item_1910;
//   @ffi.Int8()
//   external int _unique___opaque_item_1911;
//   @ffi.Int8()
//   external int _unique___opaque_item_1912;
//   @ffi.Int8()
//   external int _unique___opaque_item_1913;
//   @ffi.Int8()
//   external int _unique___opaque_item_1914;
//   @ffi.Int8()
//   external int _unique___opaque_item_1915;
//   @ffi.Int8()
//   external int _unique___opaque_item_1916;
//   @ffi.Int8()
//   external int _unique___opaque_item_1917;
//   @ffi.Int8()
//   external int _unique___opaque_item_1918;
//   @ffi.Int8()
//   external int _unique___opaque_item_1919;
//   @ffi.Int8()
//   external int _unique___opaque_item_1920;
//   @ffi.Int8()
//   external int _unique___opaque_item_1921;
//   @ffi.Int8()
//   external int _unique___opaque_item_1922;
//   @ffi.Int8()
//   external int _unique___opaque_item_1923;
//   @ffi.Int8()
//   external int _unique___opaque_item_1924;
//   @ffi.Int8()
//   external int _unique___opaque_item_1925;
//   @ffi.Int8()
//   external int _unique___opaque_item_1926;
//   @ffi.Int8()
//   external int _unique___opaque_item_1927;
//   @ffi.Int8()
//   external int _unique___opaque_item_1928;
//   @ffi.Int8()
//   external int _unique___opaque_item_1929;
//   @ffi.Int8()
//   external int _unique___opaque_item_1930;
//   @ffi.Int8()
//   external int _unique___opaque_item_1931;
//   @ffi.Int8()
//   external int _unique___opaque_item_1932;
//   @ffi.Int8()
//   external int _unique___opaque_item_1933;
//   @ffi.Int8()
//   external int _unique___opaque_item_1934;
//   @ffi.Int8()
//   external int _unique___opaque_item_1935;
//   @ffi.Int8()
//   external int _unique___opaque_item_1936;
//   @ffi.Int8()
//   external int _unique___opaque_item_1937;
//   @ffi.Int8()
//   external int _unique___opaque_item_1938;
//   @ffi.Int8()
//   external int _unique___opaque_item_1939;
//   @ffi.Int8()
//   external int _unique___opaque_item_1940;
//   @ffi.Int8()
//   external int _unique___opaque_item_1941;
//   @ffi.Int8()
//   external int _unique___opaque_item_1942;
//   @ffi.Int8()
//   external int _unique___opaque_item_1943;
//   @ffi.Int8()
//   external int _unique___opaque_item_1944;
//   @ffi.Int8()
//   external int _unique___opaque_item_1945;
//   @ffi.Int8()
//   external int _unique___opaque_item_1946;
//   @ffi.Int8()
//   external int _unique___opaque_item_1947;
//   @ffi.Int8()
//   external int _unique___opaque_item_1948;
//   @ffi.Int8()
//   external int _unique___opaque_item_1949;
//   @ffi.Int8()
//   external int _unique___opaque_item_1950;
//   @ffi.Int8()
//   external int _unique___opaque_item_1951;
//   @ffi.Int8()
//   external int _unique___opaque_item_1952;
//   @ffi.Int8()
//   external int _unique___opaque_item_1953;
//   @ffi.Int8()
//   external int _unique___opaque_item_1954;
//   @ffi.Int8()
//   external int _unique___opaque_item_1955;
//   @ffi.Int8()
//   external int _unique___opaque_item_1956;
//   @ffi.Int8()
//   external int _unique___opaque_item_1957;
//   @ffi.Int8()
//   external int _unique___opaque_item_1958;
//   @ffi.Int8()
//   external int _unique___opaque_item_1959;
//   @ffi.Int8()
//   external int _unique___opaque_item_1960;
//   @ffi.Int8()
//   external int _unique___opaque_item_1961;
//   @ffi.Int8()
//   external int _unique___opaque_item_1962;
//   @ffi.Int8()
//   external int _unique___opaque_item_1963;
//   @ffi.Int8()
//   external int _unique___opaque_item_1964;
//   @ffi.Int8()
//   external int _unique___opaque_item_1965;
//   @ffi.Int8()
//   external int _unique___opaque_item_1966;
//   @ffi.Int8()
//   external int _unique___opaque_item_1967;
//   @ffi.Int8()
//   external int _unique___opaque_item_1968;
//   @ffi.Int8()
//   external int _unique___opaque_item_1969;
//   @ffi.Int8()
//   external int _unique___opaque_item_1970;
//   @ffi.Int8()
//   external int _unique___opaque_item_1971;
//   @ffi.Int8()
//   external int _unique___opaque_item_1972;
//   @ffi.Int8()
//   external int _unique___opaque_item_1973;
//   @ffi.Int8()
//   external int _unique___opaque_item_1974;
//   @ffi.Int8()
//   external int _unique___opaque_item_1975;
//   @ffi.Int8()
//   external int _unique___opaque_item_1976;
//   @ffi.Int8()
//   external int _unique___opaque_item_1977;
//   @ffi.Int8()
//   external int _unique___opaque_item_1978;
//   @ffi.Int8()
//   external int _unique___opaque_item_1979;
//   @ffi.Int8()
//   external int _unique___opaque_item_1980;
//   @ffi.Int8()
//   external int _unique___opaque_item_1981;
//   @ffi.Int8()
//   external int _unique___opaque_item_1982;
//   @ffi.Int8()
//   external int _unique___opaque_item_1983;
//   @ffi.Int8()
//   external int _unique___opaque_item_1984;
//   @ffi.Int8()
//   external int _unique___opaque_item_1985;
//   @ffi.Int8()
//   external int _unique___opaque_item_1986;
//   @ffi.Int8()
//   external int _unique___opaque_item_1987;
//   @ffi.Int8()
//   external int _unique___opaque_item_1988;
//   @ffi.Int8()
//   external int _unique___opaque_item_1989;
//   @ffi.Int8()
//   external int _unique___opaque_item_1990;
//   @ffi.Int8()
//   external int _unique___opaque_item_1991;
//   @ffi.Int8()
//   external int _unique___opaque_item_1992;
//   @ffi.Int8()
//   external int _unique___opaque_item_1993;
//   @ffi.Int8()
//   external int _unique___opaque_item_1994;
//   @ffi.Int8()
//   external int _unique___opaque_item_1995;
//   @ffi.Int8()
//   external int _unique___opaque_item_1996;
//   @ffi.Int8()
//   external int _unique___opaque_item_1997;
//   @ffi.Int8()
//   external int _unique___opaque_item_1998;
//   @ffi.Int8()
//   external int _unique___opaque_item_1999;
//   @ffi.Int8()
//   external int _unique___opaque_item_2000;
//   @ffi.Int8()
//   external int _unique___opaque_item_2001;
//   @ffi.Int8()
//   external int _unique___opaque_item_2002;
//   @ffi.Int8()
//   external int _unique___opaque_item_2003;
//   @ffi.Int8()
//   external int _unique___opaque_item_2004;
//   @ffi.Int8()
//   external int _unique___opaque_item_2005;
//   @ffi.Int8()
//   external int _unique___opaque_item_2006;
//   @ffi.Int8()
//   external int _unique___opaque_item_2007;
//   @ffi.Int8()
//   external int _unique___opaque_item_2008;
//   @ffi.Int8()
//   external int _unique___opaque_item_2009;
//   @ffi.Int8()
//   external int _unique___opaque_item_2010;
//   @ffi.Int8()
//   external int _unique___opaque_item_2011;
//   @ffi.Int8()
//   external int _unique___opaque_item_2012;
//   @ffi.Int8()
//   external int _unique___opaque_item_2013;
//   @ffi.Int8()
//   external int _unique___opaque_item_2014;
//   @ffi.Int8()
//   external int _unique___opaque_item_2015;
//   @ffi.Int8()
//   external int _unique___opaque_item_2016;
//   @ffi.Int8()
//   external int _unique___opaque_item_2017;
//   @ffi.Int8()
//   external int _unique___opaque_item_2018;
//   @ffi.Int8()
//   external int _unique___opaque_item_2019;
//   @ffi.Int8()
//   external int _unique___opaque_item_2020;
//   @ffi.Int8()
//   external int _unique___opaque_item_2021;
//   @ffi.Int8()
//   external int _unique___opaque_item_2022;
//   @ffi.Int8()
//   external int _unique___opaque_item_2023;
//   @ffi.Int8()
//   external int _unique___opaque_item_2024;
//   @ffi.Int8()
//   external int _unique___opaque_item_2025;
//   @ffi.Int8()
//   external int _unique___opaque_item_2026;
//   @ffi.Int8()
//   external int _unique___opaque_item_2027;
//   @ffi.Int8()
//   external int _unique___opaque_item_2028;
//   @ffi.Int8()
//   external int _unique___opaque_item_2029;
//   @ffi.Int8()
//   external int _unique___opaque_item_2030;
//   @ffi.Int8()
//   external int _unique___opaque_item_2031;
//   @ffi.Int8()
//   external int _unique___opaque_item_2032;
//   @ffi.Int8()
//   external int _unique___opaque_item_2033;
//   @ffi.Int8()
//   external int _unique___opaque_item_2034;
//   @ffi.Int8()
//   external int _unique___opaque_item_2035;
//   @ffi.Int8()
//   external int _unique___opaque_item_2036;
//   @ffi.Int8()
//   external int _unique___opaque_item_2037;
//   @ffi.Int8()
//   external int _unique___opaque_item_2038;
//   @ffi.Int8()
//   external int _unique___opaque_item_2039;
//   @ffi.Int8()
//   external int _unique___opaque_item_2040;
//   @ffi.Int8()
//   external int _unique___opaque_item_2041;
//   @ffi.Int8()
//   external int _unique___opaque_item_2042;
//   @ffi.Int8()
//   external int _unique___opaque_item_2043;
//   @ffi.Int8()
//   external int _unique___opaque_item_2044;
//   @ffi.Int8()
//   external int _unique___opaque_item_2045;
//   @ffi.Int8()
//   external int _unique___opaque_item_2046;
//   @ffi.Int8()
//   external int _unique___opaque_item_2047;
//   @ffi.Int8()
//   external int _unique___opaque_item_2048;
//   @ffi.Int8()
//   external int _unique___opaque_item_2049;
//   @ffi.Int8()
//   external int _unique___opaque_item_2050;
//   @ffi.Int8()
//   external int _unique___opaque_item_2051;
//   @ffi.Int8()
//   external int _unique___opaque_item_2052;
//   @ffi.Int8()
//   external int _unique___opaque_item_2053;
//   @ffi.Int8()
//   external int _unique___opaque_item_2054;
//   @ffi.Int8()
//   external int _unique___opaque_item_2055;
//   @ffi.Int8()
//   external int _unique___opaque_item_2056;
//   @ffi.Int8()
//   external int _unique___opaque_item_2057;
//   @ffi.Int8()
//   external int _unique___opaque_item_2058;
//   @ffi.Int8()
//   external int _unique___opaque_item_2059;
//   @ffi.Int8()
//   external int _unique___opaque_item_2060;
//   @ffi.Int8()
//   external int _unique___opaque_item_2061;
//   @ffi.Int8()
//   external int _unique___opaque_item_2062;
//   @ffi.Int8()
//   external int _unique___opaque_item_2063;
//   @ffi.Int8()
//   external int _unique___opaque_item_2064;
//   @ffi.Int8()
//   external int _unique___opaque_item_2065;
//   @ffi.Int8()
//   external int _unique___opaque_item_2066;
//   @ffi.Int8()
//   external int _unique___opaque_item_2067;
//   @ffi.Int8()
//   external int _unique___opaque_item_2068;
//   @ffi.Int8()
//   external int _unique___opaque_item_2069;
//   @ffi.Int8()
//   external int _unique___opaque_item_2070;
//   @ffi.Int8()
//   external int _unique___opaque_item_2071;
//   @ffi.Int8()
//   external int _unique___opaque_item_2072;
//   @ffi.Int8()
//   external int _unique___opaque_item_2073;
//   @ffi.Int8()
//   external int _unique___opaque_item_2074;
//   @ffi.Int8()
//   external int _unique___opaque_item_2075;
//   @ffi.Int8()
//   external int _unique___opaque_item_2076;
//   @ffi.Int8()
//   external int _unique___opaque_item_2077;
//   @ffi.Int8()
//   external int _unique___opaque_item_2078;
//   @ffi.Int8()
//   external int _unique___opaque_item_2079;
//   @ffi.Int8()
//   external int _unique___opaque_item_2080;
//   @ffi.Int8()
//   external int _unique___opaque_item_2081;
//   @ffi.Int8()
//   external int _unique___opaque_item_2082;
//   @ffi.Int8()
//   external int _unique___opaque_item_2083;
//   @ffi.Int8()
//   external int _unique___opaque_item_2084;
//   @ffi.Int8()
//   external int _unique___opaque_item_2085;
//   @ffi.Int8()
//   external int _unique___opaque_item_2086;
//   @ffi.Int8()
//   external int _unique___opaque_item_2087;
//   @ffi.Int8()
//   external int _unique___opaque_item_2088;
//   @ffi.Int8()
//   external int _unique___opaque_item_2089;
//   @ffi.Int8()
//   external int _unique___opaque_item_2090;
//   @ffi.Int8()
//   external int _unique___opaque_item_2091;
//   @ffi.Int8()
//   external int _unique___opaque_item_2092;
//   @ffi.Int8()
//   external int _unique___opaque_item_2093;
//   @ffi.Int8()
//   external int _unique___opaque_item_2094;
//   @ffi.Int8()
//   external int _unique___opaque_item_2095;
//   @ffi.Int8()
//   external int _unique___opaque_item_2096;
//   @ffi.Int8()
//   external int _unique___opaque_item_2097;
//   @ffi.Int8()
//   external int _unique___opaque_item_2098;
//   @ffi.Int8()
//   external int _unique___opaque_item_2099;
//   @ffi.Int8()
//   external int _unique___opaque_item_2100;
//   @ffi.Int8()
//   external int _unique___opaque_item_2101;
//   @ffi.Int8()
//   external int _unique___opaque_item_2102;
//   @ffi.Int8()
//   external int _unique___opaque_item_2103;
//   @ffi.Int8()
//   external int _unique___opaque_item_2104;
//   @ffi.Int8()
//   external int _unique___opaque_item_2105;
//   @ffi.Int8()
//   external int _unique___opaque_item_2106;
//   @ffi.Int8()
//   external int _unique___opaque_item_2107;
//   @ffi.Int8()
//   external int _unique___opaque_item_2108;
//   @ffi.Int8()
//   external int _unique___opaque_item_2109;
//   @ffi.Int8()
//   external int _unique___opaque_item_2110;
//   @ffi.Int8()
//   external int _unique___opaque_item_2111;
//   @ffi.Int8()
//   external int _unique___opaque_item_2112;
//   @ffi.Int8()
//   external int _unique___opaque_item_2113;
//   @ffi.Int8()
//   external int _unique___opaque_item_2114;
//   @ffi.Int8()
//   external int _unique___opaque_item_2115;
//   @ffi.Int8()
//   external int _unique___opaque_item_2116;
//   @ffi.Int8()
//   external int _unique___opaque_item_2117;
//   @ffi.Int8()
//   external int _unique___opaque_item_2118;
//   @ffi.Int8()
//   external int _unique___opaque_item_2119;
//   @ffi.Int8()
//   external int _unique___opaque_item_2120;
//   @ffi.Int8()
//   external int _unique___opaque_item_2121;
//   @ffi.Int8()
//   external int _unique___opaque_item_2122;
//   @ffi.Int8()
//   external int _unique___opaque_item_2123;
//   @ffi.Int8()
//   external int _unique___opaque_item_2124;
//   @ffi.Int8()
//   external int _unique___opaque_item_2125;
//   @ffi.Int8()
//   external int _unique___opaque_item_2126;
//   @ffi.Int8()
//   external int _unique___opaque_item_2127;
//   @ffi.Int8()
//   external int _unique___opaque_item_2128;
//   @ffi.Int8()
//   external int _unique___opaque_item_2129;
//   @ffi.Int8()
//   external int _unique___opaque_item_2130;
//   @ffi.Int8()
//   external int _unique___opaque_item_2131;
//   @ffi.Int8()
//   external int _unique___opaque_item_2132;
//   @ffi.Int8()
//   external int _unique___opaque_item_2133;
//   @ffi.Int8()
//   external int _unique___opaque_item_2134;
//   @ffi.Int8()
//   external int _unique___opaque_item_2135;
//   @ffi.Int8()
//   external int _unique___opaque_item_2136;
//   @ffi.Int8()
//   external int _unique___opaque_item_2137;
//   @ffi.Int8()
//   external int _unique___opaque_item_2138;
//   @ffi.Int8()
//   external int _unique___opaque_item_2139;
//   @ffi.Int8()
//   external int _unique___opaque_item_2140;
//   @ffi.Int8()
//   external int _unique___opaque_item_2141;
//   @ffi.Int8()
//   external int _unique___opaque_item_2142;
//   @ffi.Int8()
//   external int _unique___opaque_item_2143;
//   @ffi.Int8()
//   external int _unique___opaque_item_2144;
//   @ffi.Int8()
//   external int _unique___opaque_item_2145;
//   @ffi.Int8()
//   external int _unique___opaque_item_2146;
//   @ffi.Int8()
//   external int _unique___opaque_item_2147;
//   @ffi.Int8()
//   external int _unique___opaque_item_2148;
//   @ffi.Int8()
//   external int _unique___opaque_item_2149;
//   @ffi.Int8()
//   external int _unique___opaque_item_2150;
//   @ffi.Int8()
//   external int _unique___opaque_item_2151;
//   @ffi.Int8()
//   external int _unique___opaque_item_2152;
//   @ffi.Int8()
//   external int _unique___opaque_item_2153;
//   @ffi.Int8()
//   external int _unique___opaque_item_2154;
//   @ffi.Int8()
//   external int _unique___opaque_item_2155;
//   @ffi.Int8()
//   external int _unique___opaque_item_2156;
//   @ffi.Int8()
//   external int _unique___opaque_item_2157;
//   @ffi.Int8()
//   external int _unique___opaque_item_2158;
//   @ffi.Int8()
//   external int _unique___opaque_item_2159;
//   @ffi.Int8()
//   external int _unique___opaque_item_2160;
//   @ffi.Int8()
//   external int _unique___opaque_item_2161;
//   @ffi.Int8()
//   external int _unique___opaque_item_2162;
//   @ffi.Int8()
//   external int _unique___opaque_item_2163;
//   @ffi.Int8()
//   external int _unique___opaque_item_2164;
//   @ffi.Int8()
//   external int _unique___opaque_item_2165;
//   @ffi.Int8()
//   external int _unique___opaque_item_2166;
//   @ffi.Int8()
//   external int _unique___opaque_item_2167;
//   @ffi.Int8()
//   external int _unique___opaque_item_2168;
//   @ffi.Int8()
//   external int _unique___opaque_item_2169;
//   @ffi.Int8()
//   external int _unique___opaque_item_2170;
//   @ffi.Int8()
//   external int _unique___opaque_item_2171;
//   @ffi.Int8()
//   external int _unique___opaque_item_2172;
//   @ffi.Int8()
//   external int _unique___opaque_item_2173;
//   @ffi.Int8()
//   external int _unique___opaque_item_2174;
//   @ffi.Int8()
//   external int _unique___opaque_item_2175;
//   @ffi.Int8()
//   external int _unique___opaque_item_2176;
//   @ffi.Int8()
//   external int _unique___opaque_item_2177;
//   @ffi.Int8()
//   external int _unique___opaque_item_2178;
//   @ffi.Int8()
//   external int _unique___opaque_item_2179;
//   @ffi.Int8()
//   external int _unique___opaque_item_2180;
//   @ffi.Int8()
//   external int _unique___opaque_item_2181;
//   @ffi.Int8()
//   external int _unique___opaque_item_2182;
//   @ffi.Int8()
//   external int _unique___opaque_item_2183;
//   @ffi.Int8()
//   external int _unique___opaque_item_2184;
//   @ffi.Int8()
//   external int _unique___opaque_item_2185;
//   @ffi.Int8()
//   external int _unique___opaque_item_2186;
//   @ffi.Int8()
//   external int _unique___opaque_item_2187;
//   @ffi.Int8()
//   external int _unique___opaque_item_2188;
//   @ffi.Int8()
//   external int _unique___opaque_item_2189;
//   @ffi.Int8()
//   external int _unique___opaque_item_2190;
//   @ffi.Int8()
//   external int _unique___opaque_item_2191;
//   @ffi.Int8()
//   external int _unique___opaque_item_2192;
//   @ffi.Int8()
//   external int _unique___opaque_item_2193;
//   @ffi.Int8()
//   external int _unique___opaque_item_2194;
//   @ffi.Int8()
//   external int _unique___opaque_item_2195;
//   @ffi.Int8()
//   external int _unique___opaque_item_2196;
//   @ffi.Int8()
//   external int _unique___opaque_item_2197;
//   @ffi.Int8()
//   external int _unique___opaque_item_2198;
//   @ffi.Int8()
//   external int _unique___opaque_item_2199;
//   @ffi.Int8()
//   external int _unique___opaque_item_2200;
//   @ffi.Int8()
//   external int _unique___opaque_item_2201;
//   @ffi.Int8()
//   external int _unique___opaque_item_2202;
//   @ffi.Int8()
//   external int _unique___opaque_item_2203;
//   @ffi.Int8()
//   external int _unique___opaque_item_2204;
//   @ffi.Int8()
//   external int _unique___opaque_item_2205;
//   @ffi.Int8()
//   external int _unique___opaque_item_2206;
//   @ffi.Int8()
//   external int _unique___opaque_item_2207;
//   @ffi.Int8()
//   external int _unique___opaque_item_2208;
//   @ffi.Int8()
//   external int _unique___opaque_item_2209;
//   @ffi.Int8()
//   external int _unique___opaque_item_2210;
//   @ffi.Int8()
//   external int _unique___opaque_item_2211;
//   @ffi.Int8()
//   external int _unique___opaque_item_2212;
//   @ffi.Int8()
//   external int _unique___opaque_item_2213;
//   @ffi.Int8()
//   external int _unique___opaque_item_2214;
//   @ffi.Int8()
//   external int _unique___opaque_item_2215;
//   @ffi.Int8()
//   external int _unique___opaque_item_2216;
//   @ffi.Int8()
//   external int _unique___opaque_item_2217;
//   @ffi.Int8()
//   external int _unique___opaque_item_2218;
//   @ffi.Int8()
//   external int _unique___opaque_item_2219;
//   @ffi.Int8()
//   external int _unique___opaque_item_2220;
//   @ffi.Int8()
//   external int _unique___opaque_item_2221;
//   @ffi.Int8()
//   external int _unique___opaque_item_2222;
//   @ffi.Int8()
//   external int _unique___opaque_item_2223;
//   @ffi.Int8()
//   external int _unique___opaque_item_2224;
//   @ffi.Int8()
//   external int _unique___opaque_item_2225;
//   @ffi.Int8()
//   external int _unique___opaque_item_2226;
//   @ffi.Int8()
//   external int _unique___opaque_item_2227;
//   @ffi.Int8()
//   external int _unique___opaque_item_2228;
//   @ffi.Int8()
//   external int _unique___opaque_item_2229;
//   @ffi.Int8()
//   external int _unique___opaque_item_2230;
//   @ffi.Int8()
//   external int _unique___opaque_item_2231;
//   @ffi.Int8()
//   external int _unique___opaque_item_2232;
//   @ffi.Int8()
//   external int _unique___opaque_item_2233;
//   @ffi.Int8()
//   external int _unique___opaque_item_2234;
//   @ffi.Int8()
//   external int _unique___opaque_item_2235;
//   @ffi.Int8()
//   external int _unique___opaque_item_2236;
//   @ffi.Int8()
//   external int _unique___opaque_item_2237;
//   @ffi.Int8()
//   external int _unique___opaque_item_2238;
//   @ffi.Int8()
//   external int _unique___opaque_item_2239;
//   @ffi.Int8()
//   external int _unique___opaque_item_2240;
//   @ffi.Int8()
//   external int _unique___opaque_item_2241;
//   @ffi.Int8()
//   external int _unique___opaque_item_2242;
//   @ffi.Int8()
//   external int _unique___opaque_item_2243;
//   @ffi.Int8()
//   external int _unique___opaque_item_2244;
//   @ffi.Int8()
//   external int _unique___opaque_item_2245;
//   @ffi.Int8()
//   external int _unique___opaque_item_2246;
//   @ffi.Int8()
//   external int _unique___opaque_item_2247;
//   @ffi.Int8()
//   external int _unique___opaque_item_2248;
//   @ffi.Int8()
//   external int _unique___opaque_item_2249;
//   @ffi.Int8()
//   external int _unique___opaque_item_2250;
//   @ffi.Int8()
//   external int _unique___opaque_item_2251;
//   @ffi.Int8()
//   external int _unique___opaque_item_2252;
//   @ffi.Int8()
//   external int _unique___opaque_item_2253;
//   @ffi.Int8()
//   external int _unique___opaque_item_2254;
//   @ffi.Int8()
//   external int _unique___opaque_item_2255;
//   @ffi.Int8()
//   external int _unique___opaque_item_2256;
//   @ffi.Int8()
//   external int _unique___opaque_item_2257;
//   @ffi.Int8()
//   external int _unique___opaque_item_2258;
//   @ffi.Int8()
//   external int _unique___opaque_item_2259;
//   @ffi.Int8()
//   external int _unique___opaque_item_2260;
//   @ffi.Int8()
//   external int _unique___opaque_item_2261;
//   @ffi.Int8()
//   external int _unique___opaque_item_2262;
//   @ffi.Int8()
//   external int _unique___opaque_item_2263;
//   @ffi.Int8()
//   external int _unique___opaque_item_2264;
//   @ffi.Int8()
//   external int _unique___opaque_item_2265;
//   @ffi.Int8()
//   external int _unique___opaque_item_2266;
//   @ffi.Int8()
//   external int _unique___opaque_item_2267;
//   @ffi.Int8()
//   external int _unique___opaque_item_2268;
//   @ffi.Int8()
//   external int _unique___opaque_item_2269;
//   @ffi.Int8()
//   external int _unique___opaque_item_2270;
//   @ffi.Int8()
//   external int _unique___opaque_item_2271;
//   @ffi.Int8()
//   external int _unique___opaque_item_2272;
//   @ffi.Int8()
//   external int _unique___opaque_item_2273;
//   @ffi.Int8()
//   external int _unique___opaque_item_2274;
//   @ffi.Int8()
//   external int _unique___opaque_item_2275;
//   @ffi.Int8()
//   external int _unique___opaque_item_2276;
//   @ffi.Int8()
//   external int _unique___opaque_item_2277;
//   @ffi.Int8()
//   external int _unique___opaque_item_2278;
//   @ffi.Int8()
//   external int _unique___opaque_item_2279;
//   @ffi.Int8()
//   external int _unique___opaque_item_2280;
//   @ffi.Int8()
//   external int _unique___opaque_item_2281;
//   @ffi.Int8()
//   external int _unique___opaque_item_2282;
//   @ffi.Int8()
//   external int _unique___opaque_item_2283;
//   @ffi.Int8()
//   external int _unique___opaque_item_2284;
//   @ffi.Int8()
//   external int _unique___opaque_item_2285;
//   @ffi.Int8()
//   external int _unique___opaque_item_2286;
//   @ffi.Int8()
//   external int _unique___opaque_item_2287;
//   @ffi.Int8()
//   external int _unique___opaque_item_2288;
//   @ffi.Int8()
//   external int _unique___opaque_item_2289;
//   @ffi.Int8()
//   external int _unique___opaque_item_2290;
//   @ffi.Int8()
//   external int _unique___opaque_item_2291;
//   @ffi.Int8()
//   external int _unique___opaque_item_2292;
//   @ffi.Int8()
//   external int _unique___opaque_item_2293;
//   @ffi.Int8()
//   external int _unique___opaque_item_2294;
//   @ffi.Int8()
//   external int _unique___opaque_item_2295;
//   @ffi.Int8()
//   external int _unique___opaque_item_2296;
//   @ffi.Int8()
//   external int _unique___opaque_item_2297;
//   @ffi.Int8()
//   external int _unique___opaque_item_2298;
//   @ffi.Int8()
//   external int _unique___opaque_item_2299;
//   @ffi.Int8()
//   external int _unique___opaque_item_2300;
//   @ffi.Int8()
//   external int _unique___opaque_item_2301;
//   @ffi.Int8()
//   external int _unique___opaque_item_2302;
//   @ffi.Int8()
//   external int _unique___opaque_item_2303;
//   @ffi.Int8()
//   external int _unique___opaque_item_2304;
//   @ffi.Int8()
//   external int _unique___opaque_item_2305;
//   @ffi.Int8()
//   external int _unique___opaque_item_2306;
//   @ffi.Int8()
//   external int _unique___opaque_item_2307;
//   @ffi.Int8()
//   external int _unique___opaque_item_2308;
//   @ffi.Int8()
//   external int _unique___opaque_item_2309;
//   @ffi.Int8()
//   external int _unique___opaque_item_2310;
//   @ffi.Int8()
//   external int _unique___opaque_item_2311;
//   @ffi.Int8()
//   external int _unique___opaque_item_2312;
//   @ffi.Int8()
//   external int _unique___opaque_item_2313;
//   @ffi.Int8()
//   external int _unique___opaque_item_2314;
//   @ffi.Int8()
//   external int _unique___opaque_item_2315;
//   @ffi.Int8()
//   external int _unique___opaque_item_2316;
//   @ffi.Int8()
//   external int _unique___opaque_item_2317;
//   @ffi.Int8()
//   external int _unique___opaque_item_2318;
//   @ffi.Int8()
//   external int _unique___opaque_item_2319;
//   @ffi.Int8()
//   external int _unique___opaque_item_2320;
//   @ffi.Int8()
//   external int _unique___opaque_item_2321;
//   @ffi.Int8()
//   external int _unique___opaque_item_2322;
//   @ffi.Int8()
//   external int _unique___opaque_item_2323;
//   @ffi.Int8()
//   external int _unique___opaque_item_2324;
//   @ffi.Int8()
//   external int _unique___opaque_item_2325;
//   @ffi.Int8()
//   external int _unique___opaque_item_2326;
//   @ffi.Int8()
//   external int _unique___opaque_item_2327;
//   @ffi.Int8()
//   external int _unique___opaque_item_2328;
//   @ffi.Int8()
//   external int _unique___opaque_item_2329;
//   @ffi.Int8()
//   external int _unique___opaque_item_2330;
//   @ffi.Int8()
//   external int _unique___opaque_item_2331;
//   @ffi.Int8()
//   external int _unique___opaque_item_2332;
//   @ffi.Int8()
//   external int _unique___opaque_item_2333;
//   @ffi.Int8()
//   external int _unique___opaque_item_2334;
//   @ffi.Int8()
//   external int _unique___opaque_item_2335;
//   @ffi.Int8()
//   external int _unique___opaque_item_2336;
//   @ffi.Int8()
//   external int _unique___opaque_item_2337;
//   @ffi.Int8()
//   external int _unique___opaque_item_2338;
//   @ffi.Int8()
//   external int _unique___opaque_item_2339;
//   @ffi.Int8()
//   external int _unique___opaque_item_2340;
//   @ffi.Int8()
//   external int _unique___opaque_item_2341;
//   @ffi.Int8()
//   external int _unique___opaque_item_2342;
//   @ffi.Int8()
//   external int _unique___opaque_item_2343;
//   @ffi.Int8()
//   external int _unique___opaque_item_2344;
//   @ffi.Int8()
//   external int _unique___opaque_item_2345;
//   @ffi.Int8()
//   external int _unique___opaque_item_2346;
//   @ffi.Int8()
//   external int _unique___opaque_item_2347;
//   @ffi.Int8()
//   external int _unique___opaque_item_2348;
//   @ffi.Int8()
//   external int _unique___opaque_item_2349;
//   @ffi.Int8()
//   external int _unique___opaque_item_2350;
//   @ffi.Int8()
//   external int _unique___opaque_item_2351;
//   @ffi.Int8()
//   external int _unique___opaque_item_2352;
//   @ffi.Int8()
//   external int _unique___opaque_item_2353;
//   @ffi.Int8()
//   external int _unique___opaque_item_2354;
//   @ffi.Int8()
//   external int _unique___opaque_item_2355;
//   @ffi.Int8()
//   external int _unique___opaque_item_2356;
//   @ffi.Int8()
//   external int _unique___opaque_item_2357;
//   @ffi.Int8()
//   external int _unique___opaque_item_2358;
//   @ffi.Int8()
//   external int _unique___opaque_item_2359;
//   @ffi.Int8()
//   external int _unique___opaque_item_2360;
//   @ffi.Int8()
//   external int _unique___opaque_item_2361;
//   @ffi.Int8()
//   external int _unique___opaque_item_2362;
//   @ffi.Int8()
//   external int _unique___opaque_item_2363;
//   @ffi.Int8()
//   external int _unique___opaque_item_2364;
//   @ffi.Int8()
//   external int _unique___opaque_item_2365;
//   @ffi.Int8()
//   external int _unique___opaque_item_2366;
//   @ffi.Int8()
//   external int _unique___opaque_item_2367;
//   @ffi.Int8()
//   external int _unique___opaque_item_2368;
//   @ffi.Int8()
//   external int _unique___opaque_item_2369;
//   @ffi.Int8()
//   external int _unique___opaque_item_2370;
//   @ffi.Int8()
//   external int _unique___opaque_item_2371;
//   @ffi.Int8()
//   external int _unique___opaque_item_2372;
//   @ffi.Int8()
//   external int _unique___opaque_item_2373;
//   @ffi.Int8()
//   external int _unique___opaque_item_2374;
//   @ffi.Int8()
//   external int _unique___opaque_item_2375;
//   @ffi.Int8()
//   external int _unique___opaque_item_2376;
//   @ffi.Int8()
//   external int _unique___opaque_item_2377;
//   @ffi.Int8()
//   external int _unique___opaque_item_2378;
//   @ffi.Int8()
//   external int _unique___opaque_item_2379;
//   @ffi.Int8()
//   external int _unique___opaque_item_2380;
//   @ffi.Int8()
//   external int _unique___opaque_item_2381;
//   @ffi.Int8()
//   external int _unique___opaque_item_2382;
//   @ffi.Int8()
//   external int _unique___opaque_item_2383;
//   @ffi.Int8()
//   external int _unique___opaque_item_2384;
//   @ffi.Int8()
//   external int _unique___opaque_item_2385;
//   @ffi.Int8()
//   external int _unique___opaque_item_2386;
//   @ffi.Int8()
//   external int _unique___opaque_item_2387;
//   @ffi.Int8()
//   external int _unique___opaque_item_2388;
//   @ffi.Int8()
//   external int _unique___opaque_item_2389;
//   @ffi.Int8()
//   external int _unique___opaque_item_2390;
//   @ffi.Int8()
//   external int _unique___opaque_item_2391;
//   @ffi.Int8()
//   external int _unique___opaque_item_2392;
//   @ffi.Int8()
//   external int _unique___opaque_item_2393;
//   @ffi.Int8()
//   external int _unique___opaque_item_2394;
//   @ffi.Int8()
//   external int _unique___opaque_item_2395;
//   @ffi.Int8()
//   external int _unique___opaque_item_2396;
//   @ffi.Int8()
//   external int _unique___opaque_item_2397;
//   @ffi.Int8()
//   external int _unique___opaque_item_2398;
//   @ffi.Int8()
//   external int _unique___opaque_item_2399;
//   @ffi.Int8()
//   external int _unique___opaque_item_2400;
//   @ffi.Int8()
//   external int _unique___opaque_item_2401;
//   @ffi.Int8()
//   external int _unique___opaque_item_2402;
//   @ffi.Int8()
//   external int _unique___opaque_item_2403;
//   @ffi.Int8()
//   external int _unique___opaque_item_2404;
//   @ffi.Int8()
//   external int _unique___opaque_item_2405;
//   @ffi.Int8()
//   external int _unique___opaque_item_2406;
//   @ffi.Int8()
//   external int _unique___opaque_item_2407;
//   @ffi.Int8()
//   external int _unique___opaque_item_2408;
//   @ffi.Int8()
//   external int _unique___opaque_item_2409;
//   @ffi.Int8()
//   external int _unique___opaque_item_2410;
//   @ffi.Int8()
//   external int _unique___opaque_item_2411;
//   @ffi.Int8()
//   external int _unique___opaque_item_2412;
//   @ffi.Int8()
//   external int _unique___opaque_item_2413;
//   @ffi.Int8()
//   external int _unique___opaque_item_2414;
//   @ffi.Int8()
//   external int _unique___opaque_item_2415;
//   @ffi.Int8()
//   external int _unique___opaque_item_2416;
//   @ffi.Int8()
//   external int _unique___opaque_item_2417;
//   @ffi.Int8()
//   external int _unique___opaque_item_2418;
//   @ffi.Int8()
//   external int _unique___opaque_item_2419;
//   @ffi.Int8()
//   external int _unique___opaque_item_2420;
//   @ffi.Int8()
//   external int _unique___opaque_item_2421;
//   @ffi.Int8()
//   external int _unique___opaque_item_2422;
//   @ffi.Int8()
//   external int _unique___opaque_item_2423;
//   @ffi.Int8()
//   external int _unique___opaque_item_2424;
//   @ffi.Int8()
//   external int _unique___opaque_item_2425;
//   @ffi.Int8()
//   external int _unique___opaque_item_2426;
//   @ffi.Int8()
//   external int _unique___opaque_item_2427;
//   @ffi.Int8()
//   external int _unique___opaque_item_2428;
//   @ffi.Int8()
//   external int _unique___opaque_item_2429;
//   @ffi.Int8()
//   external int _unique___opaque_item_2430;
//   @ffi.Int8()
//   external int _unique___opaque_item_2431;
//   @ffi.Int8()
//   external int _unique___opaque_item_2432;
//   @ffi.Int8()
//   external int _unique___opaque_item_2433;
//   @ffi.Int8()
//   external int _unique___opaque_item_2434;
//   @ffi.Int8()
//   external int _unique___opaque_item_2435;
//   @ffi.Int8()
//   external int _unique___opaque_item_2436;
//   @ffi.Int8()
//   external int _unique___opaque_item_2437;
//   @ffi.Int8()
//   external int _unique___opaque_item_2438;
//   @ffi.Int8()
//   external int _unique___opaque_item_2439;
//   @ffi.Int8()
//   external int _unique___opaque_item_2440;
//   @ffi.Int8()
//   external int _unique___opaque_item_2441;
//   @ffi.Int8()
//   external int _unique___opaque_item_2442;
//   @ffi.Int8()
//   external int _unique___opaque_item_2443;
//   @ffi.Int8()
//   external int _unique___opaque_item_2444;
//   @ffi.Int8()
//   external int _unique___opaque_item_2445;
//   @ffi.Int8()
//   external int _unique___opaque_item_2446;
//   @ffi.Int8()
//   external int _unique___opaque_item_2447;
//   @ffi.Int8()
//   external int _unique___opaque_item_2448;
//   @ffi.Int8()
//   external int _unique___opaque_item_2449;
//   @ffi.Int8()
//   external int _unique___opaque_item_2450;
//   @ffi.Int8()
//   external int _unique___opaque_item_2451;
//   @ffi.Int8()
//   external int _unique___opaque_item_2452;
//   @ffi.Int8()
//   external int _unique___opaque_item_2453;
//   @ffi.Int8()
//   external int _unique___opaque_item_2454;
//   @ffi.Int8()
//   external int _unique___opaque_item_2455;
//   @ffi.Int8()
//   external int _unique___opaque_item_2456;
//   @ffi.Int8()
//   external int _unique___opaque_item_2457;
//   @ffi.Int8()
//   external int _unique___opaque_item_2458;
//   @ffi.Int8()
//   external int _unique___opaque_item_2459;
//   @ffi.Int8()
//   external int _unique___opaque_item_2460;
//   @ffi.Int8()
//   external int _unique___opaque_item_2461;
//   @ffi.Int8()
//   external int _unique___opaque_item_2462;
//   @ffi.Int8()
//   external int _unique___opaque_item_2463;
//   @ffi.Int8()
//   external int _unique___opaque_item_2464;
//   @ffi.Int8()
//   external int _unique___opaque_item_2465;
//   @ffi.Int8()
//   external int _unique___opaque_item_2466;
//   @ffi.Int8()
//   external int _unique___opaque_item_2467;
//   @ffi.Int8()
//   external int _unique___opaque_item_2468;
//   @ffi.Int8()
//   external int _unique___opaque_item_2469;
//   @ffi.Int8()
//   external int _unique___opaque_item_2470;
//   @ffi.Int8()
//   external int _unique___opaque_item_2471;
//   @ffi.Int8()
//   external int _unique___opaque_item_2472;
//   @ffi.Int8()
//   external int _unique___opaque_item_2473;
//   @ffi.Int8()
//   external int _unique___opaque_item_2474;
//   @ffi.Int8()
//   external int _unique___opaque_item_2475;
//   @ffi.Int8()
//   external int _unique___opaque_item_2476;
//   @ffi.Int8()
//   external int _unique___opaque_item_2477;
//   @ffi.Int8()
//   external int _unique___opaque_item_2478;
//   @ffi.Int8()
//   external int _unique___opaque_item_2479;
//   @ffi.Int8()
//   external int _unique___opaque_item_2480;
//   @ffi.Int8()
//   external int _unique___opaque_item_2481;
//   @ffi.Int8()
//   external int _unique___opaque_item_2482;
//   @ffi.Int8()
//   external int _unique___opaque_item_2483;
//   @ffi.Int8()
//   external int _unique___opaque_item_2484;
//   @ffi.Int8()
//   external int _unique___opaque_item_2485;
//   @ffi.Int8()
//   external int _unique___opaque_item_2486;
//   @ffi.Int8()
//   external int _unique___opaque_item_2487;
//   @ffi.Int8()
//   external int _unique___opaque_item_2488;
//   @ffi.Int8()
//   external int _unique___opaque_item_2489;
//   @ffi.Int8()
//   external int _unique___opaque_item_2490;
//   @ffi.Int8()
//   external int _unique___opaque_item_2491;
//   @ffi.Int8()
//   external int _unique___opaque_item_2492;
//   @ffi.Int8()
//   external int _unique___opaque_item_2493;
//   @ffi.Int8()
//   external int _unique___opaque_item_2494;
//   @ffi.Int8()
//   external int _unique___opaque_item_2495;
//   @ffi.Int8()
//   external int _unique___opaque_item_2496;
//   @ffi.Int8()
//   external int _unique___opaque_item_2497;
//   @ffi.Int8()
//   external int _unique___opaque_item_2498;
//   @ffi.Int8()
//   external int _unique___opaque_item_2499;
//   @ffi.Int8()
//   external int _unique___opaque_item_2500;
//   @ffi.Int8()
//   external int _unique___opaque_item_2501;
//   @ffi.Int8()
//   external int _unique___opaque_item_2502;
//   @ffi.Int8()
//   external int _unique___opaque_item_2503;
//   @ffi.Int8()
//   external int _unique___opaque_item_2504;
//   @ffi.Int8()
//   external int _unique___opaque_item_2505;
//   @ffi.Int8()
//   external int _unique___opaque_item_2506;
//   @ffi.Int8()
//   external int _unique___opaque_item_2507;
//   @ffi.Int8()
//   external int _unique___opaque_item_2508;
//   @ffi.Int8()
//   external int _unique___opaque_item_2509;
//   @ffi.Int8()
//   external int _unique___opaque_item_2510;
//   @ffi.Int8()
//   external int _unique___opaque_item_2511;
//   @ffi.Int8()
//   external int _unique___opaque_item_2512;
//   @ffi.Int8()
//   external int _unique___opaque_item_2513;
//   @ffi.Int8()
//   external int _unique___opaque_item_2514;
//   @ffi.Int8()
//   external int _unique___opaque_item_2515;
//   @ffi.Int8()
//   external int _unique___opaque_item_2516;
//   @ffi.Int8()
//   external int _unique___opaque_item_2517;
//   @ffi.Int8()
//   external int _unique___opaque_item_2518;
//   @ffi.Int8()
//   external int _unique___opaque_item_2519;
//   @ffi.Int8()
//   external int _unique___opaque_item_2520;
//   @ffi.Int8()
//   external int _unique___opaque_item_2521;
//   @ffi.Int8()
//   external int _unique___opaque_item_2522;
//   @ffi.Int8()
//   external int _unique___opaque_item_2523;
//   @ffi.Int8()
//   external int _unique___opaque_item_2524;
//   @ffi.Int8()
//   external int _unique___opaque_item_2525;
//   @ffi.Int8()
//   external int _unique___opaque_item_2526;
//   @ffi.Int8()
//   external int _unique___opaque_item_2527;
//   @ffi.Int8()
//   external int _unique___opaque_item_2528;
//   @ffi.Int8()
//   external int _unique___opaque_item_2529;
//   @ffi.Int8()
//   external int _unique___opaque_item_2530;
//   @ffi.Int8()
//   external int _unique___opaque_item_2531;
//   @ffi.Int8()
//   external int _unique___opaque_item_2532;
//   @ffi.Int8()
//   external int _unique___opaque_item_2533;
//   @ffi.Int8()
//   external int _unique___opaque_item_2534;
//   @ffi.Int8()
//   external int _unique___opaque_item_2535;
//   @ffi.Int8()
//   external int _unique___opaque_item_2536;
//   @ffi.Int8()
//   external int _unique___opaque_item_2537;
//   @ffi.Int8()
//   external int _unique___opaque_item_2538;
//   @ffi.Int8()
//   external int _unique___opaque_item_2539;
//   @ffi.Int8()
//   external int _unique___opaque_item_2540;
//   @ffi.Int8()
//   external int _unique___opaque_item_2541;
//   @ffi.Int8()
//   external int _unique___opaque_item_2542;
//   @ffi.Int8()
//   external int _unique___opaque_item_2543;
//   @ffi.Int8()
//   external int _unique___opaque_item_2544;
//   @ffi.Int8()
//   external int _unique___opaque_item_2545;
//   @ffi.Int8()
//   external int _unique___opaque_item_2546;
//   @ffi.Int8()
//   external int _unique___opaque_item_2547;
//   @ffi.Int8()
//   external int _unique___opaque_item_2548;
//   @ffi.Int8()
//   external int _unique___opaque_item_2549;
//   @ffi.Int8()
//   external int _unique___opaque_item_2550;
//   @ffi.Int8()
//   external int _unique___opaque_item_2551;
//   @ffi.Int8()
//   external int _unique___opaque_item_2552;
//   @ffi.Int8()
//   external int _unique___opaque_item_2553;
//   @ffi.Int8()
//   external int _unique___opaque_item_2554;
//   @ffi.Int8()
//   external int _unique___opaque_item_2555;
//   @ffi.Int8()
//   external int _unique___opaque_item_2556;
//   @ffi.Int8()
//   external int _unique___opaque_item_2557;
//   @ffi.Int8()
//   external int _unique___opaque_item_2558;
//   @ffi.Int8()
//   external int _unique___opaque_item_2559;
//   @ffi.Int8()
//   external int _unique___opaque_item_2560;
//   @ffi.Int8()
//   external int _unique___opaque_item_2561;
//   @ffi.Int8()
//   external int _unique___opaque_item_2562;
//   @ffi.Int8()
//   external int _unique___opaque_item_2563;
//   @ffi.Int8()
//   external int _unique___opaque_item_2564;
//   @ffi.Int8()
//   external int _unique___opaque_item_2565;
//   @ffi.Int8()
//   external int _unique___opaque_item_2566;
//   @ffi.Int8()
//   external int _unique___opaque_item_2567;
//   @ffi.Int8()
//   external int _unique___opaque_item_2568;
//   @ffi.Int8()
//   external int _unique___opaque_item_2569;
//   @ffi.Int8()
//   external int _unique___opaque_item_2570;
//   @ffi.Int8()
//   external int _unique___opaque_item_2571;
//   @ffi.Int8()
//   external int _unique___opaque_item_2572;
//   @ffi.Int8()
//   external int _unique___opaque_item_2573;
//   @ffi.Int8()
//   external int _unique___opaque_item_2574;
//   @ffi.Int8()
//   external int _unique___opaque_item_2575;
//   @ffi.Int8()
//   external int _unique___opaque_item_2576;
//   @ffi.Int8()
//   external int _unique___opaque_item_2577;
//   @ffi.Int8()
//   external int _unique___opaque_item_2578;
//   @ffi.Int8()
//   external int _unique___opaque_item_2579;
//   @ffi.Int8()
//   external int _unique___opaque_item_2580;
//   @ffi.Int8()
//   external int _unique___opaque_item_2581;
//   @ffi.Int8()
//   external int _unique___opaque_item_2582;
//   @ffi.Int8()
//   external int _unique___opaque_item_2583;
//   @ffi.Int8()
//   external int _unique___opaque_item_2584;
//   @ffi.Int8()
//   external int _unique___opaque_item_2585;
//   @ffi.Int8()
//   external int _unique___opaque_item_2586;
//   @ffi.Int8()
//   external int _unique___opaque_item_2587;
//   @ffi.Int8()
//   external int _unique___opaque_item_2588;
//   @ffi.Int8()
//   external int _unique___opaque_item_2589;
//   @ffi.Int8()
//   external int _unique___opaque_item_2590;
//   @ffi.Int8()
//   external int _unique___opaque_item_2591;
//   @ffi.Int8()
//   external int _unique___opaque_item_2592;
//   @ffi.Int8()
//   external int _unique___opaque_item_2593;
//   @ffi.Int8()
//   external int _unique___opaque_item_2594;
//   @ffi.Int8()
//   external int _unique___opaque_item_2595;
//   @ffi.Int8()
//   external int _unique___opaque_item_2596;
//   @ffi.Int8()
//   external int _unique___opaque_item_2597;
//   @ffi.Int8()
//   external int _unique___opaque_item_2598;
//   @ffi.Int8()
//   external int _unique___opaque_item_2599;
//   @ffi.Int8()
//   external int _unique___opaque_item_2600;
//   @ffi.Int8()
//   external int _unique___opaque_item_2601;
//   @ffi.Int8()
//   external int _unique___opaque_item_2602;
//   @ffi.Int8()
//   external int _unique___opaque_item_2603;
//   @ffi.Int8()
//   external int _unique___opaque_item_2604;
//   @ffi.Int8()
//   external int _unique___opaque_item_2605;
//   @ffi.Int8()
//   external int _unique___opaque_item_2606;
//   @ffi.Int8()
//   external int _unique___opaque_item_2607;
//   @ffi.Int8()
//   external int _unique___opaque_item_2608;
//   @ffi.Int8()
//   external int _unique___opaque_item_2609;
//   @ffi.Int8()
//   external int _unique___opaque_item_2610;
//   @ffi.Int8()
//   external int _unique___opaque_item_2611;
//   @ffi.Int8()
//   external int _unique___opaque_item_2612;
//   @ffi.Int8()
//   external int _unique___opaque_item_2613;
//   @ffi.Int8()
//   external int _unique___opaque_item_2614;
//   @ffi.Int8()
//   external int _unique___opaque_item_2615;
//   @ffi.Int8()
//   external int _unique___opaque_item_2616;
//   @ffi.Int8()
//   external int _unique___opaque_item_2617;
//   @ffi.Int8()
//   external int _unique___opaque_item_2618;
//   @ffi.Int8()
//   external int _unique___opaque_item_2619;
//   @ffi.Int8()
//   external int _unique___opaque_item_2620;
//   @ffi.Int8()
//   external int _unique___opaque_item_2621;
//   @ffi.Int8()
//   external int _unique___opaque_item_2622;
//   @ffi.Int8()
//   external int _unique___opaque_item_2623;
//   @ffi.Int8()
//   external int _unique___opaque_item_2624;
//   @ffi.Int8()
//   external int _unique___opaque_item_2625;
//   @ffi.Int8()
//   external int _unique___opaque_item_2626;
//   @ffi.Int8()
//   external int _unique___opaque_item_2627;
//   @ffi.Int8()
//   external int _unique___opaque_item_2628;
//   @ffi.Int8()
//   external int _unique___opaque_item_2629;
//   @ffi.Int8()
//   external int _unique___opaque_item_2630;
//   @ffi.Int8()
//   external int _unique___opaque_item_2631;
//   @ffi.Int8()
//   external int _unique___opaque_item_2632;
//   @ffi.Int8()
//   external int _unique___opaque_item_2633;
//   @ffi.Int8()
//   external int _unique___opaque_item_2634;
//   @ffi.Int8()
//   external int _unique___opaque_item_2635;
//   @ffi.Int8()
//   external int _unique___opaque_item_2636;
//   @ffi.Int8()
//   external int _unique___opaque_item_2637;
//   @ffi.Int8()
//   external int _unique___opaque_item_2638;
//   @ffi.Int8()
//   external int _unique___opaque_item_2639;
//   @ffi.Int8()
//   external int _unique___opaque_item_2640;
//   @ffi.Int8()
//   external int _unique___opaque_item_2641;
//   @ffi.Int8()
//   external int _unique___opaque_item_2642;
//   @ffi.Int8()
//   external int _unique___opaque_item_2643;
//   @ffi.Int8()
//   external int _unique___opaque_item_2644;
//   @ffi.Int8()
//   external int _unique___opaque_item_2645;
//   @ffi.Int8()
//   external int _unique___opaque_item_2646;
//   @ffi.Int8()
//   external int _unique___opaque_item_2647;
//   @ffi.Int8()
//   external int _unique___opaque_item_2648;
//   @ffi.Int8()
//   external int _unique___opaque_item_2649;
//   @ffi.Int8()
//   external int _unique___opaque_item_2650;
//   @ffi.Int8()
//   external int _unique___opaque_item_2651;
//   @ffi.Int8()
//   external int _unique___opaque_item_2652;
//   @ffi.Int8()
//   external int _unique___opaque_item_2653;
//   @ffi.Int8()
//   external int _unique___opaque_item_2654;
//   @ffi.Int8()
//   external int _unique___opaque_item_2655;
//   @ffi.Int8()
//   external int _unique___opaque_item_2656;
//   @ffi.Int8()
//   external int _unique___opaque_item_2657;
//   @ffi.Int8()
//   external int _unique___opaque_item_2658;
//   @ffi.Int8()
//   external int _unique___opaque_item_2659;
//   @ffi.Int8()
//   external int _unique___opaque_item_2660;
//   @ffi.Int8()
//   external int _unique___opaque_item_2661;
//   @ffi.Int8()
//   external int _unique___opaque_item_2662;
//   @ffi.Int8()
//   external int _unique___opaque_item_2663;
//   @ffi.Int8()
//   external int _unique___opaque_item_2664;
//   @ffi.Int8()
//   external int _unique___opaque_item_2665;
//   @ffi.Int8()
//   external int _unique___opaque_item_2666;
//   @ffi.Int8()
//   external int _unique___opaque_item_2667;
//   @ffi.Int8()
//   external int _unique___opaque_item_2668;
//   @ffi.Int8()
//   external int _unique___opaque_item_2669;
//   @ffi.Int8()
//   external int _unique___opaque_item_2670;
//   @ffi.Int8()
//   external int _unique___opaque_item_2671;
//   @ffi.Int8()
//   external int _unique___opaque_item_2672;
//   @ffi.Int8()
//   external int _unique___opaque_item_2673;
//   @ffi.Int8()
//   external int _unique___opaque_item_2674;
//   @ffi.Int8()
//   external int _unique___opaque_item_2675;
//   @ffi.Int8()
//   external int _unique___opaque_item_2676;
//   @ffi.Int8()
//   external int _unique___opaque_item_2677;
//   @ffi.Int8()
//   external int _unique___opaque_item_2678;
//   @ffi.Int8()
//   external int _unique___opaque_item_2679;
//   @ffi.Int8()
//   external int _unique___opaque_item_2680;
//   @ffi.Int8()
//   external int _unique___opaque_item_2681;
//   @ffi.Int8()
//   external int _unique___opaque_item_2682;
//   @ffi.Int8()
//   external int _unique___opaque_item_2683;
//   @ffi.Int8()
//   external int _unique___opaque_item_2684;
//   @ffi.Int8()
//   external int _unique___opaque_item_2685;
//   @ffi.Int8()
//   external int _unique___opaque_item_2686;
//   @ffi.Int8()
//   external int _unique___opaque_item_2687;
//   @ffi.Int8()
//   external int _unique___opaque_item_2688;
//   @ffi.Int8()
//   external int _unique___opaque_item_2689;
//   @ffi.Int8()
//   external int _unique___opaque_item_2690;
//   @ffi.Int8()
//   external int _unique___opaque_item_2691;
//   @ffi.Int8()
//   external int _unique___opaque_item_2692;
//   @ffi.Int8()
//   external int _unique___opaque_item_2693;
//   @ffi.Int8()
//   external int _unique___opaque_item_2694;
//   @ffi.Int8()
//   external int _unique___opaque_item_2695;
//   @ffi.Int8()
//   external int _unique___opaque_item_2696;
//   @ffi.Int8()
//   external int _unique___opaque_item_2697;
//   @ffi.Int8()
//   external int _unique___opaque_item_2698;
//   @ffi.Int8()
//   external int _unique___opaque_item_2699;
//   @ffi.Int8()
//   external int _unique___opaque_item_2700;
//   @ffi.Int8()
//   external int _unique___opaque_item_2701;
//   @ffi.Int8()
//   external int _unique___opaque_item_2702;
//   @ffi.Int8()
//   external int _unique___opaque_item_2703;
//   @ffi.Int8()
//   external int _unique___opaque_item_2704;
//   @ffi.Int8()
//   external int _unique___opaque_item_2705;
//   @ffi.Int8()
//   external int _unique___opaque_item_2706;
//   @ffi.Int8()
//   external int _unique___opaque_item_2707;
//   @ffi.Int8()
//   external int _unique___opaque_item_2708;
//   @ffi.Int8()
//   external int _unique___opaque_item_2709;
//   @ffi.Int8()
//   external int _unique___opaque_item_2710;
//   @ffi.Int8()
//   external int _unique___opaque_item_2711;
//   @ffi.Int8()
//   external int _unique___opaque_item_2712;
//   @ffi.Int8()
//   external int _unique___opaque_item_2713;
//   @ffi.Int8()
//   external int _unique___opaque_item_2714;
//   @ffi.Int8()
//   external int _unique___opaque_item_2715;
//   @ffi.Int8()
//   external int _unique___opaque_item_2716;
//   @ffi.Int8()
//   external int _unique___opaque_item_2717;
//   @ffi.Int8()
//   external int _unique___opaque_item_2718;
//   @ffi.Int8()
//   external int _unique___opaque_item_2719;
//   @ffi.Int8()
//   external int _unique___opaque_item_2720;
//   @ffi.Int8()
//   external int _unique___opaque_item_2721;
//   @ffi.Int8()
//   external int _unique___opaque_item_2722;
//   @ffi.Int8()
//   external int _unique___opaque_item_2723;
//   @ffi.Int8()
//   external int _unique___opaque_item_2724;
//   @ffi.Int8()
//   external int _unique___opaque_item_2725;
//   @ffi.Int8()
//   external int _unique___opaque_item_2726;
//   @ffi.Int8()
//   external int _unique___opaque_item_2727;
//   @ffi.Int8()
//   external int _unique___opaque_item_2728;
//   @ffi.Int8()
//   external int _unique___opaque_item_2729;
//   @ffi.Int8()
//   external int _unique___opaque_item_2730;
//   @ffi.Int8()
//   external int _unique___opaque_item_2731;
//   @ffi.Int8()
//   external int _unique___opaque_item_2732;
//   @ffi.Int8()
//   external int _unique___opaque_item_2733;
//   @ffi.Int8()
//   external int _unique___opaque_item_2734;
//   @ffi.Int8()
//   external int _unique___opaque_item_2735;
//   @ffi.Int8()
//   external int _unique___opaque_item_2736;
//   @ffi.Int8()
//   external int _unique___opaque_item_2737;
//   @ffi.Int8()
//   external int _unique___opaque_item_2738;
//   @ffi.Int8()
//   external int _unique___opaque_item_2739;
//   @ffi.Int8()
//   external int _unique___opaque_item_2740;
//   @ffi.Int8()
//   external int _unique___opaque_item_2741;
//   @ffi.Int8()
//   external int _unique___opaque_item_2742;
//   @ffi.Int8()
//   external int _unique___opaque_item_2743;
//   @ffi.Int8()
//   external int _unique___opaque_item_2744;
//   @ffi.Int8()
//   external int _unique___opaque_item_2745;
//   @ffi.Int8()
//   external int _unique___opaque_item_2746;
//   @ffi.Int8()
//   external int _unique___opaque_item_2747;
//   @ffi.Int8()
//   external int _unique___opaque_item_2748;
//   @ffi.Int8()
//   external int _unique___opaque_item_2749;
//   @ffi.Int8()
//   external int _unique___opaque_item_2750;
//   @ffi.Int8()
//   external int _unique___opaque_item_2751;
//   @ffi.Int8()
//   external int _unique___opaque_item_2752;
//   @ffi.Int8()
//   external int _unique___opaque_item_2753;
//   @ffi.Int8()
//   external int _unique___opaque_item_2754;
//   @ffi.Int8()
//   external int _unique___opaque_item_2755;
//   @ffi.Int8()
//   external int _unique___opaque_item_2756;
//   @ffi.Int8()
//   external int _unique___opaque_item_2757;
//   @ffi.Int8()
//   external int _unique___opaque_item_2758;
//   @ffi.Int8()
//   external int _unique___opaque_item_2759;
//   @ffi.Int8()
//   external int _unique___opaque_item_2760;
//   @ffi.Int8()
//   external int _unique___opaque_item_2761;
//   @ffi.Int8()
//   external int _unique___opaque_item_2762;
//   @ffi.Int8()
//   external int _unique___opaque_item_2763;
//   @ffi.Int8()
//   external int _unique___opaque_item_2764;
//   @ffi.Int8()
//   external int _unique___opaque_item_2765;
//   @ffi.Int8()
//   external int _unique___opaque_item_2766;
//   @ffi.Int8()
//   external int _unique___opaque_item_2767;
//   @ffi.Int8()
//   external int _unique___opaque_item_2768;
//   @ffi.Int8()
//   external int _unique___opaque_item_2769;
//   @ffi.Int8()
//   external int _unique___opaque_item_2770;
//   @ffi.Int8()
//   external int _unique___opaque_item_2771;
//   @ffi.Int8()
//   external int _unique___opaque_item_2772;
//   @ffi.Int8()
//   external int _unique___opaque_item_2773;
//   @ffi.Int8()
//   external int _unique___opaque_item_2774;
//   @ffi.Int8()
//   external int _unique___opaque_item_2775;
//   @ffi.Int8()
//   external int _unique___opaque_item_2776;
//   @ffi.Int8()
//   external int _unique___opaque_item_2777;
//   @ffi.Int8()
//   external int _unique___opaque_item_2778;
//   @ffi.Int8()
//   external int _unique___opaque_item_2779;
//   @ffi.Int8()
//   external int _unique___opaque_item_2780;
//   @ffi.Int8()
//   external int _unique___opaque_item_2781;
//   @ffi.Int8()
//   external int _unique___opaque_item_2782;
//   @ffi.Int8()
//   external int _unique___opaque_item_2783;
//   @ffi.Int8()
//   external int _unique___opaque_item_2784;
//   @ffi.Int8()
//   external int _unique___opaque_item_2785;
//   @ffi.Int8()
//   external int _unique___opaque_item_2786;
//   @ffi.Int8()
//   external int _unique___opaque_item_2787;
//   @ffi.Int8()
//   external int _unique___opaque_item_2788;
//   @ffi.Int8()
//   external int _unique___opaque_item_2789;
//   @ffi.Int8()
//   external int _unique___opaque_item_2790;
//   @ffi.Int8()
//   external int _unique___opaque_item_2791;
//   @ffi.Int8()
//   external int _unique___opaque_item_2792;
//   @ffi.Int8()
//   external int _unique___opaque_item_2793;
//   @ffi.Int8()
//   external int _unique___opaque_item_2794;
//   @ffi.Int8()
//   external int _unique___opaque_item_2795;
//   @ffi.Int8()
//   external int _unique___opaque_item_2796;
//   @ffi.Int8()
//   external int _unique___opaque_item_2797;
//   @ffi.Int8()
//   external int _unique___opaque_item_2798;
//   @ffi.Int8()
//   external int _unique___opaque_item_2799;
//   @ffi.Int8()
//   external int _unique___opaque_item_2800;
//   @ffi.Int8()
//   external int _unique___opaque_item_2801;
//   @ffi.Int8()
//   external int _unique___opaque_item_2802;
//   @ffi.Int8()
//   external int _unique___opaque_item_2803;
//   @ffi.Int8()
//   external int _unique___opaque_item_2804;
//   @ffi.Int8()
//   external int _unique___opaque_item_2805;
//   @ffi.Int8()
//   external int _unique___opaque_item_2806;
//   @ffi.Int8()
//   external int _unique___opaque_item_2807;
//   @ffi.Int8()
//   external int _unique___opaque_item_2808;
//   @ffi.Int8()
//   external int _unique___opaque_item_2809;
//   @ffi.Int8()
//   external int _unique___opaque_item_2810;
//   @ffi.Int8()
//   external int _unique___opaque_item_2811;
//   @ffi.Int8()
//   external int _unique___opaque_item_2812;
//   @ffi.Int8()
//   external int _unique___opaque_item_2813;
//   @ffi.Int8()
//   external int _unique___opaque_item_2814;
//   @ffi.Int8()
//   external int _unique___opaque_item_2815;
//   @ffi.Int8()
//   external int _unique___opaque_item_2816;
//   @ffi.Int8()
//   external int _unique___opaque_item_2817;
//   @ffi.Int8()
//   external int _unique___opaque_item_2818;
//   @ffi.Int8()
//   external int _unique___opaque_item_2819;
//   @ffi.Int8()
//   external int _unique___opaque_item_2820;
//   @ffi.Int8()
//   external int _unique___opaque_item_2821;
//   @ffi.Int8()
//   external int _unique___opaque_item_2822;
//   @ffi.Int8()
//   external int _unique___opaque_item_2823;
//   @ffi.Int8()
//   external int _unique___opaque_item_2824;
//   @ffi.Int8()
//   external int _unique___opaque_item_2825;
//   @ffi.Int8()
//   external int _unique___opaque_item_2826;
//   @ffi.Int8()
//   external int _unique___opaque_item_2827;
//   @ffi.Int8()
//   external int _unique___opaque_item_2828;
//   @ffi.Int8()
//   external int _unique___opaque_item_2829;
//   @ffi.Int8()
//   external int _unique___opaque_item_2830;
//   @ffi.Int8()
//   external int _unique___opaque_item_2831;
//   @ffi.Int8()
//   external int _unique___opaque_item_2832;
//   @ffi.Int8()
//   external int _unique___opaque_item_2833;
//   @ffi.Int8()
//   external int _unique___opaque_item_2834;
//   @ffi.Int8()
//   external int _unique___opaque_item_2835;
//   @ffi.Int8()
//   external int _unique___opaque_item_2836;
//   @ffi.Int8()
//   external int _unique___opaque_item_2837;
//   @ffi.Int8()
//   external int _unique___opaque_item_2838;
//   @ffi.Int8()
//   external int _unique___opaque_item_2839;
//   @ffi.Int8()
//   external int _unique___opaque_item_2840;
//   @ffi.Int8()
//   external int _unique___opaque_item_2841;
//   @ffi.Int8()
//   external int _unique___opaque_item_2842;
//   @ffi.Int8()
//   external int _unique___opaque_item_2843;
//   @ffi.Int8()
//   external int _unique___opaque_item_2844;
//   @ffi.Int8()
//   external int _unique___opaque_item_2845;
//   @ffi.Int8()
//   external int _unique___opaque_item_2846;
//   @ffi.Int8()
//   external int _unique___opaque_item_2847;
//   @ffi.Int8()
//   external int _unique___opaque_item_2848;
//   @ffi.Int8()
//   external int _unique___opaque_item_2849;
//   @ffi.Int8()
//   external int _unique___opaque_item_2850;
//   @ffi.Int8()
//   external int _unique___opaque_item_2851;
//   @ffi.Int8()
//   external int _unique___opaque_item_2852;
//   @ffi.Int8()
//   external int _unique___opaque_item_2853;
//   @ffi.Int8()
//   external int _unique___opaque_item_2854;
//   @ffi.Int8()
//   external int _unique___opaque_item_2855;
//   @ffi.Int8()
//   external int _unique___opaque_item_2856;
//   @ffi.Int8()
//   external int _unique___opaque_item_2857;
//   @ffi.Int8()
//   external int _unique___opaque_item_2858;
//   @ffi.Int8()
//   external int _unique___opaque_item_2859;
//   @ffi.Int8()
//   external int _unique___opaque_item_2860;
//   @ffi.Int8()
//   external int _unique___opaque_item_2861;
//   @ffi.Int8()
//   external int _unique___opaque_item_2862;
//   @ffi.Int8()
//   external int _unique___opaque_item_2863;
//   @ffi.Int8()
//   external int _unique___opaque_item_2864;
//   @ffi.Int8()
//   external int _unique___opaque_item_2865;
//   @ffi.Int8()
//   external int _unique___opaque_item_2866;
//   @ffi.Int8()
//   external int _unique___opaque_item_2867;
//   @ffi.Int8()
//   external int _unique___opaque_item_2868;
//   @ffi.Int8()
//   external int _unique___opaque_item_2869;
//   @ffi.Int8()
//   external int _unique___opaque_item_2870;
//   @ffi.Int8()
//   external int _unique___opaque_item_2871;
//   @ffi.Int8()
//   external int _unique___opaque_item_2872;
//   @ffi.Int8()
//   external int _unique___opaque_item_2873;
//   @ffi.Int8()
//   external int _unique___opaque_item_2874;
//   @ffi.Int8()
//   external int _unique___opaque_item_2875;
//   @ffi.Int8()
//   external int _unique___opaque_item_2876;
//   @ffi.Int8()
//   external int _unique___opaque_item_2877;
//   @ffi.Int8()
//   external int _unique___opaque_item_2878;
//   @ffi.Int8()
//   external int _unique___opaque_item_2879;
//   @ffi.Int8()
//   external int _unique___opaque_item_2880;
//   @ffi.Int8()
//   external int _unique___opaque_item_2881;
//   @ffi.Int8()
//   external int _unique___opaque_item_2882;
//   @ffi.Int8()
//   external int _unique___opaque_item_2883;
//   @ffi.Int8()
//   external int _unique___opaque_item_2884;
//   @ffi.Int8()
//   external int _unique___opaque_item_2885;
//   @ffi.Int8()
//   external int _unique___opaque_item_2886;
//   @ffi.Int8()
//   external int _unique___opaque_item_2887;
//   @ffi.Int8()
//   external int _unique___opaque_item_2888;
//   @ffi.Int8()
//   external int _unique___opaque_item_2889;
//   @ffi.Int8()
//   external int _unique___opaque_item_2890;
//   @ffi.Int8()
//   external int _unique___opaque_item_2891;
//   @ffi.Int8()
//   external int _unique___opaque_item_2892;
//   @ffi.Int8()
//   external int _unique___opaque_item_2893;
//   @ffi.Int8()
//   external int _unique___opaque_item_2894;
//   @ffi.Int8()
//   external int _unique___opaque_item_2895;
//   @ffi.Int8()
//   external int _unique___opaque_item_2896;
//   @ffi.Int8()
//   external int _unique___opaque_item_2897;
//   @ffi.Int8()
//   external int _unique___opaque_item_2898;
//   @ffi.Int8()
//   external int _unique___opaque_item_2899;
//   @ffi.Int8()
//   external int _unique___opaque_item_2900;
//   @ffi.Int8()
//   external int _unique___opaque_item_2901;
//   @ffi.Int8()
//   external int _unique___opaque_item_2902;
//   @ffi.Int8()
//   external int _unique___opaque_item_2903;
//   @ffi.Int8()
//   external int _unique___opaque_item_2904;
//   @ffi.Int8()
//   external int _unique___opaque_item_2905;
//   @ffi.Int8()
//   external int _unique___opaque_item_2906;
//   @ffi.Int8()
//   external int _unique___opaque_item_2907;
//   @ffi.Int8()
//   external int _unique___opaque_item_2908;
//   @ffi.Int8()
//   external int _unique___opaque_item_2909;
//   @ffi.Int8()
//   external int _unique___opaque_item_2910;
//   @ffi.Int8()
//   external int _unique___opaque_item_2911;
//   @ffi.Int8()
//   external int _unique___opaque_item_2912;
//   @ffi.Int8()
//   external int _unique___opaque_item_2913;
//   @ffi.Int8()
//   external int _unique___opaque_item_2914;
//   @ffi.Int8()
//   external int _unique___opaque_item_2915;
//   @ffi.Int8()
//   external int _unique___opaque_item_2916;
//   @ffi.Int8()
//   external int _unique___opaque_item_2917;
//   @ffi.Int8()
//   external int _unique___opaque_item_2918;
//   @ffi.Int8()
//   external int _unique___opaque_item_2919;
//   @ffi.Int8()
//   external int _unique___opaque_item_2920;
//   @ffi.Int8()
//   external int _unique___opaque_item_2921;
//   @ffi.Int8()
//   external int _unique___opaque_item_2922;
//   @ffi.Int8()
//   external int _unique___opaque_item_2923;
//   @ffi.Int8()
//   external int _unique___opaque_item_2924;
//   @ffi.Int8()
//   external int _unique___opaque_item_2925;
//   @ffi.Int8()
//   external int _unique___opaque_item_2926;
//   @ffi.Int8()
//   external int _unique___opaque_item_2927;
//   @ffi.Int8()
//   external int _unique___opaque_item_2928;
//   @ffi.Int8()
//   external int _unique___opaque_item_2929;
//   @ffi.Int8()
//   external int _unique___opaque_item_2930;
//   @ffi.Int8()
//   external int _unique___opaque_item_2931;
//   @ffi.Int8()
//   external int _unique___opaque_item_2932;
//   @ffi.Int8()
//   external int _unique___opaque_item_2933;
//   @ffi.Int8()
//   external int _unique___opaque_item_2934;
//   @ffi.Int8()
//   external int _unique___opaque_item_2935;
//   @ffi.Int8()
//   external int _unique___opaque_item_2936;
//   @ffi.Int8()
//   external int _unique___opaque_item_2937;
//   @ffi.Int8()
//   external int _unique___opaque_item_2938;
//   @ffi.Int8()
//   external int _unique___opaque_item_2939;
//   @ffi.Int8()
//   external int _unique___opaque_item_2940;
//   @ffi.Int8()
//   external int _unique___opaque_item_2941;
//   @ffi.Int8()
//   external int _unique___opaque_item_2942;
//   @ffi.Int8()
//   external int _unique___opaque_item_2943;
//   @ffi.Int8()
//   external int _unique___opaque_item_2944;
//   @ffi.Int8()
//   external int _unique___opaque_item_2945;
//   @ffi.Int8()
//   external int _unique___opaque_item_2946;
//   @ffi.Int8()
//   external int _unique___opaque_item_2947;
//   @ffi.Int8()
//   external int _unique___opaque_item_2948;
//   @ffi.Int8()
//   external int _unique___opaque_item_2949;
//   @ffi.Int8()
//   external int _unique___opaque_item_2950;
//   @ffi.Int8()
//   external int _unique___opaque_item_2951;
//   @ffi.Int8()
//   external int _unique___opaque_item_2952;
//   @ffi.Int8()
//   external int _unique___opaque_item_2953;
//   @ffi.Int8()
//   external int _unique___opaque_item_2954;
//   @ffi.Int8()
//   external int _unique___opaque_item_2955;
//   @ffi.Int8()
//   external int _unique___opaque_item_2956;
//   @ffi.Int8()
//   external int _unique___opaque_item_2957;
//   @ffi.Int8()
//   external int _unique___opaque_item_2958;
//   @ffi.Int8()
//   external int _unique___opaque_item_2959;
//   @ffi.Int8()
//   external int _unique___opaque_item_2960;
//   @ffi.Int8()
//   external int _unique___opaque_item_2961;
//   @ffi.Int8()
//   external int _unique___opaque_item_2962;
//   @ffi.Int8()
//   external int _unique___opaque_item_2963;
//   @ffi.Int8()
//   external int _unique___opaque_item_2964;
//   @ffi.Int8()
//   external int _unique___opaque_item_2965;
//   @ffi.Int8()
//   external int _unique___opaque_item_2966;
//   @ffi.Int8()
//   external int _unique___opaque_item_2967;
//   @ffi.Int8()
//   external int _unique___opaque_item_2968;
//   @ffi.Int8()
//   external int _unique___opaque_item_2969;
//   @ffi.Int8()
//   external int _unique___opaque_item_2970;
//   @ffi.Int8()
//   external int _unique___opaque_item_2971;
//   @ffi.Int8()
//   external int _unique___opaque_item_2972;
//   @ffi.Int8()
//   external int _unique___opaque_item_2973;
//   @ffi.Int8()
//   external int _unique___opaque_item_2974;
//   @ffi.Int8()
//   external int _unique___opaque_item_2975;
//   @ffi.Int8()
//   external int _unique___opaque_item_2976;
//   @ffi.Int8()
//   external int _unique___opaque_item_2977;
//   @ffi.Int8()
//   external int _unique___opaque_item_2978;
//   @ffi.Int8()
//   external int _unique___opaque_item_2979;
//   @ffi.Int8()
//   external int _unique___opaque_item_2980;
//   @ffi.Int8()
//   external int _unique___opaque_item_2981;
//   @ffi.Int8()
//   external int _unique___opaque_item_2982;
//   @ffi.Int8()
//   external int _unique___opaque_item_2983;
//   @ffi.Int8()
//   external int _unique___opaque_item_2984;
//   @ffi.Int8()
//   external int _unique___opaque_item_2985;
//   @ffi.Int8()
//   external int _unique___opaque_item_2986;
//   @ffi.Int8()
//   external int _unique___opaque_item_2987;
//   @ffi.Int8()
//   external int _unique___opaque_item_2988;
//   @ffi.Int8()
//   external int _unique___opaque_item_2989;
//   @ffi.Int8()
//   external int _unique___opaque_item_2990;
//   @ffi.Int8()
//   external int _unique___opaque_item_2991;
//   @ffi.Int8()
//   external int _unique___opaque_item_2992;
//   @ffi.Int8()
//   external int _unique___opaque_item_2993;
//   @ffi.Int8()
//   external int _unique___opaque_item_2994;
//   @ffi.Int8()
//   external int _unique___opaque_item_2995;
//   @ffi.Int8()
//   external int _unique___opaque_item_2996;
//   @ffi.Int8()
//   external int _unique___opaque_item_2997;
//   @ffi.Int8()
//   external int _unique___opaque_item_2998;
//   @ffi.Int8()
//   external int _unique___opaque_item_2999;
//   @ffi.Int8()
//   external int _unique___opaque_item_3000;
//   @ffi.Int8()
//   external int _unique___opaque_item_3001;
//   @ffi.Int8()
//   external int _unique___opaque_item_3002;
//   @ffi.Int8()
//   external int _unique___opaque_item_3003;
//   @ffi.Int8()
//   external int _unique___opaque_item_3004;
//   @ffi.Int8()
//   external int _unique___opaque_item_3005;
//   @ffi.Int8()
//   external int _unique___opaque_item_3006;
//   @ffi.Int8()
//   external int _unique___opaque_item_3007;
//   @ffi.Int8()
//   external int _unique___opaque_item_3008;
//   @ffi.Int8()
//   external int _unique___opaque_item_3009;
//   @ffi.Int8()
//   external int _unique___opaque_item_3010;
//   @ffi.Int8()
//   external int _unique___opaque_item_3011;
//   @ffi.Int8()
//   external int _unique___opaque_item_3012;
//   @ffi.Int8()
//   external int _unique___opaque_item_3013;
//   @ffi.Int8()
//   external int _unique___opaque_item_3014;
//   @ffi.Int8()
//   external int _unique___opaque_item_3015;
//   @ffi.Int8()
//   external int _unique___opaque_item_3016;
//   @ffi.Int8()
//   external int _unique___opaque_item_3017;
//   @ffi.Int8()
//   external int _unique___opaque_item_3018;
//   @ffi.Int8()
//   external int _unique___opaque_item_3019;
//   @ffi.Int8()
//   external int _unique___opaque_item_3020;
//   @ffi.Int8()
//   external int _unique___opaque_item_3021;
//   @ffi.Int8()
//   external int _unique___opaque_item_3022;
//   @ffi.Int8()
//   external int _unique___opaque_item_3023;
//   @ffi.Int8()
//   external int _unique___opaque_item_3024;
//   @ffi.Int8()
//   external int _unique___opaque_item_3025;
//   @ffi.Int8()
//   external int _unique___opaque_item_3026;
//   @ffi.Int8()
//   external int _unique___opaque_item_3027;
//   @ffi.Int8()
//   external int _unique___opaque_item_3028;
//   @ffi.Int8()
//   external int _unique___opaque_item_3029;
//   @ffi.Int8()
//   external int _unique___opaque_item_3030;
//   @ffi.Int8()
//   external int _unique___opaque_item_3031;
//   @ffi.Int8()
//   external int _unique___opaque_item_3032;
//   @ffi.Int8()
//   external int _unique___opaque_item_3033;
//   @ffi.Int8()
//   external int _unique___opaque_item_3034;
//   @ffi.Int8()
//   external int _unique___opaque_item_3035;
//   @ffi.Int8()
//   external int _unique___opaque_item_3036;
//   @ffi.Int8()
//   external int _unique___opaque_item_3037;
//   @ffi.Int8()
//   external int _unique___opaque_item_3038;
//   @ffi.Int8()
//   external int _unique___opaque_item_3039;
//   @ffi.Int8()
//   external int _unique___opaque_item_3040;
//   @ffi.Int8()
//   external int _unique___opaque_item_3041;
//   @ffi.Int8()
//   external int _unique___opaque_item_3042;
//   @ffi.Int8()
//   external int _unique___opaque_item_3043;
//   @ffi.Int8()
//   external int _unique___opaque_item_3044;
//   @ffi.Int8()
//   external int _unique___opaque_item_3045;
//   @ffi.Int8()
//   external int _unique___opaque_item_3046;
//   @ffi.Int8()
//   external int _unique___opaque_item_3047;
//   @ffi.Int8()
//   external int _unique___opaque_item_3048;
//   @ffi.Int8()
//   external int _unique___opaque_item_3049;
//   @ffi.Int8()
//   external int _unique___opaque_item_3050;
//   @ffi.Int8()
//   external int _unique___opaque_item_3051;
//   @ffi.Int8()
//   external int _unique___opaque_item_3052;
//   @ffi.Int8()
//   external int _unique___opaque_item_3053;
//   @ffi.Int8()
//   external int _unique___opaque_item_3054;
//   @ffi.Int8()
//   external int _unique___opaque_item_3055;
//   @ffi.Int8()
//   external int _unique___opaque_item_3056;
//   @ffi.Int8()
//   external int _unique___opaque_item_3057;
//   @ffi.Int8()
//   external int _unique___opaque_item_3058;
//   @ffi.Int8()
//   external int _unique___opaque_item_3059;
//   @ffi.Int8()
//   external int _unique___opaque_item_3060;
//   @ffi.Int8()
//   external int _unique___opaque_item_3061;
//   @ffi.Int8()
//   external int _unique___opaque_item_3062;
//   @ffi.Int8()
//   external int _unique___opaque_item_3063;
//   @ffi.Int8()
//   external int _unique___opaque_item_3064;
//   @ffi.Int8()
//   external int _unique___opaque_item_3065;
//   @ffi.Int8()
//   external int _unique___opaque_item_3066;
//   @ffi.Int8()
//   external int _unique___opaque_item_3067;
//   @ffi.Int8()
//   external int _unique___opaque_item_3068;
//   @ffi.Int8()
//   external int _unique___opaque_item_3069;
//   @ffi.Int8()
//   external int _unique___opaque_item_3070;
//   @ffi.Int8()
//   external int _unique___opaque_item_3071;
//   @ffi.Int8()
//   external int _unique___opaque_item_3072;
//   @ffi.Int8()
//   external int _unique___opaque_item_3073;
//   @ffi.Int8()
//   external int _unique___opaque_item_3074;
//   @ffi.Int8()
//   external int _unique___opaque_item_3075;
//   @ffi.Int8()
//   external int _unique___opaque_item_3076;
//   @ffi.Int8()
//   external int _unique___opaque_item_3077;
//   @ffi.Int8()
//   external int _unique___opaque_item_3078;
//   @ffi.Int8()
//   external int _unique___opaque_item_3079;
//   @ffi.Int8()
//   external int _unique___opaque_item_3080;
//   @ffi.Int8()
//   external int _unique___opaque_item_3081;
//   @ffi.Int8()
//   external int _unique___opaque_item_3082;
//   @ffi.Int8()
//   external int _unique___opaque_item_3083;
//   @ffi.Int8()
//   external int _unique___opaque_item_3084;
//   @ffi.Int8()
//   external int _unique___opaque_item_3085;
//   @ffi.Int8()
//   external int _unique___opaque_item_3086;
//   @ffi.Int8()
//   external int _unique___opaque_item_3087;
//   @ffi.Int8()
//   external int _unique___opaque_item_3088;
//   @ffi.Int8()
//   external int _unique___opaque_item_3089;
//   @ffi.Int8()
//   external int _unique___opaque_item_3090;
//   @ffi.Int8()
//   external int _unique___opaque_item_3091;
//   @ffi.Int8()
//   external int _unique___opaque_item_3092;
//   @ffi.Int8()
//   external int _unique___opaque_item_3093;
//   @ffi.Int8()
//   external int _unique___opaque_item_3094;
//   @ffi.Int8()
//   external int _unique___opaque_item_3095;
//   @ffi.Int8()
//   external int _unique___opaque_item_3096;
//   @ffi.Int8()
//   external int _unique___opaque_item_3097;
//   @ffi.Int8()
//   external int _unique___opaque_item_3098;
//   @ffi.Int8()
//   external int _unique___opaque_item_3099;
//   @ffi.Int8()
//   external int _unique___opaque_item_3100;
//   @ffi.Int8()
//   external int _unique___opaque_item_3101;
//   @ffi.Int8()
//   external int _unique___opaque_item_3102;
//   @ffi.Int8()
//   external int _unique___opaque_item_3103;
//   @ffi.Int8()
//   external int _unique___opaque_item_3104;
//   @ffi.Int8()
//   external int _unique___opaque_item_3105;
//   @ffi.Int8()
//   external int _unique___opaque_item_3106;
//   @ffi.Int8()
//   external int _unique___opaque_item_3107;
//   @ffi.Int8()
//   external int _unique___opaque_item_3108;
//   @ffi.Int8()
//   external int _unique___opaque_item_3109;
//   @ffi.Int8()
//   external int _unique___opaque_item_3110;
//   @ffi.Int8()
//   external int _unique___opaque_item_3111;
//   @ffi.Int8()
//   external int _unique___opaque_item_3112;
//   @ffi.Int8()
//   external int _unique___opaque_item_3113;
//   @ffi.Int8()
//   external int _unique___opaque_item_3114;
//   @ffi.Int8()
//   external int _unique___opaque_item_3115;
//   @ffi.Int8()
//   external int _unique___opaque_item_3116;
//   @ffi.Int8()
//   external int _unique___opaque_item_3117;
//   @ffi.Int8()
//   external int _unique___opaque_item_3118;
//   @ffi.Int8()
//   external int _unique___opaque_item_3119;
//   @ffi.Int8()
//   external int _unique___opaque_item_3120;
//   @ffi.Int8()
//   external int _unique___opaque_item_3121;
//   @ffi.Int8()
//   external int _unique___opaque_item_3122;
//   @ffi.Int8()
//   external int _unique___opaque_item_3123;
//   @ffi.Int8()
//   external int _unique___opaque_item_3124;
//   @ffi.Int8()
//   external int _unique___opaque_item_3125;
//   @ffi.Int8()
//   external int _unique___opaque_item_3126;
//   @ffi.Int8()
//   external int _unique___opaque_item_3127;
//   @ffi.Int8()
//   external int _unique___opaque_item_3128;
//   @ffi.Int8()
//   external int _unique___opaque_item_3129;
//   @ffi.Int8()
//   external int _unique___opaque_item_3130;
//   @ffi.Int8()
//   external int _unique___opaque_item_3131;
//   @ffi.Int8()
//   external int _unique___opaque_item_3132;
//   @ffi.Int8()
//   external int _unique___opaque_item_3133;
//   @ffi.Int8()
//   external int _unique___opaque_item_3134;
//   @ffi.Int8()
//   external int _unique___opaque_item_3135;
//   @ffi.Int8()
//   external int _unique___opaque_item_3136;
//   @ffi.Int8()
//   external int _unique___opaque_item_3137;
//   @ffi.Int8()
//   external int _unique___opaque_item_3138;
//   @ffi.Int8()
//   external int _unique___opaque_item_3139;
//   @ffi.Int8()
//   external int _unique___opaque_item_3140;
//   @ffi.Int8()
//   external int _unique___opaque_item_3141;
//   @ffi.Int8()
//   external int _unique___opaque_item_3142;
//   @ffi.Int8()
//   external int _unique___opaque_item_3143;
//   @ffi.Int8()
//   external int _unique___opaque_item_3144;
//   @ffi.Int8()
//   external int _unique___opaque_item_3145;
//   @ffi.Int8()
//   external int _unique___opaque_item_3146;
//   @ffi.Int8()
//   external int _unique___opaque_item_3147;
//   @ffi.Int8()
//   external int _unique___opaque_item_3148;
//   @ffi.Int8()
//   external int _unique___opaque_item_3149;
//   @ffi.Int8()
//   external int _unique___opaque_item_3150;
//   @ffi.Int8()
//   external int _unique___opaque_item_3151;
//   @ffi.Int8()
//   external int _unique___opaque_item_3152;
//   @ffi.Int8()
//   external int _unique___opaque_item_3153;
//   @ffi.Int8()
//   external int _unique___opaque_item_3154;
//   @ffi.Int8()
//   external int _unique___opaque_item_3155;
//   @ffi.Int8()
//   external int _unique___opaque_item_3156;
//   @ffi.Int8()
//   external int _unique___opaque_item_3157;
//   @ffi.Int8()
//   external int _unique___opaque_item_3158;
//   @ffi.Int8()
//   external int _unique___opaque_item_3159;
//   @ffi.Int8()
//   external int _unique___opaque_item_3160;
//   @ffi.Int8()
//   external int _unique___opaque_item_3161;
//   @ffi.Int8()
//   external int _unique___opaque_item_3162;
//   @ffi.Int8()
//   external int _unique___opaque_item_3163;
//   @ffi.Int8()
//   external int _unique___opaque_item_3164;
//   @ffi.Int8()
//   external int _unique___opaque_item_3165;
//   @ffi.Int8()
//   external int _unique___opaque_item_3166;
//   @ffi.Int8()
//   external int _unique___opaque_item_3167;
//   @ffi.Int8()
//   external int _unique___opaque_item_3168;
//   @ffi.Int8()
//   external int _unique___opaque_item_3169;
//   @ffi.Int8()
//   external int _unique___opaque_item_3170;
//   @ffi.Int8()
//   external int _unique___opaque_item_3171;
//   @ffi.Int8()
//   external int _unique___opaque_item_3172;
//   @ffi.Int8()
//   external int _unique___opaque_item_3173;
//   @ffi.Int8()
//   external int _unique___opaque_item_3174;
//   @ffi.Int8()
//   external int _unique___opaque_item_3175;
//   @ffi.Int8()
//   external int _unique___opaque_item_3176;
//   @ffi.Int8()
//   external int _unique___opaque_item_3177;
//   @ffi.Int8()
//   external int _unique___opaque_item_3178;
//   @ffi.Int8()
//   external int _unique___opaque_item_3179;
//   @ffi.Int8()
//   external int _unique___opaque_item_3180;
//   @ffi.Int8()
//   external int _unique___opaque_item_3181;
//   @ffi.Int8()
//   external int _unique___opaque_item_3182;
//   @ffi.Int8()
//   external int _unique___opaque_item_3183;
//   @ffi.Int8()
//   external int _unique___opaque_item_3184;
//   @ffi.Int8()
//   external int _unique___opaque_item_3185;
//   @ffi.Int8()
//   external int _unique___opaque_item_3186;
//   @ffi.Int8()
//   external int _unique___opaque_item_3187;
//   @ffi.Int8()
//   external int _unique___opaque_item_3188;
//   @ffi.Int8()
//   external int _unique___opaque_item_3189;
//   @ffi.Int8()
//   external int _unique___opaque_item_3190;
//   @ffi.Int8()
//   external int _unique___opaque_item_3191;
//   @ffi.Int8()
//   external int _unique___opaque_item_3192;
//   @ffi.Int8()
//   external int _unique___opaque_item_3193;
//   @ffi.Int8()
//   external int _unique___opaque_item_3194;
//   @ffi.Int8()
//   external int _unique___opaque_item_3195;
//   @ffi.Int8()
//   external int _unique___opaque_item_3196;
//   @ffi.Int8()
//   external int _unique___opaque_item_3197;
//   @ffi.Int8()
//   external int _unique___opaque_item_3198;
//   @ffi.Int8()
//   external int _unique___opaque_item_3199;
//   @ffi.Int8()
//   external int _unique___opaque_item_3200;
//   @ffi.Int8()
//   external int _unique___opaque_item_3201;
//   @ffi.Int8()
//   external int _unique___opaque_item_3202;
//   @ffi.Int8()
//   external int _unique___opaque_item_3203;
//   @ffi.Int8()
//   external int _unique___opaque_item_3204;
//   @ffi.Int8()
//   external int _unique___opaque_item_3205;
//   @ffi.Int8()
//   external int _unique___opaque_item_3206;
//   @ffi.Int8()
//   external int _unique___opaque_item_3207;
//   @ffi.Int8()
//   external int _unique___opaque_item_3208;
//   @ffi.Int8()
//   external int _unique___opaque_item_3209;
//   @ffi.Int8()
//   external int _unique___opaque_item_3210;
//   @ffi.Int8()
//   external int _unique___opaque_item_3211;
//   @ffi.Int8()
//   external int _unique___opaque_item_3212;
//   @ffi.Int8()
//   external int _unique___opaque_item_3213;
//   @ffi.Int8()
//   external int _unique___opaque_item_3214;
//   @ffi.Int8()
//   external int _unique___opaque_item_3215;
//   @ffi.Int8()
//   external int _unique___opaque_item_3216;
//   @ffi.Int8()
//   external int _unique___opaque_item_3217;
//   @ffi.Int8()
//   external int _unique___opaque_item_3218;
//   @ffi.Int8()
//   external int _unique___opaque_item_3219;
//   @ffi.Int8()
//   external int _unique___opaque_item_3220;
//   @ffi.Int8()
//   external int _unique___opaque_item_3221;
//   @ffi.Int8()
//   external int _unique___opaque_item_3222;
//   @ffi.Int8()
//   external int _unique___opaque_item_3223;
//   @ffi.Int8()
//   external int _unique___opaque_item_3224;
//   @ffi.Int8()
//   external int _unique___opaque_item_3225;
//   @ffi.Int8()
//   external int _unique___opaque_item_3226;
//   @ffi.Int8()
//   external int _unique___opaque_item_3227;
//   @ffi.Int8()
//   external int _unique___opaque_item_3228;
//   @ffi.Int8()
//   external int _unique___opaque_item_3229;
//   @ffi.Int8()
//   external int _unique___opaque_item_3230;
//   @ffi.Int8()
//   external int _unique___opaque_item_3231;
//   @ffi.Int8()
//   external int _unique___opaque_item_3232;
//   @ffi.Int8()
//   external int _unique___opaque_item_3233;
//   @ffi.Int8()
//   external int _unique___opaque_item_3234;
//   @ffi.Int8()
//   external int _unique___opaque_item_3235;
//   @ffi.Int8()
//   external int _unique___opaque_item_3236;
//   @ffi.Int8()
//   external int _unique___opaque_item_3237;
//   @ffi.Int8()
//   external int _unique___opaque_item_3238;
//   @ffi.Int8()
//   external int _unique___opaque_item_3239;
//   @ffi.Int8()
//   external int _unique___opaque_item_3240;
//   @ffi.Int8()
//   external int _unique___opaque_item_3241;
//   @ffi.Int8()
//   external int _unique___opaque_item_3242;
//   @ffi.Int8()
//   external int _unique___opaque_item_3243;
//   @ffi.Int8()
//   external int _unique___opaque_item_3244;
//   @ffi.Int8()
//   external int _unique___opaque_item_3245;
//   @ffi.Int8()
//   external int _unique___opaque_item_3246;
//   @ffi.Int8()
//   external int _unique___opaque_item_3247;
//   @ffi.Int8()
//   external int _unique___opaque_item_3248;
//   @ffi.Int8()
//   external int _unique___opaque_item_3249;
//   @ffi.Int8()
//   external int _unique___opaque_item_3250;
//   @ffi.Int8()
//   external int _unique___opaque_item_3251;
//   @ffi.Int8()
//   external int _unique___opaque_item_3252;
//   @ffi.Int8()
//   external int _unique___opaque_item_3253;
//   @ffi.Int8()
//   external int _unique___opaque_item_3254;
//   @ffi.Int8()
//   external int _unique___opaque_item_3255;
//   @ffi.Int8()
//   external int _unique___opaque_item_3256;
//   @ffi.Int8()
//   external int _unique___opaque_item_3257;
//   @ffi.Int8()
//   external int _unique___opaque_item_3258;
//   @ffi.Int8()
//   external int _unique___opaque_item_3259;
//   @ffi.Int8()
//   external int _unique___opaque_item_3260;
//   @ffi.Int8()
//   external int _unique___opaque_item_3261;
//   @ffi.Int8()
//   external int _unique___opaque_item_3262;
//   @ffi.Int8()
//   external int _unique___opaque_item_3263;
//   @ffi.Int8()
//   external int _unique___opaque_item_3264;
//   @ffi.Int8()
//   external int _unique___opaque_item_3265;
//   @ffi.Int8()
//   external int _unique___opaque_item_3266;
//   @ffi.Int8()
//   external int _unique___opaque_item_3267;
//   @ffi.Int8()
//   external int _unique___opaque_item_3268;
//   @ffi.Int8()
//   external int _unique___opaque_item_3269;
//   @ffi.Int8()
//   external int _unique___opaque_item_3270;
//   @ffi.Int8()
//   external int _unique___opaque_item_3271;
//   @ffi.Int8()
//   external int _unique___opaque_item_3272;
//   @ffi.Int8()
//   external int _unique___opaque_item_3273;
//   @ffi.Int8()
//   external int _unique___opaque_item_3274;
//   @ffi.Int8()
//   external int _unique___opaque_item_3275;
//   @ffi.Int8()
//   external int _unique___opaque_item_3276;
//   @ffi.Int8()
//   external int _unique___opaque_item_3277;
//   @ffi.Int8()
//   external int _unique___opaque_item_3278;
//   @ffi.Int8()
//   external int _unique___opaque_item_3279;
//   @ffi.Int8()
//   external int _unique___opaque_item_3280;
//   @ffi.Int8()
//   external int _unique___opaque_item_3281;
//   @ffi.Int8()
//   external int _unique___opaque_item_3282;
//   @ffi.Int8()
//   external int _unique___opaque_item_3283;
//   @ffi.Int8()
//   external int _unique___opaque_item_3284;
//   @ffi.Int8()
//   external int _unique___opaque_item_3285;
//   @ffi.Int8()
//   external int _unique___opaque_item_3286;
//   @ffi.Int8()
//   external int _unique___opaque_item_3287;
//   @ffi.Int8()
//   external int _unique___opaque_item_3288;
//   @ffi.Int8()
//   external int _unique___opaque_item_3289;
//   @ffi.Int8()
//   external int _unique___opaque_item_3290;
//   @ffi.Int8()
//   external int _unique___opaque_item_3291;
//   @ffi.Int8()
//   external int _unique___opaque_item_3292;
//   @ffi.Int8()
//   external int _unique___opaque_item_3293;
//   @ffi.Int8()
//   external int _unique___opaque_item_3294;
//   @ffi.Int8()
//   external int _unique___opaque_item_3295;
//   @ffi.Int8()
//   external int _unique___opaque_item_3296;
//   @ffi.Int8()
//   external int _unique___opaque_item_3297;
//   @ffi.Int8()
//   external int _unique___opaque_item_3298;
//   @ffi.Int8()
//   external int _unique___opaque_item_3299;
//   @ffi.Int8()
//   external int _unique___opaque_item_3300;
//   @ffi.Int8()
//   external int _unique___opaque_item_3301;
//   @ffi.Int8()
//   external int _unique___opaque_item_3302;
//   @ffi.Int8()
//   external int _unique___opaque_item_3303;
//   @ffi.Int8()
//   external int _unique___opaque_item_3304;
//   @ffi.Int8()
//   external int _unique___opaque_item_3305;
//   @ffi.Int8()
//   external int _unique___opaque_item_3306;
//   @ffi.Int8()
//   external int _unique___opaque_item_3307;
//   @ffi.Int8()
//   external int _unique___opaque_item_3308;
//   @ffi.Int8()
//   external int _unique___opaque_item_3309;
//   @ffi.Int8()
//   external int _unique___opaque_item_3310;
//   @ffi.Int8()
//   external int _unique___opaque_item_3311;
//   @ffi.Int8()
//   external int _unique___opaque_item_3312;
//   @ffi.Int8()
//   external int _unique___opaque_item_3313;
//   @ffi.Int8()
//   external int _unique___opaque_item_3314;
//   @ffi.Int8()
//   external int _unique___opaque_item_3315;
//   @ffi.Int8()
//   external int _unique___opaque_item_3316;
//   @ffi.Int8()
//   external int _unique___opaque_item_3317;
//   @ffi.Int8()
//   external int _unique___opaque_item_3318;
//   @ffi.Int8()
//   external int _unique___opaque_item_3319;
//   @ffi.Int8()
//   external int _unique___opaque_item_3320;
//   @ffi.Int8()
//   external int _unique___opaque_item_3321;
//   @ffi.Int8()
//   external int _unique___opaque_item_3322;
//   @ffi.Int8()
//   external int _unique___opaque_item_3323;
//   @ffi.Int8()
//   external int _unique___opaque_item_3324;
//   @ffi.Int8()
//   external int _unique___opaque_item_3325;
//   @ffi.Int8()
//   external int _unique___opaque_item_3326;
//   @ffi.Int8()
//   external int _unique___opaque_item_3327;
//   @ffi.Int8()
//   external int _unique___opaque_item_3328;
//   @ffi.Int8()
//   external int _unique___opaque_item_3329;
//   @ffi.Int8()
//   external int _unique___opaque_item_3330;
//   @ffi.Int8()
//   external int _unique___opaque_item_3331;
//   @ffi.Int8()
//   external int _unique___opaque_item_3332;
//   @ffi.Int8()
//   external int _unique___opaque_item_3333;
//   @ffi.Int8()
//   external int _unique___opaque_item_3334;
//   @ffi.Int8()
//   external int _unique___opaque_item_3335;
//   @ffi.Int8()
//   external int _unique___opaque_item_3336;
//   @ffi.Int8()
//   external int _unique___opaque_item_3337;
//   @ffi.Int8()
//   external int _unique___opaque_item_3338;
//   @ffi.Int8()
//   external int _unique___opaque_item_3339;
//   @ffi.Int8()
//   external int _unique___opaque_item_3340;
//   @ffi.Int8()
//   external int _unique___opaque_item_3341;
//   @ffi.Int8()
//   external int _unique___opaque_item_3342;
//   @ffi.Int8()
//   external int _unique___opaque_item_3343;
//   @ffi.Int8()
//   external int _unique___opaque_item_3344;
//   @ffi.Int8()
//   external int _unique___opaque_item_3345;
//   @ffi.Int8()
//   external int _unique___opaque_item_3346;
//   @ffi.Int8()
//   external int _unique___opaque_item_3347;
//   @ffi.Int8()
//   external int _unique___opaque_item_3348;
//   @ffi.Int8()
//   external int _unique___opaque_item_3349;
//   @ffi.Int8()
//   external int _unique___opaque_item_3350;
//   @ffi.Int8()
//   external int _unique___opaque_item_3351;
//   @ffi.Int8()
//   external int _unique___opaque_item_3352;
//   @ffi.Int8()
//   external int _unique___opaque_item_3353;
//   @ffi.Int8()
//   external int _unique___opaque_item_3354;
//   @ffi.Int8()
//   external int _unique___opaque_item_3355;
//   @ffi.Int8()
//   external int _unique___opaque_item_3356;
//   @ffi.Int8()
//   external int _unique___opaque_item_3357;
//   @ffi.Int8()
//   external int _unique___opaque_item_3358;
//   @ffi.Int8()
//   external int _unique___opaque_item_3359;
//   @ffi.Int8()
//   external int _unique___opaque_item_3360;
//   @ffi.Int8()
//   external int _unique___opaque_item_3361;
//   @ffi.Int8()
//   external int _unique___opaque_item_3362;
//   @ffi.Int8()
//   external int _unique___opaque_item_3363;
//   @ffi.Int8()
//   external int _unique___opaque_item_3364;
//   @ffi.Int8()
//   external int _unique___opaque_item_3365;
//   @ffi.Int8()
//   external int _unique___opaque_item_3366;
//   @ffi.Int8()
//   external int _unique___opaque_item_3367;
//   @ffi.Int8()
//   external int _unique___opaque_item_3368;
//   @ffi.Int8()
//   external int _unique___opaque_item_3369;
//   @ffi.Int8()
//   external int _unique___opaque_item_3370;
//   @ffi.Int8()
//   external int _unique___opaque_item_3371;
//   @ffi.Int8()
//   external int _unique___opaque_item_3372;
//   @ffi.Int8()
//   external int _unique___opaque_item_3373;
//   @ffi.Int8()
//   external int _unique___opaque_item_3374;
//   @ffi.Int8()
//   external int _unique___opaque_item_3375;
//   @ffi.Int8()
//   external int _unique___opaque_item_3376;
//   @ffi.Int8()
//   external int _unique___opaque_item_3377;
//   @ffi.Int8()
//   external int _unique___opaque_item_3378;
//   @ffi.Int8()
//   external int _unique___opaque_item_3379;
//   @ffi.Int8()
//   external int _unique___opaque_item_3380;
//   @ffi.Int8()
//   external int _unique___opaque_item_3381;
//   @ffi.Int8()
//   external int _unique___opaque_item_3382;
//   @ffi.Int8()
//   external int _unique___opaque_item_3383;
//   @ffi.Int8()
//   external int _unique___opaque_item_3384;
//   @ffi.Int8()
//   external int _unique___opaque_item_3385;
//   @ffi.Int8()
//   external int _unique___opaque_item_3386;
//   @ffi.Int8()
//   external int _unique___opaque_item_3387;
//   @ffi.Int8()
//   external int _unique___opaque_item_3388;
//   @ffi.Int8()
//   external int _unique___opaque_item_3389;
//   @ffi.Int8()
//   external int _unique___opaque_item_3390;
//   @ffi.Int8()
//   external int _unique___opaque_item_3391;
//   @ffi.Int8()
//   external int _unique___opaque_item_3392;
//   @ffi.Int8()
//   external int _unique___opaque_item_3393;
//   @ffi.Int8()
//   external int _unique___opaque_item_3394;
//   @ffi.Int8()
//   external int _unique___opaque_item_3395;
//   @ffi.Int8()
//   external int _unique___opaque_item_3396;
//   @ffi.Int8()
//   external int _unique___opaque_item_3397;
//   @ffi.Int8()
//   external int _unique___opaque_item_3398;
//   @ffi.Int8()
//   external int _unique___opaque_item_3399;
//   @ffi.Int8()
//   external int _unique___opaque_item_3400;
//   @ffi.Int8()
//   external int _unique___opaque_item_3401;
//   @ffi.Int8()
//   external int _unique___opaque_item_3402;
//   @ffi.Int8()
//   external int _unique___opaque_item_3403;
//   @ffi.Int8()
//   external int _unique___opaque_item_3404;
//   @ffi.Int8()
//   external int _unique___opaque_item_3405;
//   @ffi.Int8()
//   external int _unique___opaque_item_3406;
//   @ffi.Int8()
//   external int _unique___opaque_item_3407;
//   @ffi.Int8()
//   external int _unique___opaque_item_3408;
//   @ffi.Int8()
//   external int _unique___opaque_item_3409;
//   @ffi.Int8()
//   external int _unique___opaque_item_3410;
//   @ffi.Int8()
//   external int _unique___opaque_item_3411;
//   @ffi.Int8()
//   external int _unique___opaque_item_3412;
//   @ffi.Int8()
//   external int _unique___opaque_item_3413;
//   @ffi.Int8()
//   external int _unique___opaque_item_3414;
//   @ffi.Int8()
//   external int _unique___opaque_item_3415;
//   @ffi.Int8()
//   external int _unique___opaque_item_3416;
//   @ffi.Int8()
//   external int _unique___opaque_item_3417;
//   @ffi.Int8()
//   external int _unique___opaque_item_3418;
//   @ffi.Int8()
//   external int _unique___opaque_item_3419;
//   @ffi.Int8()
//   external int _unique___opaque_item_3420;
//   @ffi.Int8()
//   external int _unique___opaque_item_3421;
//   @ffi.Int8()
//   external int _unique___opaque_item_3422;
//   @ffi.Int8()
//   external int _unique___opaque_item_3423;
//   @ffi.Int8()
//   external int _unique___opaque_item_3424;
//   @ffi.Int8()
//   external int _unique___opaque_item_3425;
//   @ffi.Int8()
//   external int _unique___opaque_item_3426;
//   @ffi.Int8()
//   external int _unique___opaque_item_3427;
//   @ffi.Int8()
//   external int _unique___opaque_item_3428;
//   @ffi.Int8()
//   external int _unique___opaque_item_3429;
//   @ffi.Int8()
//   external int _unique___opaque_item_3430;
//   @ffi.Int8()
//   external int _unique___opaque_item_3431;
//   @ffi.Int8()
//   external int _unique___opaque_item_3432;
//   @ffi.Int8()
//   external int _unique___opaque_item_3433;
//   @ffi.Int8()
//   external int _unique___opaque_item_3434;
//   @ffi.Int8()
//   external int _unique___opaque_item_3435;
//   @ffi.Int8()
//   external int _unique___opaque_item_3436;
//   @ffi.Int8()
//   external int _unique___opaque_item_3437;
//   @ffi.Int8()
//   external int _unique___opaque_item_3438;
//   @ffi.Int8()
//   external int _unique___opaque_item_3439;
//   @ffi.Int8()
//   external int _unique___opaque_item_3440;
//   @ffi.Int8()
//   external int _unique___opaque_item_3441;
//   @ffi.Int8()
//   external int _unique___opaque_item_3442;
//   @ffi.Int8()
//   external int _unique___opaque_item_3443;
//   @ffi.Int8()
//   external int _unique___opaque_item_3444;
//   @ffi.Int8()
//   external int _unique___opaque_item_3445;
//   @ffi.Int8()
//   external int _unique___opaque_item_3446;
//   @ffi.Int8()
//   external int _unique___opaque_item_3447;
//   @ffi.Int8()
//   external int _unique___opaque_item_3448;
//   @ffi.Int8()
//   external int _unique___opaque_item_3449;
//   @ffi.Int8()
//   external int _unique___opaque_item_3450;
//   @ffi.Int8()
//   external int _unique___opaque_item_3451;
//   @ffi.Int8()
//   external int _unique___opaque_item_3452;
//   @ffi.Int8()
//   external int _unique___opaque_item_3453;
//   @ffi.Int8()
//   external int _unique___opaque_item_3454;
//   @ffi.Int8()
//   external int _unique___opaque_item_3455;
//   @ffi.Int8()
//   external int _unique___opaque_item_3456;
//   @ffi.Int8()
//   external int _unique___opaque_item_3457;
//   @ffi.Int8()
//   external int _unique___opaque_item_3458;
//   @ffi.Int8()
//   external int _unique___opaque_item_3459;
//   @ffi.Int8()
//   external int _unique___opaque_item_3460;
//   @ffi.Int8()
//   external int _unique___opaque_item_3461;
//   @ffi.Int8()
//   external int _unique___opaque_item_3462;
//   @ffi.Int8()
//   external int _unique___opaque_item_3463;
//   @ffi.Int8()
//   external int _unique___opaque_item_3464;
//   @ffi.Int8()
//   external int _unique___opaque_item_3465;
//   @ffi.Int8()
//   external int _unique___opaque_item_3466;
//   @ffi.Int8()
//   external int _unique___opaque_item_3467;
//   @ffi.Int8()
//   external int _unique___opaque_item_3468;
//   @ffi.Int8()
//   external int _unique___opaque_item_3469;
//   @ffi.Int8()
//   external int _unique___opaque_item_3470;
//   @ffi.Int8()
//   external int _unique___opaque_item_3471;
//   @ffi.Int8()
//   external int _unique___opaque_item_3472;
//   @ffi.Int8()
//   external int _unique___opaque_item_3473;
//   @ffi.Int8()
//   external int _unique___opaque_item_3474;
//   @ffi.Int8()
//   external int _unique___opaque_item_3475;
//   @ffi.Int8()
//   external int _unique___opaque_item_3476;
//   @ffi.Int8()
//   external int _unique___opaque_item_3477;
//   @ffi.Int8()
//   external int _unique___opaque_item_3478;
//   @ffi.Int8()
//   external int _unique___opaque_item_3479;
//   @ffi.Int8()
//   external int _unique___opaque_item_3480;
//   @ffi.Int8()
//   external int _unique___opaque_item_3481;
//   @ffi.Int8()
//   external int _unique___opaque_item_3482;
//   @ffi.Int8()
//   external int _unique___opaque_item_3483;
//   @ffi.Int8()
//   external int _unique___opaque_item_3484;
//   @ffi.Int8()
//   external int _unique___opaque_item_3485;
//   @ffi.Int8()
//   external int _unique___opaque_item_3486;
//   @ffi.Int8()
//   external int _unique___opaque_item_3487;
//   @ffi.Int8()
//   external int _unique___opaque_item_3488;
//   @ffi.Int8()
//   external int _unique___opaque_item_3489;
//   @ffi.Int8()
//   external int _unique___opaque_item_3490;
//   @ffi.Int8()
//   external int _unique___opaque_item_3491;
//   @ffi.Int8()
//   external int _unique___opaque_item_3492;
//   @ffi.Int8()
//   external int _unique___opaque_item_3493;
//   @ffi.Int8()
//   external int _unique___opaque_item_3494;
//   @ffi.Int8()
//   external int _unique___opaque_item_3495;
//   @ffi.Int8()
//   external int _unique___opaque_item_3496;
//   @ffi.Int8()
//   external int _unique___opaque_item_3497;
//   @ffi.Int8()
//   external int _unique___opaque_item_3498;
//   @ffi.Int8()
//   external int _unique___opaque_item_3499;
//   @ffi.Int8()
//   external int _unique___opaque_item_3500;
//   @ffi.Int8()
//   external int _unique___opaque_item_3501;
//   @ffi.Int8()
//   external int _unique___opaque_item_3502;
//   @ffi.Int8()
//   external int _unique___opaque_item_3503;
//   @ffi.Int8()
//   external int _unique___opaque_item_3504;
//   @ffi.Int8()
//   external int _unique___opaque_item_3505;
//   @ffi.Int8()
//   external int _unique___opaque_item_3506;
//   @ffi.Int8()
//   external int _unique___opaque_item_3507;
//   @ffi.Int8()
//   external int _unique___opaque_item_3508;
//   @ffi.Int8()
//   external int _unique___opaque_item_3509;
//   @ffi.Int8()
//   external int _unique___opaque_item_3510;
//   @ffi.Int8()
//   external int _unique___opaque_item_3511;
//   @ffi.Int8()
//   external int _unique___opaque_item_3512;
//   @ffi.Int8()
//   external int _unique___opaque_item_3513;
//   @ffi.Int8()
//   external int _unique___opaque_item_3514;
//   @ffi.Int8()
//   external int _unique___opaque_item_3515;
//   @ffi.Int8()
//   external int _unique___opaque_item_3516;
//   @ffi.Int8()
//   external int _unique___opaque_item_3517;
//   @ffi.Int8()
//   external int _unique___opaque_item_3518;
//   @ffi.Int8()
//   external int _unique___opaque_item_3519;
//   @ffi.Int8()
//   external int _unique___opaque_item_3520;
//   @ffi.Int8()
//   external int _unique___opaque_item_3521;
//   @ffi.Int8()
//   external int _unique___opaque_item_3522;
//   @ffi.Int8()
//   external int _unique___opaque_item_3523;
//   @ffi.Int8()
//   external int _unique___opaque_item_3524;
//   @ffi.Int8()
//   external int _unique___opaque_item_3525;
//   @ffi.Int8()
//   external int _unique___opaque_item_3526;
//   @ffi.Int8()
//   external int _unique___opaque_item_3527;
//   @ffi.Int8()
//   external int _unique___opaque_item_3528;
//   @ffi.Int8()
//   external int _unique___opaque_item_3529;
//   @ffi.Int8()
//   external int _unique___opaque_item_3530;
//   @ffi.Int8()
//   external int _unique___opaque_item_3531;
//   @ffi.Int8()
//   external int _unique___opaque_item_3532;
//   @ffi.Int8()
//   external int _unique___opaque_item_3533;
//   @ffi.Int8()
//   external int _unique___opaque_item_3534;
//   @ffi.Int8()
//   external int _unique___opaque_item_3535;
//   @ffi.Int8()
//   external int _unique___opaque_item_3536;
//   @ffi.Int8()
//   external int _unique___opaque_item_3537;
//   @ffi.Int8()
//   external int _unique___opaque_item_3538;
//   @ffi.Int8()
//   external int _unique___opaque_item_3539;
//   @ffi.Int8()
//   external int _unique___opaque_item_3540;
//   @ffi.Int8()
//   external int _unique___opaque_item_3541;
//   @ffi.Int8()
//   external int _unique___opaque_item_3542;
//   @ffi.Int8()
//   external int _unique___opaque_item_3543;
//   @ffi.Int8()
//   external int _unique___opaque_item_3544;
//   @ffi.Int8()
//   external int _unique___opaque_item_3545;
//   @ffi.Int8()
//   external int _unique___opaque_item_3546;
//   @ffi.Int8()
//   external int _unique___opaque_item_3547;
//   @ffi.Int8()
//   external int _unique___opaque_item_3548;
//   @ffi.Int8()
//   external int _unique___opaque_item_3549;
//   @ffi.Int8()
//   external int _unique___opaque_item_3550;
//   @ffi.Int8()
//   external int _unique___opaque_item_3551;
//   @ffi.Int8()
//   external int _unique___opaque_item_3552;
//   @ffi.Int8()
//   external int _unique___opaque_item_3553;
//   @ffi.Int8()
//   external int _unique___opaque_item_3554;
//   @ffi.Int8()
//   external int _unique___opaque_item_3555;
//   @ffi.Int8()
//   external int _unique___opaque_item_3556;
//   @ffi.Int8()
//   external int _unique___opaque_item_3557;
//   @ffi.Int8()
//   external int _unique___opaque_item_3558;
//   @ffi.Int8()
//   external int _unique___opaque_item_3559;
//   @ffi.Int8()
//   external int _unique___opaque_item_3560;
//   @ffi.Int8()
//   external int _unique___opaque_item_3561;
//   @ffi.Int8()
//   external int _unique___opaque_item_3562;
//   @ffi.Int8()
//   external int _unique___opaque_item_3563;
//   @ffi.Int8()
//   external int _unique___opaque_item_3564;
//   @ffi.Int8()
//   external int _unique___opaque_item_3565;
//   @ffi.Int8()
//   external int _unique___opaque_item_3566;
//   @ffi.Int8()
//   external int _unique___opaque_item_3567;
//   @ffi.Int8()
//   external int _unique___opaque_item_3568;
//   @ffi.Int8()
//   external int _unique___opaque_item_3569;
//   @ffi.Int8()
//   external int _unique___opaque_item_3570;
//   @ffi.Int8()
//   external int _unique___opaque_item_3571;
//   @ffi.Int8()
//   external int _unique___opaque_item_3572;
//   @ffi.Int8()
//   external int _unique___opaque_item_3573;
//   @ffi.Int8()
//   external int _unique___opaque_item_3574;
//   @ffi.Int8()
//   external int _unique___opaque_item_3575;
//   @ffi.Int8()
//   external int _unique___opaque_item_3576;
//   @ffi.Int8()
//   external int _unique___opaque_item_3577;
//   @ffi.Int8()
//   external int _unique___opaque_item_3578;
//   @ffi.Int8()
//   external int _unique___opaque_item_3579;
//   @ffi.Int8()
//   external int _unique___opaque_item_3580;
//   @ffi.Int8()
//   external int _unique___opaque_item_3581;
//   @ffi.Int8()
//   external int _unique___opaque_item_3582;
//   @ffi.Int8()
//   external int _unique___opaque_item_3583;
//   @ffi.Int8()
//   external int _unique___opaque_item_3584;
//   @ffi.Int8()
//   external int _unique___opaque_item_3585;
//   @ffi.Int8()
//   external int _unique___opaque_item_3586;
//   @ffi.Int8()
//   external int _unique___opaque_item_3587;
//   @ffi.Int8()
//   external int _unique___opaque_item_3588;
//   @ffi.Int8()
//   external int _unique___opaque_item_3589;
//   @ffi.Int8()
//   external int _unique___opaque_item_3590;
//   @ffi.Int8()
//   external int _unique___opaque_item_3591;
//   @ffi.Int8()
//   external int _unique___opaque_item_3592;
//   @ffi.Int8()
//   external int _unique___opaque_item_3593;
//   @ffi.Int8()
//   external int _unique___opaque_item_3594;
//   @ffi.Int8()
//   external int _unique___opaque_item_3595;
//   @ffi.Int8()
//   external int _unique___opaque_item_3596;
//   @ffi.Int8()
//   external int _unique___opaque_item_3597;
//   @ffi.Int8()
//   external int _unique___opaque_item_3598;
//   @ffi.Int8()
//   external int _unique___opaque_item_3599;
//   @ffi.Int8()
//   external int _unique___opaque_item_3600;
//   @ffi.Int8()
//   external int _unique___opaque_item_3601;
//   @ffi.Int8()
//   external int _unique___opaque_item_3602;
//   @ffi.Int8()
//   external int _unique___opaque_item_3603;
//   @ffi.Int8()
//   external int _unique___opaque_item_3604;
//   @ffi.Int8()
//   external int _unique___opaque_item_3605;
//   @ffi.Int8()
//   external int _unique___opaque_item_3606;
//   @ffi.Int8()
//   external int _unique___opaque_item_3607;
//   @ffi.Int8()
//   external int _unique___opaque_item_3608;
//   @ffi.Int8()
//   external int _unique___opaque_item_3609;
//   @ffi.Int8()
//   external int _unique___opaque_item_3610;
//   @ffi.Int8()
//   external int _unique___opaque_item_3611;
//   @ffi.Int8()
//   external int _unique___opaque_item_3612;
//   @ffi.Int8()
//   external int _unique___opaque_item_3613;
//   @ffi.Int8()
//   external int _unique___opaque_item_3614;
//   @ffi.Int8()
//   external int _unique___opaque_item_3615;
//   @ffi.Int8()
//   external int _unique___opaque_item_3616;
//   @ffi.Int8()
//   external int _unique___opaque_item_3617;
//   @ffi.Int8()
//   external int _unique___opaque_item_3618;
//   @ffi.Int8()
//   external int _unique___opaque_item_3619;
//   @ffi.Int8()
//   external int _unique___opaque_item_3620;
//   @ffi.Int8()
//   external int _unique___opaque_item_3621;
//   @ffi.Int8()
//   external int _unique___opaque_item_3622;
//   @ffi.Int8()
//   external int _unique___opaque_item_3623;
//   @ffi.Int8()
//   external int _unique___opaque_item_3624;
//   @ffi.Int8()
//   external int _unique___opaque_item_3625;
//   @ffi.Int8()
//   external int _unique___opaque_item_3626;
//   @ffi.Int8()
//   external int _unique___opaque_item_3627;
//   @ffi.Int8()
//   external int _unique___opaque_item_3628;
//   @ffi.Int8()
//   external int _unique___opaque_item_3629;
//   @ffi.Int8()
//   external int _unique___opaque_item_3630;
//   @ffi.Int8()
//   external int _unique___opaque_item_3631;
//   @ffi.Int8()
//   external int _unique___opaque_item_3632;
//   @ffi.Int8()
//   external int _unique___opaque_item_3633;
//   @ffi.Int8()
//   external int _unique___opaque_item_3634;
//   @ffi.Int8()
//   external int _unique___opaque_item_3635;
//   @ffi.Int8()
//   external int _unique___opaque_item_3636;
//   @ffi.Int8()
//   external int _unique___opaque_item_3637;
//   @ffi.Int8()
//   external int _unique___opaque_item_3638;
//   @ffi.Int8()
//   external int _unique___opaque_item_3639;
//   @ffi.Int8()
//   external int _unique___opaque_item_3640;
//   @ffi.Int8()
//   external int _unique___opaque_item_3641;
//   @ffi.Int8()
//   external int _unique___opaque_item_3642;
//   @ffi.Int8()
//   external int _unique___opaque_item_3643;
//   @ffi.Int8()
//   external int _unique___opaque_item_3644;
//   @ffi.Int8()
//   external int _unique___opaque_item_3645;
//   @ffi.Int8()
//   external int _unique___opaque_item_3646;
//   @ffi.Int8()
//   external int _unique___opaque_item_3647;
//   @ffi.Int8()
//   external int _unique___opaque_item_3648;
//   @ffi.Int8()
//   external int _unique___opaque_item_3649;
//   @ffi.Int8()
//   external int _unique___opaque_item_3650;
//   @ffi.Int8()
//   external int _unique___opaque_item_3651;
//   @ffi.Int8()
//   external int _unique___opaque_item_3652;
//   @ffi.Int8()
//   external int _unique___opaque_item_3653;
//   @ffi.Int8()
//   external int _unique___opaque_item_3654;
//   @ffi.Int8()
//   external int _unique___opaque_item_3655;
//   @ffi.Int8()
//   external int _unique___opaque_item_3656;
//   @ffi.Int8()
//   external int _unique___opaque_item_3657;
//   @ffi.Int8()
//   external int _unique___opaque_item_3658;
//   @ffi.Int8()
//   external int _unique___opaque_item_3659;
//   @ffi.Int8()
//   external int _unique___opaque_item_3660;
//   @ffi.Int8()
//   external int _unique___opaque_item_3661;
//   @ffi.Int8()
//   external int _unique___opaque_item_3662;
//   @ffi.Int8()
//   external int _unique___opaque_item_3663;
//   @ffi.Int8()
//   external int _unique___opaque_item_3664;
//   @ffi.Int8()
//   external int _unique___opaque_item_3665;
//   @ffi.Int8()
//   external int _unique___opaque_item_3666;
//   @ffi.Int8()
//   external int _unique___opaque_item_3667;
//   @ffi.Int8()
//   external int _unique___opaque_item_3668;
//   @ffi.Int8()
//   external int _unique___opaque_item_3669;
//   @ffi.Int8()
//   external int _unique___opaque_item_3670;
//   @ffi.Int8()
//   external int _unique___opaque_item_3671;
//   @ffi.Int8()
//   external int _unique___opaque_item_3672;
//   @ffi.Int8()
//   external int _unique___opaque_item_3673;
//   @ffi.Int8()
//   external int _unique___opaque_item_3674;
//   @ffi.Int8()
//   external int _unique___opaque_item_3675;
//   @ffi.Int8()
//   external int _unique___opaque_item_3676;
//   @ffi.Int8()
//   external int _unique___opaque_item_3677;
//   @ffi.Int8()
//   external int _unique___opaque_item_3678;
//   @ffi.Int8()
//   external int _unique___opaque_item_3679;
//   @ffi.Int8()
//   external int _unique___opaque_item_3680;
//   @ffi.Int8()
//   external int _unique___opaque_item_3681;
//   @ffi.Int8()
//   external int _unique___opaque_item_3682;
//   @ffi.Int8()
//   external int _unique___opaque_item_3683;
//   @ffi.Int8()
//   external int _unique___opaque_item_3684;
//   @ffi.Int8()
//   external int _unique___opaque_item_3685;
//   @ffi.Int8()
//   external int _unique___opaque_item_3686;
//   @ffi.Int8()
//   external int _unique___opaque_item_3687;
//   @ffi.Int8()
//   external int _unique___opaque_item_3688;
//   @ffi.Int8()
//   external int _unique___opaque_item_3689;
//   @ffi.Int8()
//   external int _unique___opaque_item_3690;
//   @ffi.Int8()
//   external int _unique___opaque_item_3691;
//   @ffi.Int8()
//   external int _unique___opaque_item_3692;
//   @ffi.Int8()
//   external int _unique___opaque_item_3693;
//   @ffi.Int8()
//   external int _unique___opaque_item_3694;
//   @ffi.Int8()
//   external int _unique___opaque_item_3695;
//   @ffi.Int8()
//   external int _unique___opaque_item_3696;
//   @ffi.Int8()
//   external int _unique___opaque_item_3697;
//   @ffi.Int8()
//   external int _unique___opaque_item_3698;
//   @ffi.Int8()
//   external int _unique___opaque_item_3699;
//   @ffi.Int8()
//   external int _unique___opaque_item_3700;
//   @ffi.Int8()
//   external int _unique___opaque_item_3701;
//   @ffi.Int8()
//   external int _unique___opaque_item_3702;
//   @ffi.Int8()
//   external int _unique___opaque_item_3703;
//   @ffi.Int8()
//   external int _unique___opaque_item_3704;
//   @ffi.Int8()
//   external int _unique___opaque_item_3705;
//   @ffi.Int8()
//   external int _unique___opaque_item_3706;
//   @ffi.Int8()
//   external int _unique___opaque_item_3707;
//   @ffi.Int8()
//   external int _unique___opaque_item_3708;
//   @ffi.Int8()
//   external int _unique___opaque_item_3709;
//   @ffi.Int8()
//   external int _unique___opaque_item_3710;
//   @ffi.Int8()
//   external int _unique___opaque_item_3711;
//   @ffi.Int8()
//   external int _unique___opaque_item_3712;
//   @ffi.Int8()
//   external int _unique___opaque_item_3713;
//   @ffi.Int8()
//   external int _unique___opaque_item_3714;
//   @ffi.Int8()
//   external int _unique___opaque_item_3715;
//   @ffi.Int8()
//   external int _unique___opaque_item_3716;
//   @ffi.Int8()
//   external int _unique___opaque_item_3717;
//   @ffi.Int8()
//   external int _unique___opaque_item_3718;
//   @ffi.Int8()
//   external int _unique___opaque_item_3719;
//   @ffi.Int8()
//   external int _unique___opaque_item_3720;
//   @ffi.Int8()
//   external int _unique___opaque_item_3721;
//   @ffi.Int8()
//   external int _unique___opaque_item_3722;
//   @ffi.Int8()
//   external int _unique___opaque_item_3723;
//   @ffi.Int8()
//   external int _unique___opaque_item_3724;
//   @ffi.Int8()
//   external int _unique___opaque_item_3725;
//   @ffi.Int8()
//   external int _unique___opaque_item_3726;
//   @ffi.Int8()
//   external int _unique___opaque_item_3727;
//   @ffi.Int8()
//   external int _unique___opaque_item_3728;
//   @ffi.Int8()
//   external int _unique___opaque_item_3729;
//   @ffi.Int8()
//   external int _unique___opaque_item_3730;
//   @ffi.Int8()
//   external int _unique___opaque_item_3731;
//   @ffi.Int8()
//   external int _unique___opaque_item_3732;
//   @ffi.Int8()
//   external int _unique___opaque_item_3733;
//   @ffi.Int8()
//   external int _unique___opaque_item_3734;
//   @ffi.Int8()
//   external int _unique___opaque_item_3735;
//   @ffi.Int8()
//   external int _unique___opaque_item_3736;
//   @ffi.Int8()
//   external int _unique___opaque_item_3737;
//   @ffi.Int8()
//   external int _unique___opaque_item_3738;
//   @ffi.Int8()
//   external int _unique___opaque_item_3739;
//   @ffi.Int8()
//   external int _unique___opaque_item_3740;
//   @ffi.Int8()
//   external int _unique___opaque_item_3741;
//   @ffi.Int8()
//   external int _unique___opaque_item_3742;
//   @ffi.Int8()
//   external int _unique___opaque_item_3743;
//   @ffi.Int8()
//   external int _unique___opaque_item_3744;
//   @ffi.Int8()
//   external int _unique___opaque_item_3745;
//   @ffi.Int8()
//   external int _unique___opaque_item_3746;
//   @ffi.Int8()
//   external int _unique___opaque_item_3747;
//   @ffi.Int8()
//   external int _unique___opaque_item_3748;
//   @ffi.Int8()
//   external int _unique___opaque_item_3749;
//   @ffi.Int8()
//   external int _unique___opaque_item_3750;
//   @ffi.Int8()
//   external int _unique___opaque_item_3751;
//   @ffi.Int8()
//   external int _unique___opaque_item_3752;
//   @ffi.Int8()
//   external int _unique___opaque_item_3753;
//   @ffi.Int8()
//   external int _unique___opaque_item_3754;
//   @ffi.Int8()
//   external int _unique___opaque_item_3755;
//   @ffi.Int8()
//   external int _unique___opaque_item_3756;
//   @ffi.Int8()
//   external int _unique___opaque_item_3757;
//   @ffi.Int8()
//   external int _unique___opaque_item_3758;
//   @ffi.Int8()
//   external int _unique___opaque_item_3759;
//   @ffi.Int8()
//   external int _unique___opaque_item_3760;
//   @ffi.Int8()
//   external int _unique___opaque_item_3761;
//   @ffi.Int8()
//   external int _unique___opaque_item_3762;
//   @ffi.Int8()
//   external int _unique___opaque_item_3763;
//   @ffi.Int8()
//   external int _unique___opaque_item_3764;
//   @ffi.Int8()
//   external int _unique___opaque_item_3765;
//   @ffi.Int8()
//   external int _unique___opaque_item_3766;
//   @ffi.Int8()
//   external int _unique___opaque_item_3767;
//   @ffi.Int8()
//   external int _unique___opaque_item_3768;
//   @ffi.Int8()
//   external int _unique___opaque_item_3769;
//   @ffi.Int8()
//   external int _unique___opaque_item_3770;
//   @ffi.Int8()
//   external int _unique___opaque_item_3771;
//   @ffi.Int8()
//   external int _unique___opaque_item_3772;
//   @ffi.Int8()
//   external int _unique___opaque_item_3773;
//   @ffi.Int8()
//   external int _unique___opaque_item_3774;
//   @ffi.Int8()
//   external int _unique___opaque_item_3775;
//   @ffi.Int8()
//   external int _unique___opaque_item_3776;
//   @ffi.Int8()
//   external int _unique___opaque_item_3777;
//   @ffi.Int8()
//   external int _unique___opaque_item_3778;
//   @ffi.Int8()
//   external int _unique___opaque_item_3779;
//   @ffi.Int8()
//   external int _unique___opaque_item_3780;
//   @ffi.Int8()
//   external int _unique___opaque_item_3781;
//   @ffi.Int8()
//   external int _unique___opaque_item_3782;
//   @ffi.Int8()
//   external int _unique___opaque_item_3783;
//   @ffi.Int8()
//   external int _unique___opaque_item_3784;
//   @ffi.Int8()
//   external int _unique___opaque_item_3785;
//   @ffi.Int8()
//   external int _unique___opaque_item_3786;
//   @ffi.Int8()
//   external int _unique___opaque_item_3787;
//   @ffi.Int8()
//   external int _unique___opaque_item_3788;
//   @ffi.Int8()
//   external int _unique___opaque_item_3789;
//   @ffi.Int8()
//   external int _unique___opaque_item_3790;
//   @ffi.Int8()
//   external int _unique___opaque_item_3791;
//   @ffi.Int8()
//   external int _unique___opaque_item_3792;
//   @ffi.Int8()
//   external int _unique___opaque_item_3793;
//   @ffi.Int8()
//   external int _unique___opaque_item_3794;
//   @ffi.Int8()
//   external int _unique___opaque_item_3795;
//   @ffi.Int8()
//   external int _unique___opaque_item_3796;
//   @ffi.Int8()
//   external int _unique___opaque_item_3797;
//   @ffi.Int8()
//   external int _unique___opaque_item_3798;
//   @ffi.Int8()
//   external int _unique___opaque_item_3799;
//   @ffi.Int8()
//   external int _unique___opaque_item_3800;
//   @ffi.Int8()
//   external int _unique___opaque_item_3801;
//   @ffi.Int8()
//   external int _unique___opaque_item_3802;
//   @ffi.Int8()
//   external int _unique___opaque_item_3803;
//   @ffi.Int8()
//   external int _unique___opaque_item_3804;
//   @ffi.Int8()
//   external int _unique___opaque_item_3805;
//   @ffi.Int8()
//   external int _unique___opaque_item_3806;
//   @ffi.Int8()
//   external int _unique___opaque_item_3807;
//   @ffi.Int8()
//   external int _unique___opaque_item_3808;
//   @ffi.Int8()
//   external int _unique___opaque_item_3809;
//   @ffi.Int8()
//   external int _unique___opaque_item_3810;
//   @ffi.Int8()
//   external int _unique___opaque_item_3811;
//   @ffi.Int8()
//   external int _unique___opaque_item_3812;
//   @ffi.Int8()
//   external int _unique___opaque_item_3813;
//   @ffi.Int8()
//   external int _unique___opaque_item_3814;
//   @ffi.Int8()
//   external int _unique___opaque_item_3815;
//   @ffi.Int8()
//   external int _unique___opaque_item_3816;
//   @ffi.Int8()
//   external int _unique___opaque_item_3817;
//   @ffi.Int8()
//   external int _unique___opaque_item_3818;
//   @ffi.Int8()
//   external int _unique___opaque_item_3819;
//   @ffi.Int8()
//   external int _unique___opaque_item_3820;
//   @ffi.Int8()
//   external int _unique___opaque_item_3821;
//   @ffi.Int8()
//   external int _unique___opaque_item_3822;
//   @ffi.Int8()
//   external int _unique___opaque_item_3823;
//   @ffi.Int8()
//   external int _unique___opaque_item_3824;
//   @ffi.Int8()
//   external int _unique___opaque_item_3825;
//   @ffi.Int8()
//   external int _unique___opaque_item_3826;
//   @ffi.Int8()
//   external int _unique___opaque_item_3827;
//   @ffi.Int8()
//   external int _unique___opaque_item_3828;
//   @ffi.Int8()
//   external int _unique___opaque_item_3829;
//   @ffi.Int8()
//   external int _unique___opaque_item_3830;
//   @ffi.Int8()
//   external int _unique___opaque_item_3831;
//   @ffi.Int8()
//   external int _unique___opaque_item_3832;
//   @ffi.Int8()
//   external int _unique___opaque_item_3833;
//   @ffi.Int8()
//   external int _unique___opaque_item_3834;
//   @ffi.Int8()
//   external int _unique___opaque_item_3835;
//   @ffi.Int8()
//   external int _unique___opaque_item_3836;
//   @ffi.Int8()
//   external int _unique___opaque_item_3837;
//   @ffi.Int8()
//   external int _unique___opaque_item_3838;
//   @ffi.Int8()
//   external int _unique___opaque_item_3839;
//   @ffi.Int8()
//   external int _unique___opaque_item_3840;
//   @ffi.Int8()
//   external int _unique___opaque_item_3841;
//   @ffi.Int8()
//   external int _unique___opaque_item_3842;
//   @ffi.Int8()
//   external int _unique___opaque_item_3843;
//   @ffi.Int8()
//   external int _unique___opaque_item_3844;
//   @ffi.Int8()
//   external int _unique___opaque_item_3845;
//   @ffi.Int8()
//   external int _unique___opaque_item_3846;
//   @ffi.Int8()
//   external int _unique___opaque_item_3847;
//   @ffi.Int8()
//   external int _unique___opaque_item_3848;
//   @ffi.Int8()
//   external int _unique___opaque_item_3849;
//   @ffi.Int8()
//   external int _unique___opaque_item_3850;
//   @ffi.Int8()
//   external int _unique___opaque_item_3851;
//   @ffi.Int8()
//   external int _unique___opaque_item_3852;
//   @ffi.Int8()
//   external int _unique___opaque_item_3853;
//   @ffi.Int8()
//   external int _unique___opaque_item_3854;
//   @ffi.Int8()
//   external int _unique___opaque_item_3855;
//   @ffi.Int8()
//   external int _unique___opaque_item_3856;
//   @ffi.Int8()
//   external int _unique___opaque_item_3857;
//   @ffi.Int8()
//   external int _unique___opaque_item_3858;
//   @ffi.Int8()
//   external int _unique___opaque_item_3859;
//   @ffi.Int8()
//   external int _unique___opaque_item_3860;
//   @ffi.Int8()
//   external int _unique___opaque_item_3861;
//   @ffi.Int8()
//   external int _unique___opaque_item_3862;
//   @ffi.Int8()
//   external int _unique___opaque_item_3863;
//   @ffi.Int8()
//   external int _unique___opaque_item_3864;
//   @ffi.Int8()
//   external int _unique___opaque_item_3865;
//   @ffi.Int8()
//   external int _unique___opaque_item_3866;
//   @ffi.Int8()
//   external int _unique___opaque_item_3867;
//   @ffi.Int8()
//   external int _unique___opaque_item_3868;
//   @ffi.Int8()
//   external int _unique___opaque_item_3869;
//   @ffi.Int8()
//   external int _unique___opaque_item_3870;
//   @ffi.Int8()
//   external int _unique___opaque_item_3871;
//   @ffi.Int8()
//   external int _unique___opaque_item_3872;
//   @ffi.Int8()
//   external int _unique___opaque_item_3873;
//   @ffi.Int8()
//   external int _unique___opaque_item_3874;
//   @ffi.Int8()
//   external int _unique___opaque_item_3875;
//   @ffi.Int8()
//   external int _unique___opaque_item_3876;
//   @ffi.Int8()
//   external int _unique___opaque_item_3877;
//   @ffi.Int8()
//   external int _unique___opaque_item_3878;
//   @ffi.Int8()
//   external int _unique___opaque_item_3879;
//   @ffi.Int8()
//   external int _unique___opaque_item_3880;
//   @ffi.Int8()
//   external int _unique___opaque_item_3881;
//   @ffi.Int8()
//   external int _unique___opaque_item_3882;
//   @ffi.Int8()
//   external int _unique___opaque_item_3883;
//   @ffi.Int8()
//   external int _unique___opaque_item_3884;
//   @ffi.Int8()
//   external int _unique___opaque_item_3885;
//   @ffi.Int8()
//   external int _unique___opaque_item_3886;
//   @ffi.Int8()
//   external int _unique___opaque_item_3887;
//   @ffi.Int8()
//   external int _unique___opaque_item_3888;
//   @ffi.Int8()
//   external int _unique___opaque_item_3889;
//   @ffi.Int8()
//   external int _unique___opaque_item_3890;
//   @ffi.Int8()
//   external int _unique___opaque_item_3891;
//   @ffi.Int8()
//   external int _unique___opaque_item_3892;
//   @ffi.Int8()
//   external int _unique___opaque_item_3893;
//   @ffi.Int8()
//   external int _unique___opaque_item_3894;
//   @ffi.Int8()
//   external int _unique___opaque_item_3895;
//   @ffi.Int8()
//   external int _unique___opaque_item_3896;
//   @ffi.Int8()
//   external int _unique___opaque_item_3897;
//   @ffi.Int8()
//   external int _unique___opaque_item_3898;
//   @ffi.Int8()
//   external int _unique___opaque_item_3899;
//   @ffi.Int8()
//   external int _unique___opaque_item_3900;
//   @ffi.Int8()
//   external int _unique___opaque_item_3901;
//   @ffi.Int8()
//   external int _unique___opaque_item_3902;
//   @ffi.Int8()
//   external int _unique___opaque_item_3903;
//   @ffi.Int8()
//   external int _unique___opaque_item_3904;
//   @ffi.Int8()
//   external int _unique___opaque_item_3905;
//   @ffi.Int8()
//   external int _unique___opaque_item_3906;
//   @ffi.Int8()
//   external int _unique___opaque_item_3907;
//   @ffi.Int8()
//   external int _unique___opaque_item_3908;
//   @ffi.Int8()
//   external int _unique___opaque_item_3909;
//   @ffi.Int8()
//   external int _unique___opaque_item_3910;
//   @ffi.Int8()
//   external int _unique___opaque_item_3911;
//   @ffi.Int8()
//   external int _unique___opaque_item_3912;
//   @ffi.Int8()
//   external int _unique___opaque_item_3913;
//   @ffi.Int8()
//   external int _unique___opaque_item_3914;
//   @ffi.Int8()
//   external int _unique___opaque_item_3915;
//   @ffi.Int8()
//   external int _unique___opaque_item_3916;
//   @ffi.Int8()
//   external int _unique___opaque_item_3917;
//   @ffi.Int8()
//   external int _unique___opaque_item_3918;
//   @ffi.Int8()
//   external int _unique___opaque_item_3919;
//   @ffi.Int8()
//   external int _unique___opaque_item_3920;
//   @ffi.Int8()
//   external int _unique___opaque_item_3921;
//   @ffi.Int8()
//   external int _unique___opaque_item_3922;
//   @ffi.Int8()
//   external int _unique___opaque_item_3923;
//   @ffi.Int8()
//   external int _unique___opaque_item_3924;
//   @ffi.Int8()
//   external int _unique___opaque_item_3925;
//   @ffi.Int8()
//   external int _unique___opaque_item_3926;
//   @ffi.Int8()
//   external int _unique___opaque_item_3927;
//   @ffi.Int8()
//   external int _unique___opaque_item_3928;
//   @ffi.Int8()
//   external int _unique___opaque_item_3929;
//   @ffi.Int8()
//   external int _unique___opaque_item_3930;
//   @ffi.Int8()
//   external int _unique___opaque_item_3931;
//   @ffi.Int8()
//   external int _unique___opaque_item_3932;
//   @ffi.Int8()
//   external int _unique___opaque_item_3933;
//   @ffi.Int8()
//   external int _unique___opaque_item_3934;
//   @ffi.Int8()
//   external int _unique___opaque_item_3935;
//   @ffi.Int8()
//   external int _unique___opaque_item_3936;
//   @ffi.Int8()
//   external int _unique___opaque_item_3937;
//   @ffi.Int8()
//   external int _unique___opaque_item_3938;
//   @ffi.Int8()
//   external int _unique___opaque_item_3939;
//   @ffi.Int8()
//   external int _unique___opaque_item_3940;
//   @ffi.Int8()
//   external int _unique___opaque_item_3941;
//   @ffi.Int8()
//   external int _unique___opaque_item_3942;
//   @ffi.Int8()
//   external int _unique___opaque_item_3943;
//   @ffi.Int8()
//   external int _unique___opaque_item_3944;
//   @ffi.Int8()
//   external int _unique___opaque_item_3945;
//   @ffi.Int8()
//   external int _unique___opaque_item_3946;
//   @ffi.Int8()
//   external int _unique___opaque_item_3947;
//   @ffi.Int8()
//   external int _unique___opaque_item_3948;
//   @ffi.Int8()
//   external int _unique___opaque_item_3949;
//   @ffi.Int8()
//   external int _unique___opaque_item_3950;
//   @ffi.Int8()
//   external int _unique___opaque_item_3951;
//   @ffi.Int8()
//   external int _unique___opaque_item_3952;
//   @ffi.Int8()
//   external int _unique___opaque_item_3953;
//   @ffi.Int8()
//   external int _unique___opaque_item_3954;
//   @ffi.Int8()
//   external int _unique___opaque_item_3955;
//   @ffi.Int8()
//   external int _unique___opaque_item_3956;
//   @ffi.Int8()
//   external int _unique___opaque_item_3957;
//   @ffi.Int8()
//   external int _unique___opaque_item_3958;
//   @ffi.Int8()
//   external int _unique___opaque_item_3959;
//   @ffi.Int8()
//   external int _unique___opaque_item_3960;
//   @ffi.Int8()
//   external int _unique___opaque_item_3961;
//   @ffi.Int8()
//   external int _unique___opaque_item_3962;
//   @ffi.Int8()
//   external int _unique___opaque_item_3963;
//   @ffi.Int8()
//   external int _unique___opaque_item_3964;
//   @ffi.Int8()
//   external int _unique___opaque_item_3965;
//   @ffi.Int8()
//   external int _unique___opaque_item_3966;
//   @ffi.Int8()
//   external int _unique___opaque_item_3967;
//   @ffi.Int8()
//   external int _unique___opaque_item_3968;
//   @ffi.Int8()
//   external int _unique___opaque_item_3969;
//   @ffi.Int8()
//   external int _unique___opaque_item_3970;
//   @ffi.Int8()
//   external int _unique___opaque_item_3971;
//   @ffi.Int8()
//   external int _unique___opaque_item_3972;
//   @ffi.Int8()
//   external int _unique___opaque_item_3973;
//   @ffi.Int8()
//   external int _unique___opaque_item_3974;
//   @ffi.Int8()
//   external int _unique___opaque_item_3975;
//   @ffi.Int8()
//   external int _unique___opaque_item_3976;
//   @ffi.Int8()
//   external int _unique___opaque_item_3977;
//   @ffi.Int8()
//   external int _unique___opaque_item_3978;
//   @ffi.Int8()
//   external int _unique___opaque_item_3979;
//   @ffi.Int8()
//   external int _unique___opaque_item_3980;
//   @ffi.Int8()
//   external int _unique___opaque_item_3981;
//   @ffi.Int8()
//   external int _unique___opaque_item_3982;
//   @ffi.Int8()
//   external int _unique___opaque_item_3983;
//   @ffi.Int8()
//   external int _unique___opaque_item_3984;
//   @ffi.Int8()
//   external int _unique___opaque_item_3985;
//   @ffi.Int8()
//   external int _unique___opaque_item_3986;
//   @ffi.Int8()
//   external int _unique___opaque_item_3987;
//   @ffi.Int8()
//   external int _unique___opaque_item_3988;
//   @ffi.Int8()
//   external int _unique___opaque_item_3989;
//   @ffi.Int8()
//   external int _unique___opaque_item_3990;
//   @ffi.Int8()
//   external int _unique___opaque_item_3991;
//   @ffi.Int8()
//   external int _unique___opaque_item_3992;
//   @ffi.Int8()
//   external int _unique___opaque_item_3993;
//   @ffi.Int8()
//   external int _unique___opaque_item_3994;
//   @ffi.Int8()
//   external int _unique___opaque_item_3995;
//   @ffi.Int8()
//   external int _unique___opaque_item_3996;
//   @ffi.Int8()
//   external int _unique___opaque_item_3997;
//   @ffi.Int8()
//   external int _unique___opaque_item_3998;
//   @ffi.Int8()
//   external int _unique___opaque_item_3999;
//   @ffi.Int8()
//   external int _unique___opaque_item_4000;
//   @ffi.Int8()
//   external int _unique___opaque_item_4001;
//   @ffi.Int8()
//   external int _unique___opaque_item_4002;
//   @ffi.Int8()
//   external int _unique___opaque_item_4003;
//   @ffi.Int8()
//   external int _unique___opaque_item_4004;
//   @ffi.Int8()
//   external int _unique___opaque_item_4005;
//   @ffi.Int8()
//   external int _unique___opaque_item_4006;
//   @ffi.Int8()
//   external int _unique___opaque_item_4007;
//   @ffi.Int8()
//   external int _unique___opaque_item_4008;
//   @ffi.Int8()
//   external int _unique___opaque_item_4009;
//   @ffi.Int8()
//   external int _unique___opaque_item_4010;
//   @ffi.Int8()
//   external int _unique___opaque_item_4011;
//   @ffi.Int8()
//   external int _unique___opaque_item_4012;
//   @ffi.Int8()
//   external int _unique___opaque_item_4013;
//   @ffi.Int8()
//   external int _unique___opaque_item_4014;
//   @ffi.Int8()
//   external int _unique___opaque_item_4015;
//   @ffi.Int8()
//   external int _unique___opaque_item_4016;
//   @ffi.Int8()
//   external int _unique___opaque_item_4017;
//   @ffi.Int8()
//   external int _unique___opaque_item_4018;
//   @ffi.Int8()
//   external int _unique___opaque_item_4019;
//   @ffi.Int8()
//   external int _unique___opaque_item_4020;
//   @ffi.Int8()
//   external int _unique___opaque_item_4021;
//   @ffi.Int8()
//   external int _unique___opaque_item_4022;
//   @ffi.Int8()
//   external int _unique___opaque_item_4023;
//   @ffi.Int8()
//   external int _unique___opaque_item_4024;
//   @ffi.Int8()
//   external int _unique___opaque_item_4025;
//   @ffi.Int8()
//   external int _unique___opaque_item_4026;
//   @ffi.Int8()
//   external int _unique___opaque_item_4027;
//   @ffi.Int8()
//   external int _unique___opaque_item_4028;
//   @ffi.Int8()
//   external int _unique___opaque_item_4029;
//   @ffi.Int8()
//   external int _unique___opaque_item_4030;
//   @ffi.Int8()
//   external int _unique___opaque_item_4031;
//   @ffi.Int8()
//   external int _unique___opaque_item_4032;
//   @ffi.Int8()
//   external int _unique___opaque_item_4033;
//   @ffi.Int8()
//   external int _unique___opaque_item_4034;
//   @ffi.Int8()
//   external int _unique___opaque_item_4035;
//   @ffi.Int8()
//   external int _unique___opaque_item_4036;
//   @ffi.Int8()
//   external int _unique___opaque_item_4037;
//   @ffi.Int8()
//   external int _unique___opaque_item_4038;
//   @ffi.Int8()
//   external int _unique___opaque_item_4039;
//   @ffi.Int8()
//   external int _unique___opaque_item_4040;
//   @ffi.Int8()
//   external int _unique___opaque_item_4041;
//   @ffi.Int8()
//   external int _unique___opaque_item_4042;
//   @ffi.Int8()
//   external int _unique___opaque_item_4043;
//   @ffi.Int8()
//   external int _unique___opaque_item_4044;
//   @ffi.Int8()
//   external int _unique___opaque_item_4045;
//   @ffi.Int8()
//   external int _unique___opaque_item_4046;
//   @ffi.Int8()
//   external int _unique___opaque_item_4047;
//   @ffi.Int8()
//   external int _unique___opaque_item_4048;
//   @ffi.Int8()
//   external int _unique___opaque_item_4049;
//   @ffi.Int8()
//   external int _unique___opaque_item_4050;
//   @ffi.Int8()
//   external int _unique___opaque_item_4051;
//   @ffi.Int8()
//   external int _unique___opaque_item_4052;
//   @ffi.Int8()
//   external int _unique___opaque_item_4053;
//   @ffi.Int8()
//   external int _unique___opaque_item_4054;
//   @ffi.Int8()
//   external int _unique___opaque_item_4055;
//   @ffi.Int8()
//   external int _unique___opaque_item_4056;
//   @ffi.Int8()
//   external int _unique___opaque_item_4057;
//   @ffi.Int8()
//   external int _unique___opaque_item_4058;
//   @ffi.Int8()
//   external int _unique___opaque_item_4059;
//   @ffi.Int8()
//   external int _unique___opaque_item_4060;
//   @ffi.Int8()
//   external int _unique___opaque_item_4061;
//   @ffi.Int8()
//   external int _unique___opaque_item_4062;
//   @ffi.Int8()
//   external int _unique___opaque_item_4063;
//   @ffi.Int8()
//   external int _unique___opaque_item_4064;
//   @ffi.Int8()
//   external int _unique___opaque_item_4065;
//   @ffi.Int8()
//   external int _unique___opaque_item_4066;
//   @ffi.Int8()
//   external int _unique___opaque_item_4067;
//   @ffi.Int8()
//   external int _unique___opaque_item_4068;
//   @ffi.Int8()
//   external int _unique___opaque_item_4069;
//   @ffi.Int8()
//   external int _unique___opaque_item_4070;
//   @ffi.Int8()
//   external int _unique___opaque_item_4071;
//   @ffi.Int8()
//   external int _unique___opaque_item_4072;
//   @ffi.Int8()
//   external int _unique___opaque_item_4073;
//   @ffi.Int8()
//   external int _unique___opaque_item_4074;
//   @ffi.Int8()
//   external int _unique___opaque_item_4075;
//   @ffi.Int8()
//   external int _unique___opaque_item_4076;
//   @ffi.Int8()
//   external int _unique___opaque_item_4077;
//   @ffi.Int8()
//   external int _unique___opaque_item_4078;
//   @ffi.Int8()
//   external int _unique___opaque_item_4079;
//   @ffi.Int8()
//   external int _unique___opaque_item_4080;
//   @ffi.Int8()
//   external int _unique___opaque_item_4081;
//   @ffi.Int8()
//   external int _unique___opaque_item_4082;
//   @ffi.Int8()
//   external int _unique___opaque_item_4083;
//   @ffi.Int8()
//   external int _unique___opaque_item_4084;
//   @ffi.Int8()
//   external int _unique___opaque_item_4085;
//   @ffi.Int8()
//   external int _unique___opaque_item_4086;
//   @ffi.Int8()
//   external int _unique___opaque_item_4087;
//   @ffi.Int8()
//   external int _unique___opaque_item_4088;
//   @ffi.Int8()
//   external int _unique___opaque_item_4089;
//   @ffi.Int8()
//   external int _unique___opaque_item_4090;
//   @ffi.Int8()
//   external int _unique___opaque_item_4091;
//   @ffi.Int8()
//   external int _unique___opaque_item_4092;
//   @ffi.Int8()
//   external int _unique___opaque_item_4093;
//   @ffi.Int8()
//   external int _unique___opaque_item_4094;
//   @ffi.Int8()
//   external int _unique___opaque_item_4095;
//   @ffi.Int8()
//   external int _unique___opaque_item_4096;
//   @ffi.Int8()
//   external int _unique___opaque_item_4097;
//   @ffi.Int8()
//   external int _unique___opaque_item_4098;
//   @ffi.Int8()
//   external int _unique___opaque_item_4099;
//   @ffi.Int8()
//   external int _unique___opaque_item_4100;
//   @ffi.Int8()
//   external int _unique___opaque_item_4101;
//   @ffi.Int8()
//   external int _unique___opaque_item_4102;
//   @ffi.Int8()
//   external int _unique___opaque_item_4103;
//   @ffi.Int8()
//   external int _unique___opaque_item_4104;
//   @ffi.Int8()
//   external int _unique___opaque_item_4105;
//   @ffi.Int8()
//   external int _unique___opaque_item_4106;
//   @ffi.Int8()
//   external int _unique___opaque_item_4107;
//   @ffi.Int8()
//   external int _unique___opaque_item_4108;
//   @ffi.Int8()
//   external int _unique___opaque_item_4109;
//   @ffi.Int8()
//   external int _unique___opaque_item_4110;
//   @ffi.Int8()
//   external int _unique___opaque_item_4111;
//   @ffi.Int8()
//   external int _unique___opaque_item_4112;
//   @ffi.Int8()
//   external int _unique___opaque_item_4113;
//   @ffi.Int8()
//   external int _unique___opaque_item_4114;
//   @ffi.Int8()
//   external int _unique___opaque_item_4115;
//   @ffi.Int8()
//   external int _unique___opaque_item_4116;
//   @ffi.Int8()
//   external int _unique___opaque_item_4117;
//   @ffi.Int8()
//   external int _unique___opaque_item_4118;
//   @ffi.Int8()
//   external int _unique___opaque_item_4119;
//   @ffi.Int8()
//   external int _unique___opaque_item_4120;
//   @ffi.Int8()
//   external int _unique___opaque_item_4121;
//   @ffi.Int8()
//   external int _unique___opaque_item_4122;
//   @ffi.Int8()
//   external int _unique___opaque_item_4123;
//   @ffi.Int8()
//   external int _unique___opaque_item_4124;
//   @ffi.Int8()
//   external int _unique___opaque_item_4125;
//   @ffi.Int8()
//   external int _unique___opaque_item_4126;
//   @ffi.Int8()
//   external int _unique___opaque_item_4127;
//   @ffi.Int8()
//   external int _unique___opaque_item_4128;
//   @ffi.Int8()
//   external int _unique___opaque_item_4129;
//   @ffi.Int8()
//   external int _unique___opaque_item_4130;
//   @ffi.Int8()
//   external int _unique___opaque_item_4131;
//   @ffi.Int8()
//   external int _unique___opaque_item_4132;
//   @ffi.Int8()
//   external int _unique___opaque_item_4133;
//   @ffi.Int8()
//   external int _unique___opaque_item_4134;
//   @ffi.Int8()
//   external int _unique___opaque_item_4135;
//   @ffi.Int8()
//   external int _unique___opaque_item_4136;
//   @ffi.Int8()
//   external int _unique___opaque_item_4137;
//   @ffi.Int8()
//   external int _unique___opaque_item_4138;
//   @ffi.Int8()
//   external int _unique___opaque_item_4139;
//   @ffi.Int8()
//   external int _unique___opaque_item_4140;
//   @ffi.Int8()
//   external int _unique___opaque_item_4141;
//   @ffi.Int8()
//   external int _unique___opaque_item_4142;
//   @ffi.Int8()
//   external int _unique___opaque_item_4143;
//   @ffi.Int8()
//   external int _unique___opaque_item_4144;
//   @ffi.Int8()
//   external int _unique___opaque_item_4145;
//   @ffi.Int8()
//   external int _unique___opaque_item_4146;
//   @ffi.Int8()
//   external int _unique___opaque_item_4147;
//   @ffi.Int8()
//   external int _unique___opaque_item_4148;
//   @ffi.Int8()
//   external int _unique___opaque_item_4149;
//   @ffi.Int8()
//   external int _unique___opaque_item_4150;
//   @ffi.Int8()
//   external int _unique___opaque_item_4151;
//   @ffi.Int8()
//   external int _unique___opaque_item_4152;
//   @ffi.Int8()
//   external int _unique___opaque_item_4153;
//   @ffi.Int8()
//   external int _unique___opaque_item_4154;
//   @ffi.Int8()
//   external int _unique___opaque_item_4155;
//   @ffi.Int8()
//   external int _unique___opaque_item_4156;
//   @ffi.Int8()
//   external int _unique___opaque_item_4157;
//   @ffi.Int8()
//   external int _unique___opaque_item_4158;
//   @ffi.Int8()
//   external int _unique___opaque_item_4159;
//   @ffi.Int8()
//   external int _unique___opaque_item_4160;
//   @ffi.Int8()
//   external int _unique___opaque_item_4161;
//   @ffi.Int8()
//   external int _unique___opaque_item_4162;
//   @ffi.Int8()
//   external int _unique___opaque_item_4163;
//   @ffi.Int8()
//   external int _unique___opaque_item_4164;
//   @ffi.Int8()
//   external int _unique___opaque_item_4165;
//   @ffi.Int8()
//   external int _unique___opaque_item_4166;
//   @ffi.Int8()
//   external int _unique___opaque_item_4167;
//   @ffi.Int8()
//   external int _unique___opaque_item_4168;
//   @ffi.Int8()
//   external int _unique___opaque_item_4169;
//   @ffi.Int8()
//   external int _unique___opaque_item_4170;
//   @ffi.Int8()
//   external int _unique___opaque_item_4171;
//   @ffi.Int8()
//   external int _unique___opaque_item_4172;
//   @ffi.Int8()
//   external int _unique___opaque_item_4173;
//   @ffi.Int8()
//   external int _unique___opaque_item_4174;
//   @ffi.Int8()
//   external int _unique___opaque_item_4175;
//   @ffi.Int8()
//   external int _unique___opaque_item_4176;
//   @ffi.Int8()
//   external int _unique___opaque_item_4177;
//   @ffi.Int8()
//   external int _unique___opaque_item_4178;
//   @ffi.Int8()
//   external int _unique___opaque_item_4179;
//   @ffi.Int8()
//   external int _unique___opaque_item_4180;
//   @ffi.Int8()
//   external int _unique___opaque_item_4181;
//   @ffi.Int8()
//   external int _unique___opaque_item_4182;
//   @ffi.Int8()
//   external int _unique___opaque_item_4183;
//   @ffi.Int8()
//   external int _unique___opaque_item_4184;
//   @ffi.Int8()
//   external int _unique___opaque_item_4185;
//   @ffi.Int8()
//   external int _unique___opaque_item_4186;
//   @ffi.Int8()
//   external int _unique___opaque_item_4187;
//   @ffi.Int8()
//   external int _unique___opaque_item_4188;
//   @ffi.Int8()
//   external int _unique___opaque_item_4189;
//   @ffi.Int8()
//   external int _unique___opaque_item_4190;
//   @ffi.Int8()
//   external int _unique___opaque_item_4191;
//   @ffi.Int8()
//   external int _unique___opaque_item_4192;
//   @ffi.Int8()
//   external int _unique___opaque_item_4193;
//   @ffi.Int8()
//   external int _unique___opaque_item_4194;
//   @ffi.Int8()
//   external int _unique___opaque_item_4195;
//   @ffi.Int8()
//   external int _unique___opaque_item_4196;
//   @ffi.Int8()
//   external int _unique___opaque_item_4197;
//   @ffi.Int8()
//   external int _unique___opaque_item_4198;
//   @ffi.Int8()
//   external int _unique___opaque_item_4199;
//   @ffi.Int8()
//   external int _unique___opaque_item_4200;
//   @ffi.Int8()
//   external int _unique___opaque_item_4201;
//   @ffi.Int8()
//   external int _unique___opaque_item_4202;
//   @ffi.Int8()
//   external int _unique___opaque_item_4203;
//   @ffi.Int8()
//   external int _unique___opaque_item_4204;
//   @ffi.Int8()
//   external int _unique___opaque_item_4205;
//   @ffi.Int8()
//   external int _unique___opaque_item_4206;
//   @ffi.Int8()
//   external int _unique___opaque_item_4207;
//   @ffi.Int8()
//   external int _unique___opaque_item_4208;
//   @ffi.Int8()
//   external int _unique___opaque_item_4209;
//   @ffi.Int8()
//   external int _unique___opaque_item_4210;
//   @ffi.Int8()
//   external int _unique___opaque_item_4211;
//   @ffi.Int8()
//   external int _unique___opaque_item_4212;
//   @ffi.Int8()
//   external int _unique___opaque_item_4213;
//   @ffi.Int8()
//   external int _unique___opaque_item_4214;
//   @ffi.Int8()
//   external int _unique___opaque_item_4215;
//   @ffi.Int8()
//   external int _unique___opaque_item_4216;
//   @ffi.Int8()
//   external int _unique___opaque_item_4217;
//   @ffi.Int8()
//   external int _unique___opaque_item_4218;
//   @ffi.Int8()
//   external int _unique___opaque_item_4219;
//   @ffi.Int8()
//   external int _unique___opaque_item_4220;
//   @ffi.Int8()
//   external int _unique___opaque_item_4221;
//   @ffi.Int8()
//   external int _unique___opaque_item_4222;
//   @ffi.Int8()
//   external int _unique___opaque_item_4223;
//   @ffi.Int8()
//   external int _unique___opaque_item_4224;
//   @ffi.Int8()
//   external int _unique___opaque_item_4225;
//   @ffi.Int8()
//   external int _unique___opaque_item_4226;
//   @ffi.Int8()
//   external int _unique___opaque_item_4227;
//   @ffi.Int8()
//   external int _unique___opaque_item_4228;
//   @ffi.Int8()
//   external int _unique___opaque_item_4229;
//   @ffi.Int8()
//   external int _unique___opaque_item_4230;
//   @ffi.Int8()
//   external int _unique___opaque_item_4231;
//   @ffi.Int8()
//   external int _unique___opaque_item_4232;
//   @ffi.Int8()
//   external int _unique___opaque_item_4233;
//   @ffi.Int8()
//   external int _unique___opaque_item_4234;
//   @ffi.Int8()
//   external int _unique___opaque_item_4235;
//   @ffi.Int8()
//   external int _unique___opaque_item_4236;
//   @ffi.Int8()
//   external int _unique___opaque_item_4237;
//   @ffi.Int8()
//   external int _unique___opaque_item_4238;
//   @ffi.Int8()
//   external int _unique___opaque_item_4239;
//   @ffi.Int8()
//   external int _unique___opaque_item_4240;
//   @ffi.Int8()
//   external int _unique___opaque_item_4241;
//   @ffi.Int8()
//   external int _unique___opaque_item_4242;
//   @ffi.Int8()
//   external int _unique___opaque_item_4243;
//   @ffi.Int8()
//   external int _unique___opaque_item_4244;
//   @ffi.Int8()
//   external int _unique___opaque_item_4245;
//   @ffi.Int8()
//   external int _unique___opaque_item_4246;
//   @ffi.Int8()
//   external int _unique___opaque_item_4247;
//   @ffi.Int8()
//   external int _unique___opaque_item_4248;
//   @ffi.Int8()
//   external int _unique___opaque_item_4249;
//   @ffi.Int8()
//   external int _unique___opaque_item_4250;
//   @ffi.Int8()
//   external int _unique___opaque_item_4251;
//   @ffi.Int8()
//   external int _unique___opaque_item_4252;
//   @ffi.Int8()
//   external int _unique___opaque_item_4253;
//   @ffi.Int8()
//   external int _unique___opaque_item_4254;
//   @ffi.Int8()
//   external int _unique___opaque_item_4255;
//   @ffi.Int8()
//   external int _unique___opaque_item_4256;
//   @ffi.Int8()
//   external int _unique___opaque_item_4257;
//   @ffi.Int8()
//   external int _unique___opaque_item_4258;
//   @ffi.Int8()
//   external int _unique___opaque_item_4259;
//   @ffi.Int8()
//   external int _unique___opaque_item_4260;
//   @ffi.Int8()
//   external int _unique___opaque_item_4261;
//   @ffi.Int8()
//   external int _unique___opaque_item_4262;
//   @ffi.Int8()
//   external int _unique___opaque_item_4263;
//   @ffi.Int8()
//   external int _unique___opaque_item_4264;
//   @ffi.Int8()
//   external int _unique___opaque_item_4265;
//   @ffi.Int8()
//   external int _unique___opaque_item_4266;
//   @ffi.Int8()
//   external int _unique___opaque_item_4267;
//   @ffi.Int8()
//   external int _unique___opaque_item_4268;
//   @ffi.Int8()
//   external int _unique___opaque_item_4269;
//   @ffi.Int8()
//   external int _unique___opaque_item_4270;
//   @ffi.Int8()
//   external int _unique___opaque_item_4271;
//   @ffi.Int8()
//   external int _unique___opaque_item_4272;
//   @ffi.Int8()
//   external int _unique___opaque_item_4273;
//   @ffi.Int8()
//   external int _unique___opaque_item_4274;
//   @ffi.Int8()
//   external int _unique___opaque_item_4275;
//   @ffi.Int8()
//   external int _unique___opaque_item_4276;
//   @ffi.Int8()
//   external int _unique___opaque_item_4277;
//   @ffi.Int8()
//   external int _unique___opaque_item_4278;
//   @ffi.Int8()
//   external int _unique___opaque_item_4279;
//   @ffi.Int8()
//   external int _unique___opaque_item_4280;
//   @ffi.Int8()
//   external int _unique___opaque_item_4281;
//   @ffi.Int8()
//   external int _unique___opaque_item_4282;
//   @ffi.Int8()
//   external int _unique___opaque_item_4283;
//   @ffi.Int8()
//   external int _unique___opaque_item_4284;
//   @ffi.Int8()
//   external int _unique___opaque_item_4285;
//   @ffi.Int8()
//   external int _unique___opaque_item_4286;
//   @ffi.Int8()
//   external int _unique___opaque_item_4287;
//   @ffi.Int8()
//   external int _unique___opaque_item_4288;
//   @ffi.Int8()
//   external int _unique___opaque_item_4289;
//   @ffi.Int8()
//   external int _unique___opaque_item_4290;
//   @ffi.Int8()
//   external int _unique___opaque_item_4291;
//   @ffi.Int8()
//   external int _unique___opaque_item_4292;
//   @ffi.Int8()
//   external int _unique___opaque_item_4293;
//   @ffi.Int8()
//   external int _unique___opaque_item_4294;
//   @ffi.Int8()
//   external int _unique___opaque_item_4295;
//   @ffi.Int8()
//   external int _unique___opaque_item_4296;
//   @ffi.Int8()
//   external int _unique___opaque_item_4297;
//   @ffi.Int8()
//   external int _unique___opaque_item_4298;
//   @ffi.Int8()
//   external int _unique___opaque_item_4299;
//   @ffi.Int8()
//   external int _unique___opaque_item_4300;
//   @ffi.Int8()
//   external int _unique___opaque_item_4301;
//   @ffi.Int8()
//   external int _unique___opaque_item_4302;
//   @ffi.Int8()
//   external int _unique___opaque_item_4303;
//   @ffi.Int8()
//   external int _unique___opaque_item_4304;
//   @ffi.Int8()
//   external int _unique___opaque_item_4305;
//   @ffi.Int8()
//   external int _unique___opaque_item_4306;
//   @ffi.Int8()
//   external int _unique___opaque_item_4307;
//   @ffi.Int8()
//   external int _unique___opaque_item_4308;
//   @ffi.Int8()
//   external int _unique___opaque_item_4309;
//   @ffi.Int8()
//   external int _unique___opaque_item_4310;
//   @ffi.Int8()
//   external int _unique___opaque_item_4311;
//   @ffi.Int8()
//   external int _unique___opaque_item_4312;
//   @ffi.Int8()
//   external int _unique___opaque_item_4313;
//   @ffi.Int8()
//   external int _unique___opaque_item_4314;
//   @ffi.Int8()
//   external int _unique___opaque_item_4315;
//   @ffi.Int8()
//   external int _unique___opaque_item_4316;
//   @ffi.Int8()
//   external int _unique___opaque_item_4317;
//   @ffi.Int8()
//   external int _unique___opaque_item_4318;
//   @ffi.Int8()
//   external int _unique___opaque_item_4319;
//   @ffi.Int8()
//   external int _unique___opaque_item_4320;
//   @ffi.Int8()
//   external int _unique___opaque_item_4321;
//   @ffi.Int8()
//   external int _unique___opaque_item_4322;
//   @ffi.Int8()
//   external int _unique___opaque_item_4323;
//   @ffi.Int8()
//   external int _unique___opaque_item_4324;
//   @ffi.Int8()
//   external int _unique___opaque_item_4325;
//   @ffi.Int8()
//   external int _unique___opaque_item_4326;
//   @ffi.Int8()
//   external int _unique___opaque_item_4327;
//   @ffi.Int8()
//   external int _unique___opaque_item_4328;
//   @ffi.Int8()
//   external int _unique___opaque_item_4329;
//   @ffi.Int8()
//   external int _unique___opaque_item_4330;
//   @ffi.Int8()
//   external int _unique___opaque_item_4331;
//   @ffi.Int8()
//   external int _unique___opaque_item_4332;
//   @ffi.Int8()
//   external int _unique___opaque_item_4333;
//   @ffi.Int8()
//   external int _unique___opaque_item_4334;
//   @ffi.Int8()
//   external int _unique___opaque_item_4335;
//   @ffi.Int8()
//   external int _unique___opaque_item_4336;
//   @ffi.Int8()
//   external int _unique___opaque_item_4337;
//   @ffi.Int8()
//   external int _unique___opaque_item_4338;
//   @ffi.Int8()
//   external int _unique___opaque_item_4339;
//   @ffi.Int8()
//   external int _unique___opaque_item_4340;
//   @ffi.Int8()
//   external int _unique___opaque_item_4341;
//   @ffi.Int8()
//   external int _unique___opaque_item_4342;
//   @ffi.Int8()
//   external int _unique___opaque_item_4343;
//   @ffi.Int8()
//   external int _unique___opaque_item_4344;
//   @ffi.Int8()
//   external int _unique___opaque_item_4345;
//   @ffi.Int8()
//   external int _unique___opaque_item_4346;
//   @ffi.Int8()
//   external int _unique___opaque_item_4347;
//   @ffi.Int8()
//   external int _unique___opaque_item_4348;
//   @ffi.Int8()
//   external int _unique___opaque_item_4349;
//   @ffi.Int8()
//   external int _unique___opaque_item_4350;
//   @ffi.Int8()
//   external int _unique___opaque_item_4351;
//   @ffi.Int8()
//   external int _unique___opaque_item_4352;
//   @ffi.Int8()
//   external int _unique___opaque_item_4353;
//   @ffi.Int8()
//   external int _unique___opaque_item_4354;
//   @ffi.Int8()
//   external int _unique___opaque_item_4355;
//   @ffi.Int8()
//   external int _unique___opaque_item_4356;
//   @ffi.Int8()
//   external int _unique___opaque_item_4357;
//   @ffi.Int8()
//   external int _unique___opaque_item_4358;
//   @ffi.Int8()
//   external int _unique___opaque_item_4359;
//   @ffi.Int8()
//   external int _unique___opaque_item_4360;
//   @ffi.Int8()
//   external int _unique___opaque_item_4361;
//   @ffi.Int8()
//   external int _unique___opaque_item_4362;
//   @ffi.Int8()
//   external int _unique___opaque_item_4363;
//   @ffi.Int8()
//   external int _unique___opaque_item_4364;
//   @ffi.Int8()
//   external int _unique___opaque_item_4365;
//   @ffi.Int8()
//   external int _unique___opaque_item_4366;
//   @ffi.Int8()
//   external int _unique___opaque_item_4367;
//   @ffi.Int8()
//   external int _unique___opaque_item_4368;
//   @ffi.Int8()
//   external int _unique___opaque_item_4369;
//   @ffi.Int8()
//   external int _unique___opaque_item_4370;
//   @ffi.Int8()
//   external int _unique___opaque_item_4371;
//   @ffi.Int8()
//   external int _unique___opaque_item_4372;
//   @ffi.Int8()
//   external int _unique___opaque_item_4373;
//   @ffi.Int8()
//   external int _unique___opaque_item_4374;
//   @ffi.Int8()
//   external int _unique___opaque_item_4375;
//   @ffi.Int8()
//   external int _unique___opaque_item_4376;
//   @ffi.Int8()
//   external int _unique___opaque_item_4377;
//   @ffi.Int8()
//   external int _unique___opaque_item_4378;
//   @ffi.Int8()
//   external int _unique___opaque_item_4379;
//   @ffi.Int8()
//   external int _unique___opaque_item_4380;
//   @ffi.Int8()
//   external int _unique___opaque_item_4381;
//   @ffi.Int8()
//   external int _unique___opaque_item_4382;
//   @ffi.Int8()
//   external int _unique___opaque_item_4383;
//   @ffi.Int8()
//   external int _unique___opaque_item_4384;
//   @ffi.Int8()
//   external int _unique___opaque_item_4385;
//   @ffi.Int8()
//   external int _unique___opaque_item_4386;
//   @ffi.Int8()
//   external int _unique___opaque_item_4387;
//   @ffi.Int8()
//   external int _unique___opaque_item_4388;
//   @ffi.Int8()
//   external int _unique___opaque_item_4389;
//   @ffi.Int8()
//   external int _unique___opaque_item_4390;
//   @ffi.Int8()
//   external int _unique___opaque_item_4391;
//   @ffi.Int8()
//   external int _unique___opaque_item_4392;
//   @ffi.Int8()
//   external int _unique___opaque_item_4393;
//   @ffi.Int8()
//   external int _unique___opaque_item_4394;
//   @ffi.Int8()
//   external int _unique___opaque_item_4395;
//   @ffi.Int8()
//   external int _unique___opaque_item_4396;
//   @ffi.Int8()
//   external int _unique___opaque_item_4397;
//   @ffi.Int8()
//   external int _unique___opaque_item_4398;
//   @ffi.Int8()
//   external int _unique___opaque_item_4399;
//   @ffi.Int8()
//   external int _unique___opaque_item_4400;
//   @ffi.Int8()
//   external int _unique___opaque_item_4401;
//   @ffi.Int8()
//   external int _unique___opaque_item_4402;
//   @ffi.Int8()
//   external int _unique___opaque_item_4403;
//   @ffi.Int8()
//   external int _unique___opaque_item_4404;
//   @ffi.Int8()
//   external int _unique___opaque_item_4405;
//   @ffi.Int8()
//   external int _unique___opaque_item_4406;
//   @ffi.Int8()
//   external int _unique___opaque_item_4407;
//   @ffi.Int8()
//   external int _unique___opaque_item_4408;
//   @ffi.Int8()
//   external int _unique___opaque_item_4409;
//   @ffi.Int8()
//   external int _unique___opaque_item_4410;
//   @ffi.Int8()
//   external int _unique___opaque_item_4411;
//   @ffi.Int8()
//   external int _unique___opaque_item_4412;
//   @ffi.Int8()
//   external int _unique___opaque_item_4413;
//   @ffi.Int8()
//   external int _unique___opaque_item_4414;
//   @ffi.Int8()
//   external int _unique___opaque_item_4415;
//   @ffi.Int8()
//   external int _unique___opaque_item_4416;
//   @ffi.Int8()
//   external int _unique___opaque_item_4417;
//   @ffi.Int8()
//   external int _unique___opaque_item_4418;
//   @ffi.Int8()
//   external int _unique___opaque_item_4419;
//   @ffi.Int8()
//   external int _unique___opaque_item_4420;
//   @ffi.Int8()
//   external int _unique___opaque_item_4421;
//   @ffi.Int8()
//   external int _unique___opaque_item_4422;
//   @ffi.Int8()
//   external int _unique___opaque_item_4423;
//   @ffi.Int8()
//   external int _unique___opaque_item_4424;
//   @ffi.Int8()
//   external int _unique___opaque_item_4425;
//   @ffi.Int8()
//   external int _unique___opaque_item_4426;
//   @ffi.Int8()
//   external int _unique___opaque_item_4427;
//   @ffi.Int8()
//   external int _unique___opaque_item_4428;
//   @ffi.Int8()
//   external int _unique___opaque_item_4429;
//   @ffi.Int8()
//   external int _unique___opaque_item_4430;
//   @ffi.Int8()
//   external int _unique___opaque_item_4431;
//   @ffi.Int8()
//   external int _unique___opaque_item_4432;
//   @ffi.Int8()
//   external int _unique___opaque_item_4433;
//   @ffi.Int8()
//   external int _unique___opaque_item_4434;
//   @ffi.Int8()
//   external int _unique___opaque_item_4435;
//   @ffi.Int8()
//   external int _unique___opaque_item_4436;
//   @ffi.Int8()
//   external int _unique___opaque_item_4437;
//   @ffi.Int8()
//   external int _unique___opaque_item_4438;
//   @ffi.Int8()
//   external int _unique___opaque_item_4439;
//   @ffi.Int8()
//   external int _unique___opaque_item_4440;
//   @ffi.Int8()
//   external int _unique___opaque_item_4441;
//   @ffi.Int8()
//   external int _unique___opaque_item_4442;
//   @ffi.Int8()
//   external int _unique___opaque_item_4443;
//   @ffi.Int8()
//   external int _unique___opaque_item_4444;
//   @ffi.Int8()
//   external int _unique___opaque_item_4445;
//   @ffi.Int8()
//   external int _unique___opaque_item_4446;
//   @ffi.Int8()
//   external int _unique___opaque_item_4447;
//   @ffi.Int8()
//   external int _unique___opaque_item_4448;
//   @ffi.Int8()
//   external int _unique___opaque_item_4449;
//   @ffi.Int8()
//   external int _unique___opaque_item_4450;
//   @ffi.Int8()
//   external int _unique___opaque_item_4451;
//   @ffi.Int8()
//   external int _unique___opaque_item_4452;
//   @ffi.Int8()
//   external int _unique___opaque_item_4453;
//   @ffi.Int8()
//   external int _unique___opaque_item_4454;
//   @ffi.Int8()
//   external int _unique___opaque_item_4455;
//   @ffi.Int8()
//   external int _unique___opaque_item_4456;
//   @ffi.Int8()
//   external int _unique___opaque_item_4457;
//   @ffi.Int8()
//   external int _unique___opaque_item_4458;
//   @ffi.Int8()
//   external int _unique___opaque_item_4459;
//   @ffi.Int8()
//   external int _unique___opaque_item_4460;
//   @ffi.Int8()
//   external int _unique___opaque_item_4461;
//   @ffi.Int8()
//   external int _unique___opaque_item_4462;
//   @ffi.Int8()
//   external int _unique___opaque_item_4463;
//   @ffi.Int8()
//   external int _unique___opaque_item_4464;
//   @ffi.Int8()
//   external int _unique___opaque_item_4465;
//   @ffi.Int8()
//   external int _unique___opaque_item_4466;
//   @ffi.Int8()
//   external int _unique___opaque_item_4467;
//   @ffi.Int8()
//   external int _unique___opaque_item_4468;
//   @ffi.Int8()
//   external int _unique___opaque_item_4469;
//   @ffi.Int8()
//   external int _unique___opaque_item_4470;
//   @ffi.Int8()
//   external int _unique___opaque_item_4471;
//   @ffi.Int8()
//   external int _unique___opaque_item_4472;
//   @ffi.Int8()
//   external int _unique___opaque_item_4473;
//   @ffi.Int8()
//   external int _unique___opaque_item_4474;
//   @ffi.Int8()
//   external int _unique___opaque_item_4475;
//   @ffi.Int8()
//   external int _unique___opaque_item_4476;
//   @ffi.Int8()
//   external int _unique___opaque_item_4477;
//   @ffi.Int8()
//   external int _unique___opaque_item_4478;
//   @ffi.Int8()
//   external int _unique___opaque_item_4479;
//   @ffi.Int8()
//   external int _unique___opaque_item_4480;
//   @ffi.Int8()
//   external int _unique___opaque_item_4481;
//   @ffi.Int8()
//   external int _unique___opaque_item_4482;
//   @ffi.Int8()
//   external int _unique___opaque_item_4483;
//   @ffi.Int8()
//   external int _unique___opaque_item_4484;
//   @ffi.Int8()
//   external int _unique___opaque_item_4485;
//   @ffi.Int8()
//   external int _unique___opaque_item_4486;
//   @ffi.Int8()
//   external int _unique___opaque_item_4487;
//   @ffi.Int8()
//   external int _unique___opaque_item_4488;
//   @ffi.Int8()
//   external int _unique___opaque_item_4489;
//   @ffi.Int8()
//   external int _unique___opaque_item_4490;
//   @ffi.Int8()
//   external int _unique___opaque_item_4491;
//   @ffi.Int8()
//   external int _unique___opaque_item_4492;
//   @ffi.Int8()
//   external int _unique___opaque_item_4493;
//   @ffi.Int8()
//   external int _unique___opaque_item_4494;
//   @ffi.Int8()
//   external int _unique___opaque_item_4495;
//   @ffi.Int8()
//   external int _unique___opaque_item_4496;
//   @ffi.Int8()
//   external int _unique___opaque_item_4497;
//   @ffi.Int8()
//   external int _unique___opaque_item_4498;
//   @ffi.Int8()
//   external int _unique___opaque_item_4499;
//   @ffi.Int8()
//   external int _unique___opaque_item_4500;
//   @ffi.Int8()
//   external int _unique___opaque_item_4501;
//   @ffi.Int8()
//   external int _unique___opaque_item_4502;
//   @ffi.Int8()
//   external int _unique___opaque_item_4503;
//   @ffi.Int8()
//   external int _unique___opaque_item_4504;
//   @ffi.Int8()
//   external int _unique___opaque_item_4505;
//   @ffi.Int8()
//   external int _unique___opaque_item_4506;
//   @ffi.Int8()
//   external int _unique___opaque_item_4507;
//   @ffi.Int8()
//   external int _unique___opaque_item_4508;
//   @ffi.Int8()
//   external int _unique___opaque_item_4509;
//   @ffi.Int8()
//   external int _unique___opaque_item_4510;
//   @ffi.Int8()
//   external int _unique___opaque_item_4511;
//   @ffi.Int8()
//   external int _unique___opaque_item_4512;
//   @ffi.Int8()
//   external int _unique___opaque_item_4513;
//   @ffi.Int8()
//   external int _unique___opaque_item_4514;
//   @ffi.Int8()
//   external int _unique___opaque_item_4515;
//   @ffi.Int8()
//   external int _unique___opaque_item_4516;
//   @ffi.Int8()
//   external int _unique___opaque_item_4517;
//   @ffi.Int8()
//   external int _unique___opaque_item_4518;
//   @ffi.Int8()
//   external int _unique___opaque_item_4519;
//   @ffi.Int8()
//   external int _unique___opaque_item_4520;
//   @ffi.Int8()
//   external int _unique___opaque_item_4521;
//   @ffi.Int8()
//   external int _unique___opaque_item_4522;
//   @ffi.Int8()
//   external int _unique___opaque_item_4523;
//   @ffi.Int8()
//   external int _unique___opaque_item_4524;
//   @ffi.Int8()
//   external int _unique___opaque_item_4525;
//   @ffi.Int8()
//   external int _unique___opaque_item_4526;
//   @ffi.Int8()
//   external int _unique___opaque_item_4527;
//   @ffi.Int8()
//   external int _unique___opaque_item_4528;
//   @ffi.Int8()
//   external int _unique___opaque_item_4529;
//   @ffi.Int8()
//   external int _unique___opaque_item_4530;
//   @ffi.Int8()
//   external int _unique___opaque_item_4531;
//   @ffi.Int8()
//   external int _unique___opaque_item_4532;
//   @ffi.Int8()
//   external int _unique___opaque_item_4533;
//   @ffi.Int8()
//   external int _unique___opaque_item_4534;
//   @ffi.Int8()
//   external int _unique___opaque_item_4535;
//   @ffi.Int8()
//   external int _unique___opaque_item_4536;
//   @ffi.Int8()
//   external int _unique___opaque_item_4537;
//   @ffi.Int8()
//   external int _unique___opaque_item_4538;
//   @ffi.Int8()
//   external int _unique___opaque_item_4539;
//   @ffi.Int8()
//   external int _unique___opaque_item_4540;
//   @ffi.Int8()
//   external int _unique___opaque_item_4541;
//   @ffi.Int8()
//   external int _unique___opaque_item_4542;
//   @ffi.Int8()
//   external int _unique___opaque_item_4543;
//   @ffi.Int8()
//   external int _unique___opaque_item_4544;
//   @ffi.Int8()
//   external int _unique___opaque_item_4545;
//   @ffi.Int8()
//   external int _unique___opaque_item_4546;
//   @ffi.Int8()
//   external int _unique___opaque_item_4547;
//   @ffi.Int8()
//   external int _unique___opaque_item_4548;
//   @ffi.Int8()
//   external int _unique___opaque_item_4549;
//   @ffi.Int8()
//   external int _unique___opaque_item_4550;
//   @ffi.Int8()
//   external int _unique___opaque_item_4551;
//   @ffi.Int8()
//   external int _unique___opaque_item_4552;
//   @ffi.Int8()
//   external int _unique___opaque_item_4553;
//   @ffi.Int8()
//   external int _unique___opaque_item_4554;
//   @ffi.Int8()
//   external int _unique___opaque_item_4555;
//   @ffi.Int8()
//   external int _unique___opaque_item_4556;
//   @ffi.Int8()
//   external int _unique___opaque_item_4557;
//   @ffi.Int8()
//   external int _unique___opaque_item_4558;
//   @ffi.Int8()
//   external int _unique___opaque_item_4559;
//   @ffi.Int8()
//   external int _unique___opaque_item_4560;
//   @ffi.Int8()
//   external int _unique___opaque_item_4561;
//   @ffi.Int8()
//   external int _unique___opaque_item_4562;
//   @ffi.Int8()
//   external int _unique___opaque_item_4563;
//   @ffi.Int8()
//   external int _unique___opaque_item_4564;
//   @ffi.Int8()
//   external int _unique___opaque_item_4565;
//   @ffi.Int8()
//   external int _unique___opaque_item_4566;
//   @ffi.Int8()
//   external int _unique___opaque_item_4567;
//   @ffi.Int8()
//   external int _unique___opaque_item_4568;
//   @ffi.Int8()
//   external int _unique___opaque_item_4569;
//   @ffi.Int8()
//   external int _unique___opaque_item_4570;
//   @ffi.Int8()
//   external int _unique___opaque_item_4571;
//   @ffi.Int8()
//   external int _unique___opaque_item_4572;
//   @ffi.Int8()
//   external int _unique___opaque_item_4573;
//   @ffi.Int8()
//   external int _unique___opaque_item_4574;
//   @ffi.Int8()
//   external int _unique___opaque_item_4575;
//   @ffi.Int8()
//   external int _unique___opaque_item_4576;
//   @ffi.Int8()
//   external int _unique___opaque_item_4577;
//   @ffi.Int8()
//   external int _unique___opaque_item_4578;
//   @ffi.Int8()
//   external int _unique___opaque_item_4579;
//   @ffi.Int8()
//   external int _unique___opaque_item_4580;
//   @ffi.Int8()
//   external int _unique___opaque_item_4581;
//   @ffi.Int8()
//   external int _unique___opaque_item_4582;
//   @ffi.Int8()
//   external int _unique___opaque_item_4583;
//   @ffi.Int8()
//   external int _unique___opaque_item_4584;
//   @ffi.Int8()
//   external int _unique___opaque_item_4585;
//   @ffi.Int8()
//   external int _unique___opaque_item_4586;
//   @ffi.Int8()
//   external int _unique___opaque_item_4587;
//   @ffi.Int8()
//   external int _unique___opaque_item_4588;
//   @ffi.Int8()
//   external int _unique___opaque_item_4589;
//   @ffi.Int8()
//   external int _unique___opaque_item_4590;
//   @ffi.Int8()
//   external int _unique___opaque_item_4591;
//   @ffi.Int8()
//   external int _unique___opaque_item_4592;
//   @ffi.Int8()
//   external int _unique___opaque_item_4593;
//   @ffi.Int8()
//   external int _unique___opaque_item_4594;
//   @ffi.Int8()
//   external int _unique___opaque_item_4595;
//   @ffi.Int8()
//   external int _unique___opaque_item_4596;
//   @ffi.Int8()
//   external int _unique___opaque_item_4597;
//   @ffi.Int8()
//   external int _unique___opaque_item_4598;
//   @ffi.Int8()
//   external int _unique___opaque_item_4599;
//   @ffi.Int8()
//   external int _unique___opaque_item_4600;
//   @ffi.Int8()
//   external int _unique___opaque_item_4601;
//   @ffi.Int8()
//   external int _unique___opaque_item_4602;
//   @ffi.Int8()
//   external int _unique___opaque_item_4603;
//   @ffi.Int8()
//   external int _unique___opaque_item_4604;
//   @ffi.Int8()
//   external int _unique___opaque_item_4605;
//   @ffi.Int8()
//   external int _unique___opaque_item_4606;
//   @ffi.Int8()
//   external int _unique___opaque_item_4607;
//   @ffi.Int8()
//   external int _unique___opaque_item_4608;
//   @ffi.Int8()
//   external int _unique___opaque_item_4609;
//   @ffi.Int8()
//   external int _unique___opaque_item_4610;
//   @ffi.Int8()
//   external int _unique___opaque_item_4611;
//   @ffi.Int8()
//   external int _unique___opaque_item_4612;
//   @ffi.Int8()
//   external int _unique___opaque_item_4613;
//   @ffi.Int8()
//   external int _unique___opaque_item_4614;
//   @ffi.Int8()
//   external int _unique___opaque_item_4615;
//   @ffi.Int8()
//   external int _unique___opaque_item_4616;
//   @ffi.Int8()
//   external int _unique___opaque_item_4617;
//   @ffi.Int8()
//   external int _unique___opaque_item_4618;
//   @ffi.Int8()
//   external int _unique___opaque_item_4619;
//   @ffi.Int8()
//   external int _unique___opaque_item_4620;
//   @ffi.Int8()
//   external int _unique___opaque_item_4621;
//   @ffi.Int8()
//   external int _unique___opaque_item_4622;
//   @ffi.Int8()
//   external int _unique___opaque_item_4623;
//   @ffi.Int8()
//   external int _unique___opaque_item_4624;
//   @ffi.Int8()
//   external int _unique___opaque_item_4625;
//   @ffi.Int8()
//   external int _unique___opaque_item_4626;
//   @ffi.Int8()
//   external int _unique___opaque_item_4627;
//   @ffi.Int8()
//   external int _unique___opaque_item_4628;
//   @ffi.Int8()
//   external int _unique___opaque_item_4629;
//   @ffi.Int8()
//   external int _unique___opaque_item_4630;
//   @ffi.Int8()
//   external int _unique___opaque_item_4631;
//   @ffi.Int8()
//   external int _unique___opaque_item_4632;
//   @ffi.Int8()
//   external int _unique___opaque_item_4633;
//   @ffi.Int8()
//   external int _unique___opaque_item_4634;
//   @ffi.Int8()
//   external int _unique___opaque_item_4635;
//   @ffi.Int8()
//   external int _unique___opaque_item_4636;
//   @ffi.Int8()
//   external int _unique___opaque_item_4637;
//   @ffi.Int8()
//   external int _unique___opaque_item_4638;
//   @ffi.Int8()
//   external int _unique___opaque_item_4639;
//   @ffi.Int8()
//   external int _unique___opaque_item_4640;
//   @ffi.Int8()
//   external int _unique___opaque_item_4641;
//   @ffi.Int8()
//   external int _unique___opaque_item_4642;
//   @ffi.Int8()
//   external int _unique___opaque_item_4643;
//   @ffi.Int8()
//   external int _unique___opaque_item_4644;
//   @ffi.Int8()
//   external int _unique___opaque_item_4645;
//   @ffi.Int8()
//   external int _unique___opaque_item_4646;
//   @ffi.Int8()
//   external int _unique___opaque_item_4647;
//   @ffi.Int8()
//   external int _unique___opaque_item_4648;
//   @ffi.Int8()
//   external int _unique___opaque_item_4649;
//   @ffi.Int8()
//   external int _unique___opaque_item_4650;
//   @ffi.Int8()
//   external int _unique___opaque_item_4651;
//   @ffi.Int8()
//   external int _unique___opaque_item_4652;
//   @ffi.Int8()
//   external int _unique___opaque_item_4653;
//   @ffi.Int8()
//   external int _unique___opaque_item_4654;
//   @ffi.Int8()
//   external int _unique___opaque_item_4655;
//   @ffi.Int8()
//   external int _unique___opaque_item_4656;
//   @ffi.Int8()
//   external int _unique___opaque_item_4657;
//   @ffi.Int8()
//   external int _unique___opaque_item_4658;
//   @ffi.Int8()
//   external int _unique___opaque_item_4659;
//   @ffi.Int8()
//   external int _unique___opaque_item_4660;
//   @ffi.Int8()
//   external int _unique___opaque_item_4661;
//   @ffi.Int8()
//   external int _unique___opaque_item_4662;
//   @ffi.Int8()
//   external int _unique___opaque_item_4663;
//   @ffi.Int8()
//   external int _unique___opaque_item_4664;
//   @ffi.Int8()
//   external int _unique___opaque_item_4665;
//   @ffi.Int8()
//   external int _unique___opaque_item_4666;
//   @ffi.Int8()
//   external int _unique___opaque_item_4667;
//   @ffi.Int8()
//   external int _unique___opaque_item_4668;
//   @ffi.Int8()
//   external int _unique___opaque_item_4669;
//   @ffi.Int8()
//   external int _unique___opaque_item_4670;
//   @ffi.Int8()
//   external int _unique___opaque_item_4671;
//   @ffi.Int8()
//   external int _unique___opaque_item_4672;
//   @ffi.Int8()
//   external int _unique___opaque_item_4673;
//   @ffi.Int8()
//   external int _unique___opaque_item_4674;
//   @ffi.Int8()
//   external int _unique___opaque_item_4675;
//   @ffi.Int8()
//   external int _unique___opaque_item_4676;
//   @ffi.Int8()
//   external int _unique___opaque_item_4677;
//   @ffi.Int8()
//   external int _unique___opaque_item_4678;
//   @ffi.Int8()
//   external int _unique___opaque_item_4679;
//   @ffi.Int8()
//   external int _unique___opaque_item_4680;
//   @ffi.Int8()
//   external int _unique___opaque_item_4681;
//   @ffi.Int8()
//   external int _unique___opaque_item_4682;
//   @ffi.Int8()
//   external int _unique___opaque_item_4683;
//   @ffi.Int8()
//   external int _unique___opaque_item_4684;
//   @ffi.Int8()
//   external int _unique___opaque_item_4685;
//   @ffi.Int8()
//   external int _unique___opaque_item_4686;
//   @ffi.Int8()
//   external int _unique___opaque_item_4687;
//   @ffi.Int8()
//   external int _unique___opaque_item_4688;
//   @ffi.Int8()
//   external int _unique___opaque_item_4689;
//   @ffi.Int8()
//   external int _unique___opaque_item_4690;
//   @ffi.Int8()
//   external int _unique___opaque_item_4691;
//   @ffi.Int8()
//   external int _unique___opaque_item_4692;
//   @ffi.Int8()
//   external int _unique___opaque_item_4693;
//   @ffi.Int8()
//   external int _unique___opaque_item_4694;
//   @ffi.Int8()
//   external int _unique___opaque_item_4695;
//   @ffi.Int8()
//   external int _unique___opaque_item_4696;
//   @ffi.Int8()
//   external int _unique___opaque_item_4697;
//   @ffi.Int8()
//   external int _unique___opaque_item_4698;
//   @ffi.Int8()
//   external int _unique___opaque_item_4699;
//   @ffi.Int8()
//   external int _unique___opaque_item_4700;
//   @ffi.Int8()
//   external int _unique___opaque_item_4701;
//   @ffi.Int8()
//   external int _unique___opaque_item_4702;
//   @ffi.Int8()
//   external int _unique___opaque_item_4703;
//   @ffi.Int8()
//   external int _unique___opaque_item_4704;
//   @ffi.Int8()
//   external int _unique___opaque_item_4705;
//   @ffi.Int8()
//   external int _unique___opaque_item_4706;
//   @ffi.Int8()
//   external int _unique___opaque_item_4707;
//   @ffi.Int8()
//   external int _unique___opaque_item_4708;
//   @ffi.Int8()
//   external int _unique___opaque_item_4709;
//   @ffi.Int8()
//   external int _unique___opaque_item_4710;
//   @ffi.Int8()
//   external int _unique___opaque_item_4711;
//   @ffi.Int8()
//   external int _unique___opaque_item_4712;
//   @ffi.Int8()
//   external int _unique___opaque_item_4713;
//   @ffi.Int8()
//   external int _unique___opaque_item_4714;
//   @ffi.Int8()
//   external int _unique___opaque_item_4715;
//   @ffi.Int8()
//   external int _unique___opaque_item_4716;
//   @ffi.Int8()
//   external int _unique___opaque_item_4717;
//   @ffi.Int8()
//   external int _unique___opaque_item_4718;
//   @ffi.Int8()
//   external int _unique___opaque_item_4719;
//   @ffi.Int8()
//   external int _unique___opaque_item_4720;
//   @ffi.Int8()
//   external int _unique___opaque_item_4721;
//   @ffi.Int8()
//   external int _unique___opaque_item_4722;
//   @ffi.Int8()
//   external int _unique___opaque_item_4723;
//   @ffi.Int8()
//   external int _unique___opaque_item_4724;
//   @ffi.Int8()
//   external int _unique___opaque_item_4725;
//   @ffi.Int8()
//   external int _unique___opaque_item_4726;
//   @ffi.Int8()
//   external int _unique___opaque_item_4727;
//   @ffi.Int8()
//   external int _unique___opaque_item_4728;
//   @ffi.Int8()
//   external int _unique___opaque_item_4729;
//   @ffi.Int8()
//   external int _unique___opaque_item_4730;
//   @ffi.Int8()
//   external int _unique___opaque_item_4731;
//   @ffi.Int8()
//   external int _unique___opaque_item_4732;
//   @ffi.Int8()
//   external int _unique___opaque_item_4733;
//   @ffi.Int8()
//   external int _unique___opaque_item_4734;
//   @ffi.Int8()
//   external int _unique___opaque_item_4735;
//   @ffi.Int8()
//   external int _unique___opaque_item_4736;
//   @ffi.Int8()
//   external int _unique___opaque_item_4737;
//   @ffi.Int8()
//   external int _unique___opaque_item_4738;
//   @ffi.Int8()
//   external int _unique___opaque_item_4739;
//   @ffi.Int8()
//   external int _unique___opaque_item_4740;
//   @ffi.Int8()
//   external int _unique___opaque_item_4741;
//   @ffi.Int8()
//   external int _unique___opaque_item_4742;
//   @ffi.Int8()
//   external int _unique___opaque_item_4743;
//   @ffi.Int8()
//   external int _unique___opaque_item_4744;
//   @ffi.Int8()
//   external int _unique___opaque_item_4745;
//   @ffi.Int8()
//   external int _unique___opaque_item_4746;
//   @ffi.Int8()
//   external int _unique___opaque_item_4747;
//   @ffi.Int8()
//   external int _unique___opaque_item_4748;
//   @ffi.Int8()
//   external int _unique___opaque_item_4749;
//   @ffi.Int8()
//   external int _unique___opaque_item_4750;
//   @ffi.Int8()
//   external int _unique___opaque_item_4751;
//   @ffi.Int8()
//   external int _unique___opaque_item_4752;
//   @ffi.Int8()
//   external int _unique___opaque_item_4753;
//   @ffi.Int8()
//   external int _unique___opaque_item_4754;
//   @ffi.Int8()
//   external int _unique___opaque_item_4755;
//   @ffi.Int8()
//   external int _unique___opaque_item_4756;
//   @ffi.Int8()
//   external int _unique___opaque_item_4757;
//   @ffi.Int8()
//   external int _unique___opaque_item_4758;
//   @ffi.Int8()
//   external int _unique___opaque_item_4759;
//   @ffi.Int8()
//   external int _unique___opaque_item_4760;
//   @ffi.Int8()
//   external int _unique___opaque_item_4761;
//   @ffi.Int8()
//   external int _unique___opaque_item_4762;
//   @ffi.Int8()
//   external int _unique___opaque_item_4763;
//   @ffi.Int8()
//   external int _unique___opaque_item_4764;
//   @ffi.Int8()
//   external int _unique___opaque_item_4765;
//   @ffi.Int8()
//   external int _unique___opaque_item_4766;
//   @ffi.Int8()
//   external int _unique___opaque_item_4767;
//   @ffi.Int8()
//   external int _unique___opaque_item_4768;
//   @ffi.Int8()
//   external int _unique___opaque_item_4769;
//   @ffi.Int8()
//   external int _unique___opaque_item_4770;
//   @ffi.Int8()
//   external int _unique___opaque_item_4771;
//   @ffi.Int8()
//   external int _unique___opaque_item_4772;
//   @ffi.Int8()
//   external int _unique___opaque_item_4773;
//   @ffi.Int8()
//   external int _unique___opaque_item_4774;
//   @ffi.Int8()
//   external int _unique___opaque_item_4775;
//   @ffi.Int8()
//   external int _unique___opaque_item_4776;
//   @ffi.Int8()
//   external int _unique___opaque_item_4777;
//   @ffi.Int8()
//   external int _unique___opaque_item_4778;
//   @ffi.Int8()
//   external int _unique___opaque_item_4779;
//   @ffi.Int8()
//   external int _unique___opaque_item_4780;
//   @ffi.Int8()
//   external int _unique___opaque_item_4781;
//   @ffi.Int8()
//   external int _unique___opaque_item_4782;
//   @ffi.Int8()
//   external int _unique___opaque_item_4783;
//   @ffi.Int8()
//   external int _unique___opaque_item_4784;
//   @ffi.Int8()
//   external int _unique___opaque_item_4785;
//   @ffi.Int8()
//   external int _unique___opaque_item_4786;
//   @ffi.Int8()
//   external int _unique___opaque_item_4787;
//   @ffi.Int8()
//   external int _unique___opaque_item_4788;
//   @ffi.Int8()
//   external int _unique___opaque_item_4789;
//   @ffi.Int8()
//   external int _unique___opaque_item_4790;
//   @ffi.Int8()
//   external int _unique___opaque_item_4791;
//   @ffi.Int8()
//   external int _unique___opaque_item_4792;
//   @ffi.Int8()
//   external int _unique___opaque_item_4793;
//   @ffi.Int8()
//   external int _unique___opaque_item_4794;
//   @ffi.Int8()
//   external int _unique___opaque_item_4795;
//   @ffi.Int8()
//   external int _unique___opaque_item_4796;
//   @ffi.Int8()
//   external int _unique___opaque_item_4797;
//   @ffi.Int8()
//   external int _unique___opaque_item_4798;
//   @ffi.Int8()
//   external int _unique___opaque_item_4799;
//   @ffi.Int8()
//   external int _unique___opaque_item_4800;
//   @ffi.Int8()
//   external int _unique___opaque_item_4801;
//   @ffi.Int8()
//   external int _unique___opaque_item_4802;
//   @ffi.Int8()
//   external int _unique___opaque_item_4803;
//   @ffi.Int8()
//   external int _unique___opaque_item_4804;
//   @ffi.Int8()
//   external int _unique___opaque_item_4805;
//   @ffi.Int8()
//   external int _unique___opaque_item_4806;
//   @ffi.Int8()
//   external int _unique___opaque_item_4807;
//   @ffi.Int8()
//   external int _unique___opaque_item_4808;
//   @ffi.Int8()
//   external int _unique___opaque_item_4809;
//   @ffi.Int8()
//   external int _unique___opaque_item_4810;
//   @ffi.Int8()
//   external int _unique___opaque_item_4811;
//   @ffi.Int8()
//   external int _unique___opaque_item_4812;
//   @ffi.Int8()
//   external int _unique___opaque_item_4813;
//   @ffi.Int8()
//   external int _unique___opaque_item_4814;
//   @ffi.Int8()
//   external int _unique___opaque_item_4815;
//   @ffi.Int8()
//   external int _unique___opaque_item_4816;
//   @ffi.Int8()
//   external int _unique___opaque_item_4817;
//   @ffi.Int8()
//   external int _unique___opaque_item_4818;
//   @ffi.Int8()
//   external int _unique___opaque_item_4819;
//   @ffi.Int8()
//   external int _unique___opaque_item_4820;
//   @ffi.Int8()
//   external int _unique___opaque_item_4821;
//   @ffi.Int8()
//   external int _unique___opaque_item_4822;
//   @ffi.Int8()
//   external int _unique___opaque_item_4823;
//   @ffi.Int8()
//   external int _unique___opaque_item_4824;
//   @ffi.Int8()
//   external int _unique___opaque_item_4825;
//   @ffi.Int8()
//   external int _unique___opaque_item_4826;
//   @ffi.Int8()
//   external int _unique___opaque_item_4827;
//   @ffi.Int8()
//   external int _unique___opaque_item_4828;
//   @ffi.Int8()
//   external int _unique___opaque_item_4829;
//   @ffi.Int8()
//   external int _unique___opaque_item_4830;
//   @ffi.Int8()
//   external int _unique___opaque_item_4831;
//   @ffi.Int8()
//   external int _unique___opaque_item_4832;
//   @ffi.Int8()
//   external int _unique___opaque_item_4833;
//   @ffi.Int8()
//   external int _unique___opaque_item_4834;
//   @ffi.Int8()
//   external int _unique___opaque_item_4835;
//   @ffi.Int8()
//   external int _unique___opaque_item_4836;
//   @ffi.Int8()
//   external int _unique___opaque_item_4837;
//   @ffi.Int8()
//   external int _unique___opaque_item_4838;
//   @ffi.Int8()
//   external int _unique___opaque_item_4839;
//   @ffi.Int8()
//   external int _unique___opaque_item_4840;
//   @ffi.Int8()
//   external int _unique___opaque_item_4841;
//   @ffi.Int8()
//   external int _unique___opaque_item_4842;
//   @ffi.Int8()
//   external int _unique___opaque_item_4843;
//   @ffi.Int8()
//   external int _unique___opaque_item_4844;
//   @ffi.Int8()
//   external int _unique___opaque_item_4845;
//   @ffi.Int8()
//   external int _unique___opaque_item_4846;
//   @ffi.Int8()
//   external int _unique___opaque_item_4847;
//   @ffi.Int8()
//   external int _unique___opaque_item_4848;
//   @ffi.Int8()
//   external int _unique___opaque_item_4849;
//   @ffi.Int8()
//   external int _unique___opaque_item_4850;
//   @ffi.Int8()
//   external int _unique___opaque_item_4851;
//   @ffi.Int8()
//   external int _unique___opaque_item_4852;
//   @ffi.Int8()
//   external int _unique___opaque_item_4853;
//   @ffi.Int8()
//   external int _unique___opaque_item_4854;
//   @ffi.Int8()
//   external int _unique___opaque_item_4855;
//   @ffi.Int8()
//   external int _unique___opaque_item_4856;
//   @ffi.Int8()
//   external int _unique___opaque_item_4857;
//   @ffi.Int8()
//   external int _unique___opaque_item_4858;
//   @ffi.Int8()
//   external int _unique___opaque_item_4859;
//   @ffi.Int8()
//   external int _unique___opaque_item_4860;
//   @ffi.Int8()
//   external int _unique___opaque_item_4861;
//   @ffi.Int8()
//   external int _unique___opaque_item_4862;
//   @ffi.Int8()
//   external int _unique___opaque_item_4863;
//   @ffi.Int8()
//   external int _unique___opaque_item_4864;
//   @ffi.Int8()
//   external int _unique___opaque_item_4865;
//   @ffi.Int8()
//   external int _unique___opaque_item_4866;
//   @ffi.Int8()
//   external int _unique___opaque_item_4867;
//   @ffi.Int8()
//   external int _unique___opaque_item_4868;
//   @ffi.Int8()
//   external int _unique___opaque_item_4869;
//   @ffi.Int8()
//   external int _unique___opaque_item_4870;
//   @ffi.Int8()
//   external int _unique___opaque_item_4871;
//   @ffi.Int8()
//   external int _unique___opaque_item_4872;
//   @ffi.Int8()
//   external int _unique___opaque_item_4873;
//   @ffi.Int8()
//   external int _unique___opaque_item_4874;
//   @ffi.Int8()
//   external int _unique___opaque_item_4875;
//   @ffi.Int8()
//   external int _unique___opaque_item_4876;
//   @ffi.Int8()
//   external int _unique___opaque_item_4877;
//   @ffi.Int8()
//   external int _unique___opaque_item_4878;
//   @ffi.Int8()
//   external int _unique___opaque_item_4879;
//   @ffi.Int8()
//   external int _unique___opaque_item_4880;
//   @ffi.Int8()
//   external int _unique___opaque_item_4881;
//   @ffi.Int8()
//   external int _unique___opaque_item_4882;
//   @ffi.Int8()
//   external int _unique___opaque_item_4883;
//   @ffi.Int8()
//   external int _unique___opaque_item_4884;
//   @ffi.Int8()
//   external int _unique___opaque_item_4885;
//   @ffi.Int8()
//   external int _unique___opaque_item_4886;
//   @ffi.Int8()
//   external int _unique___opaque_item_4887;
//   @ffi.Int8()
//   external int _unique___opaque_item_4888;
//   @ffi.Int8()
//   external int _unique___opaque_item_4889;
//   @ffi.Int8()
//   external int _unique___opaque_item_4890;
//   @ffi.Int8()
//   external int _unique___opaque_item_4891;
//   @ffi.Int8()
//   external int _unique___opaque_item_4892;
//   @ffi.Int8()
//   external int _unique___opaque_item_4893;
//   @ffi.Int8()
//   external int _unique___opaque_item_4894;
//   @ffi.Int8()
//   external int _unique___opaque_item_4895;
//   @ffi.Int8()
//   external int _unique___opaque_item_4896;
//   @ffi.Int8()
//   external int _unique___opaque_item_4897;
//   @ffi.Int8()
//   external int _unique___opaque_item_4898;
//   @ffi.Int8()
//   external int _unique___opaque_item_4899;
//   @ffi.Int8()
//   external int _unique___opaque_item_4900;
//   @ffi.Int8()
//   external int _unique___opaque_item_4901;
//   @ffi.Int8()
//   external int _unique___opaque_item_4902;
//   @ffi.Int8()
//   external int _unique___opaque_item_4903;
//   @ffi.Int8()
//   external int _unique___opaque_item_4904;
//   @ffi.Int8()
//   external int _unique___opaque_item_4905;
//   @ffi.Int8()
//   external int _unique___opaque_item_4906;
//   @ffi.Int8()
//   external int _unique___opaque_item_4907;
//   @ffi.Int8()
//   external int _unique___opaque_item_4908;
//   @ffi.Int8()
//   external int _unique___opaque_item_4909;
//   @ffi.Int8()
//   external int _unique___opaque_item_4910;
//   @ffi.Int8()
//   external int _unique___opaque_item_4911;
//   @ffi.Int8()
//   external int _unique___opaque_item_4912;
//   @ffi.Int8()
//   external int _unique___opaque_item_4913;
//   @ffi.Int8()
//   external int _unique___opaque_item_4914;
//   @ffi.Int8()
//   external int _unique___opaque_item_4915;
//   @ffi.Int8()
//   external int _unique___opaque_item_4916;
//   @ffi.Int8()
//   external int _unique___opaque_item_4917;
//   @ffi.Int8()
//   external int _unique___opaque_item_4918;
//   @ffi.Int8()
//   external int _unique___opaque_item_4919;
//   @ffi.Int8()
//   external int _unique___opaque_item_4920;
//   @ffi.Int8()
//   external int _unique___opaque_item_4921;
//   @ffi.Int8()
//   external int _unique___opaque_item_4922;
//   @ffi.Int8()
//   external int _unique___opaque_item_4923;
//   @ffi.Int8()
//   external int _unique___opaque_item_4924;
//   @ffi.Int8()
//   external int _unique___opaque_item_4925;
//   @ffi.Int8()
//   external int _unique___opaque_item_4926;
//   @ffi.Int8()
//   external int _unique___opaque_item_4927;
//   @ffi.Int8()
//   external int _unique___opaque_item_4928;
//   @ffi.Int8()
//   external int _unique___opaque_item_4929;
//   @ffi.Int8()
//   external int _unique___opaque_item_4930;
//   @ffi.Int8()
//   external int _unique___opaque_item_4931;
//   @ffi.Int8()
//   external int _unique___opaque_item_4932;
//   @ffi.Int8()
//   external int _unique___opaque_item_4933;
//   @ffi.Int8()
//   external int _unique___opaque_item_4934;
//   @ffi.Int8()
//   external int _unique___opaque_item_4935;
//   @ffi.Int8()
//   external int _unique___opaque_item_4936;
//   @ffi.Int8()
//   external int _unique___opaque_item_4937;
//   @ffi.Int8()
//   external int _unique___opaque_item_4938;
//   @ffi.Int8()
//   external int _unique___opaque_item_4939;
//   @ffi.Int8()
//   external int _unique___opaque_item_4940;
//   @ffi.Int8()
//   external int _unique___opaque_item_4941;
//   @ffi.Int8()
//   external int _unique___opaque_item_4942;
//   @ffi.Int8()
//   external int _unique___opaque_item_4943;
//   @ffi.Int8()
//   external int _unique___opaque_item_4944;
//   @ffi.Int8()
//   external int _unique___opaque_item_4945;
//   @ffi.Int8()
//   external int _unique___opaque_item_4946;
//   @ffi.Int8()
//   external int _unique___opaque_item_4947;
//   @ffi.Int8()
//   external int _unique___opaque_item_4948;
//   @ffi.Int8()
//   external int _unique___opaque_item_4949;
//   @ffi.Int8()
//   external int _unique___opaque_item_4950;
//   @ffi.Int8()
//   external int _unique___opaque_item_4951;
//   @ffi.Int8()
//   external int _unique___opaque_item_4952;
//   @ffi.Int8()
//   external int _unique___opaque_item_4953;
//   @ffi.Int8()
//   external int _unique___opaque_item_4954;
//   @ffi.Int8()
//   external int _unique___opaque_item_4955;
//   @ffi.Int8()
//   external int _unique___opaque_item_4956;
//   @ffi.Int8()
//   external int _unique___opaque_item_4957;
//   @ffi.Int8()
//   external int _unique___opaque_item_4958;
//   @ffi.Int8()
//   external int _unique___opaque_item_4959;
//   @ffi.Int8()
//   external int _unique___opaque_item_4960;
//   @ffi.Int8()
//   external int _unique___opaque_item_4961;
//   @ffi.Int8()
//   external int _unique___opaque_item_4962;
//   @ffi.Int8()
//   external int _unique___opaque_item_4963;
//   @ffi.Int8()
//   external int _unique___opaque_item_4964;
//   @ffi.Int8()
//   external int _unique___opaque_item_4965;
//   @ffi.Int8()
//   external int _unique___opaque_item_4966;
//   @ffi.Int8()
//   external int _unique___opaque_item_4967;
//   @ffi.Int8()
//   external int _unique___opaque_item_4968;
//   @ffi.Int8()
//   external int _unique___opaque_item_4969;
//   @ffi.Int8()
//   external int _unique___opaque_item_4970;
//   @ffi.Int8()
//   external int _unique___opaque_item_4971;
//   @ffi.Int8()
//   external int _unique___opaque_item_4972;
//   @ffi.Int8()
//   external int _unique___opaque_item_4973;
//   @ffi.Int8()
//   external int _unique___opaque_item_4974;
//   @ffi.Int8()
//   external int _unique___opaque_item_4975;
//   @ffi.Int8()
//   external int _unique___opaque_item_4976;
//   @ffi.Int8()
//   external int _unique___opaque_item_4977;
//   @ffi.Int8()
//   external int _unique___opaque_item_4978;
//   @ffi.Int8()
//   external int _unique___opaque_item_4979;
//   @ffi.Int8()
//   external int _unique___opaque_item_4980;
//   @ffi.Int8()
//   external int _unique___opaque_item_4981;
//   @ffi.Int8()
//   external int _unique___opaque_item_4982;
//   @ffi.Int8()
//   external int _unique___opaque_item_4983;
//   @ffi.Int8()
//   external int _unique___opaque_item_4984;
//   @ffi.Int8()
//   external int _unique___opaque_item_4985;
//   @ffi.Int8()
//   external int _unique___opaque_item_4986;
//   @ffi.Int8()
//   external int _unique___opaque_item_4987;
//   @ffi.Int8()
//   external int _unique___opaque_item_4988;
//   @ffi.Int8()
//   external int _unique___opaque_item_4989;
//   @ffi.Int8()
//   external int _unique___opaque_item_4990;
//   @ffi.Int8()
//   external int _unique___opaque_item_4991;
//   @ffi.Int8()
//   external int _unique___opaque_item_4992;
//   @ffi.Int8()
//   external int _unique___opaque_item_4993;
//   @ffi.Int8()
//   external int _unique___opaque_item_4994;
//   @ffi.Int8()
//   external int _unique___opaque_item_4995;
//   @ffi.Int8()
//   external int _unique___opaque_item_4996;
//   @ffi.Int8()
//   external int _unique___opaque_item_4997;
//   @ffi.Int8()
//   external int _unique___opaque_item_4998;
//   @ffi.Int8()
//   external int _unique___opaque_item_4999;
//   @ffi.Int8()
//   external int _unique___opaque_item_5000;
//   @ffi.Int8()
//   external int _unique___opaque_item_5001;
//   @ffi.Int8()
//   external int _unique___opaque_item_5002;
//   @ffi.Int8()
//   external int _unique___opaque_item_5003;
//   @ffi.Int8()
//   external int _unique___opaque_item_5004;
//   @ffi.Int8()
//   external int _unique___opaque_item_5005;
//   @ffi.Int8()
//   external int _unique___opaque_item_5006;
//   @ffi.Int8()
//   external int _unique___opaque_item_5007;
//   @ffi.Int8()
//   external int _unique___opaque_item_5008;
//   @ffi.Int8()
//   external int _unique___opaque_item_5009;
//   @ffi.Int8()
//   external int _unique___opaque_item_5010;
//   @ffi.Int8()
//   external int _unique___opaque_item_5011;
//   @ffi.Int8()
//   external int _unique___opaque_item_5012;
//   @ffi.Int8()
//   external int _unique___opaque_item_5013;
//   @ffi.Int8()
//   external int _unique___opaque_item_5014;
//   @ffi.Int8()
//   external int _unique___opaque_item_5015;
//   @ffi.Int8()
//   external int _unique___opaque_item_5016;
//   @ffi.Int8()
//   external int _unique___opaque_item_5017;
//   @ffi.Int8()
//   external int _unique___opaque_item_5018;
//   @ffi.Int8()
//   external int _unique___opaque_item_5019;
//   @ffi.Int8()
//   external int _unique___opaque_item_5020;
//   @ffi.Int8()
//   external int _unique___opaque_item_5021;
//   @ffi.Int8()
//   external int _unique___opaque_item_5022;
//   @ffi.Int8()
//   external int _unique___opaque_item_5023;
//   @ffi.Int8()
//   external int _unique___opaque_item_5024;
//   @ffi.Int8()
//   external int _unique___opaque_item_5025;
//   @ffi.Int8()
//   external int _unique___opaque_item_5026;
//   @ffi.Int8()
//   external int _unique___opaque_item_5027;
//   @ffi.Int8()
//   external int _unique___opaque_item_5028;
//   @ffi.Int8()
//   external int _unique___opaque_item_5029;
//   @ffi.Int8()
//   external int _unique___opaque_item_5030;
//   @ffi.Int8()
//   external int _unique___opaque_item_5031;
//   @ffi.Int8()
//   external int _unique___opaque_item_5032;
//   @ffi.Int8()
//   external int _unique___opaque_item_5033;
//   @ffi.Int8()
//   external int _unique___opaque_item_5034;
//   @ffi.Int8()
//   external int _unique___opaque_item_5035;
//   @ffi.Int8()
//   external int _unique___opaque_item_5036;
//   @ffi.Int8()
//   external int _unique___opaque_item_5037;
//   @ffi.Int8()
//   external int _unique___opaque_item_5038;
//   @ffi.Int8()
//   external int _unique___opaque_item_5039;
//   @ffi.Int8()
//   external int _unique___opaque_item_5040;
//   @ffi.Int8()
//   external int _unique___opaque_item_5041;
//   @ffi.Int8()
//   external int _unique___opaque_item_5042;
//   @ffi.Int8()
//   external int _unique___opaque_item_5043;
//   @ffi.Int8()
//   external int _unique___opaque_item_5044;
//   @ffi.Int8()
//   external int _unique___opaque_item_5045;
//   @ffi.Int8()
//   external int _unique___opaque_item_5046;
//   @ffi.Int8()
//   external int _unique___opaque_item_5047;
//   @ffi.Int8()
//   external int _unique___opaque_item_5048;
//   @ffi.Int8()
//   external int _unique___opaque_item_5049;
//   @ffi.Int8()
//   external int _unique___opaque_item_5050;
//   @ffi.Int8()
//   external int _unique___opaque_item_5051;
//   @ffi.Int8()
//   external int _unique___opaque_item_5052;
//   @ffi.Int8()
//   external int _unique___opaque_item_5053;
//   @ffi.Int8()
//   external int _unique___opaque_item_5054;
//   @ffi.Int8()
//   external int _unique___opaque_item_5055;
//   @ffi.Int8()
//   external int _unique___opaque_item_5056;
//   @ffi.Int8()
//   external int _unique___opaque_item_5057;
//   @ffi.Int8()
//   external int _unique___opaque_item_5058;
//   @ffi.Int8()
//   external int _unique___opaque_item_5059;
//   @ffi.Int8()
//   external int _unique___opaque_item_5060;
//   @ffi.Int8()
//   external int _unique___opaque_item_5061;
//   @ffi.Int8()
//   external int _unique___opaque_item_5062;
//   @ffi.Int8()
//   external int _unique___opaque_item_5063;
//   @ffi.Int8()
//   external int _unique___opaque_item_5064;
//   @ffi.Int8()
//   external int _unique___opaque_item_5065;
//   @ffi.Int8()
//   external int _unique___opaque_item_5066;
//   @ffi.Int8()
//   external int _unique___opaque_item_5067;
//   @ffi.Int8()
//   external int _unique___opaque_item_5068;
//   @ffi.Int8()
//   external int _unique___opaque_item_5069;
//   @ffi.Int8()
//   external int _unique___opaque_item_5070;
//   @ffi.Int8()
//   external int _unique___opaque_item_5071;
//   @ffi.Int8()
//   external int _unique___opaque_item_5072;
//   @ffi.Int8()
//   external int _unique___opaque_item_5073;
//   @ffi.Int8()
//   external int _unique___opaque_item_5074;
//   @ffi.Int8()
//   external int _unique___opaque_item_5075;
//   @ffi.Int8()
//   external int _unique___opaque_item_5076;
//   @ffi.Int8()
//   external int _unique___opaque_item_5077;
//   @ffi.Int8()
//   external int _unique___opaque_item_5078;
//   @ffi.Int8()
//   external int _unique___opaque_item_5079;
//   @ffi.Int8()
//   external int _unique___opaque_item_5080;
//   @ffi.Int8()
//   external int _unique___opaque_item_5081;
//   @ffi.Int8()
//   external int _unique___opaque_item_5082;
//   @ffi.Int8()
//   external int _unique___opaque_item_5083;
//   @ffi.Int8()
//   external int _unique___opaque_item_5084;
//   @ffi.Int8()
//   external int _unique___opaque_item_5085;
//   @ffi.Int8()
//   external int _unique___opaque_item_5086;
//   @ffi.Int8()
//   external int _unique___opaque_item_5087;
//   @ffi.Int8()
//   external int _unique___opaque_item_5088;
//   @ffi.Int8()
//   external int _unique___opaque_item_5089;
//   @ffi.Int8()
//   external int _unique___opaque_item_5090;
//   @ffi.Int8()
//   external int _unique___opaque_item_5091;
//   @ffi.Int8()
//   external int _unique___opaque_item_5092;
//   @ffi.Int8()
//   external int _unique___opaque_item_5093;
//   @ffi.Int8()
//   external int _unique___opaque_item_5094;
//   @ffi.Int8()
//   external int _unique___opaque_item_5095;
//   @ffi.Int8()
//   external int _unique___opaque_item_5096;
//   @ffi.Int8()
//   external int _unique___opaque_item_5097;
//   @ffi.Int8()
//   external int _unique___opaque_item_5098;
//   @ffi.Int8()
//   external int _unique___opaque_item_5099;
//   @ffi.Int8()
//   external int _unique___opaque_item_5100;
//   @ffi.Int8()
//   external int _unique___opaque_item_5101;
//   @ffi.Int8()
//   external int _unique___opaque_item_5102;
//   @ffi.Int8()
//   external int _unique___opaque_item_5103;
//   @ffi.Int8()
//   external int _unique___opaque_item_5104;
//   @ffi.Int8()
//   external int _unique___opaque_item_5105;
//   @ffi.Int8()
//   external int _unique___opaque_item_5106;
//   @ffi.Int8()
//   external int _unique___opaque_item_5107;
//   @ffi.Int8()
//   external int _unique___opaque_item_5108;
//   @ffi.Int8()
//   external int _unique___opaque_item_5109;
//   @ffi.Int8()
//   external int _unique___opaque_item_5110;
//   @ffi.Int8()
//   external int _unique___opaque_item_5111;
//   @ffi.Int8()
//   external int _unique___opaque_item_5112;
//   @ffi.Int8()
//   external int _unique___opaque_item_5113;
//   @ffi.Int8()
//   external int _unique___opaque_item_5114;
//   @ffi.Int8()
//   external int _unique___opaque_item_5115;
//   @ffi.Int8()
//   external int _unique___opaque_item_5116;
//   @ffi.Int8()
//   external int _unique___opaque_item_5117;
//   @ffi.Int8()
//   external int _unique___opaque_item_5118;
//   @ffi.Int8()
//   external int _unique___opaque_item_5119;
//   @ffi.Int8()
//   external int _unique___opaque_item_5120;
//   @ffi.Int8()
//   external int _unique___opaque_item_5121;
//   @ffi.Int8()
//   external int _unique___opaque_item_5122;
//   @ffi.Int8()
//   external int _unique___opaque_item_5123;
//   @ffi.Int8()
//   external int _unique___opaque_item_5124;
//   @ffi.Int8()
//   external int _unique___opaque_item_5125;
//   @ffi.Int8()
//   external int _unique___opaque_item_5126;
//   @ffi.Int8()
//   external int _unique___opaque_item_5127;
//   @ffi.Int8()
//   external int _unique___opaque_item_5128;
//   @ffi.Int8()
//   external int _unique___opaque_item_5129;
//   @ffi.Int8()
//   external int _unique___opaque_item_5130;
//   @ffi.Int8()
//   external int _unique___opaque_item_5131;
//   @ffi.Int8()
//   external int _unique___opaque_item_5132;
//   @ffi.Int8()
//   external int _unique___opaque_item_5133;
//   @ffi.Int8()
//   external int _unique___opaque_item_5134;
//   @ffi.Int8()
//   external int _unique___opaque_item_5135;
//   @ffi.Int8()
//   external int _unique___opaque_item_5136;
//   @ffi.Int8()
//   external int _unique___opaque_item_5137;
//   @ffi.Int8()
//   external int _unique___opaque_item_5138;
//   @ffi.Int8()
//   external int _unique___opaque_item_5139;
//   @ffi.Int8()
//   external int _unique___opaque_item_5140;
//   @ffi.Int8()
//   external int _unique___opaque_item_5141;
//   @ffi.Int8()
//   external int _unique___opaque_item_5142;
//   @ffi.Int8()
//   external int _unique___opaque_item_5143;
//   @ffi.Int8()
//   external int _unique___opaque_item_5144;
//   @ffi.Int8()
//   external int _unique___opaque_item_5145;
//   @ffi.Int8()
//   external int _unique___opaque_item_5146;
//   @ffi.Int8()
//   external int _unique___opaque_item_5147;
//   @ffi.Int8()
//   external int _unique___opaque_item_5148;
//   @ffi.Int8()
//   external int _unique___opaque_item_5149;
//   @ffi.Int8()
//   external int _unique___opaque_item_5150;
//   @ffi.Int8()
//   external int _unique___opaque_item_5151;
//   @ffi.Int8()
//   external int _unique___opaque_item_5152;
//   @ffi.Int8()
//   external int _unique___opaque_item_5153;
//   @ffi.Int8()
//   external int _unique___opaque_item_5154;
//   @ffi.Int8()
//   external int _unique___opaque_item_5155;
//   @ffi.Int8()
//   external int _unique___opaque_item_5156;
//   @ffi.Int8()
//   external int _unique___opaque_item_5157;
//   @ffi.Int8()
//   external int _unique___opaque_item_5158;
//   @ffi.Int8()
//   external int _unique___opaque_item_5159;
//   @ffi.Int8()
//   external int _unique___opaque_item_5160;
//   @ffi.Int8()
//   external int _unique___opaque_item_5161;
//   @ffi.Int8()
//   external int _unique___opaque_item_5162;
//   @ffi.Int8()
//   external int _unique___opaque_item_5163;
//   @ffi.Int8()
//   external int _unique___opaque_item_5164;
//   @ffi.Int8()
//   external int _unique___opaque_item_5165;
//   @ffi.Int8()
//   external int _unique___opaque_item_5166;
//   @ffi.Int8()
//   external int _unique___opaque_item_5167;
//   @ffi.Int8()
//   external int _unique___opaque_item_5168;
//   @ffi.Int8()
//   external int _unique___opaque_item_5169;
//   @ffi.Int8()
//   external int _unique___opaque_item_5170;
//   @ffi.Int8()
//   external int _unique___opaque_item_5171;
//   @ffi.Int8()
//   external int _unique___opaque_item_5172;
//   @ffi.Int8()
//   external int _unique___opaque_item_5173;
//   @ffi.Int8()
//   external int _unique___opaque_item_5174;
//   @ffi.Int8()
//   external int _unique___opaque_item_5175;
//   @ffi.Int8()
//   external int _unique___opaque_item_5176;
//   @ffi.Int8()
//   external int _unique___opaque_item_5177;
//   @ffi.Int8()
//   external int _unique___opaque_item_5178;
//   @ffi.Int8()
//   external int _unique___opaque_item_5179;
//   @ffi.Int8()
//   external int _unique___opaque_item_5180;
//   @ffi.Int8()
//   external int _unique___opaque_item_5181;
//   @ffi.Int8()
//   external int _unique___opaque_item_5182;
//   @ffi.Int8()
//   external int _unique___opaque_item_5183;
//   @ffi.Int8()
//   external int _unique___opaque_item_5184;
//   @ffi.Int8()
//   external int _unique___opaque_item_5185;
//   @ffi.Int8()
//   external int _unique___opaque_item_5186;
//   @ffi.Int8()
//   external int _unique___opaque_item_5187;
//   @ffi.Int8()
//   external int _unique___opaque_item_5188;
//   @ffi.Int8()
//   external int _unique___opaque_item_5189;
//   @ffi.Int8()
//   external int _unique___opaque_item_5190;
//   @ffi.Int8()
//   external int _unique___opaque_item_5191;
//   @ffi.Int8()
//   external int _unique___opaque_item_5192;
//   @ffi.Int8()
//   external int _unique___opaque_item_5193;
//   @ffi.Int8()
//   external int _unique___opaque_item_5194;
//   @ffi.Int8()
//   external int _unique___opaque_item_5195;
//   @ffi.Int8()
//   external int _unique___opaque_item_5196;
//   @ffi.Int8()
//   external int _unique___opaque_item_5197;
//   @ffi.Int8()
//   external int _unique___opaque_item_5198;
//   @ffi.Int8()
//   external int _unique___opaque_item_5199;
//   @ffi.Int8()
//   external int _unique___opaque_item_5200;
//   @ffi.Int8()
//   external int _unique___opaque_item_5201;
//   @ffi.Int8()
//   external int _unique___opaque_item_5202;
//   @ffi.Int8()
//   external int _unique___opaque_item_5203;
//   @ffi.Int8()
//   external int _unique___opaque_item_5204;
//   @ffi.Int8()
//   external int _unique___opaque_item_5205;
//   @ffi.Int8()
//   external int _unique___opaque_item_5206;
//   @ffi.Int8()
//   external int _unique___opaque_item_5207;
//   @ffi.Int8()
//   external int _unique___opaque_item_5208;
//   @ffi.Int8()
//   external int _unique___opaque_item_5209;
//   @ffi.Int8()
//   external int _unique___opaque_item_5210;
//   @ffi.Int8()
//   external int _unique___opaque_item_5211;
//   @ffi.Int8()
//   external int _unique___opaque_item_5212;
//   @ffi.Int8()
//   external int _unique___opaque_item_5213;
//   @ffi.Int8()
//   external int _unique___opaque_item_5214;
//   @ffi.Int8()
//   external int _unique___opaque_item_5215;
//   @ffi.Int8()
//   external int _unique___opaque_item_5216;
//   @ffi.Int8()
//   external int _unique___opaque_item_5217;
//   @ffi.Int8()
//   external int _unique___opaque_item_5218;
//   @ffi.Int8()
//   external int _unique___opaque_item_5219;
//   @ffi.Int8()
//   external int _unique___opaque_item_5220;
//   @ffi.Int8()
//   external int _unique___opaque_item_5221;
//   @ffi.Int8()
//   external int _unique___opaque_item_5222;
//   @ffi.Int8()
//   external int _unique___opaque_item_5223;
//   @ffi.Int8()
//   external int _unique___opaque_item_5224;
//   @ffi.Int8()
//   external int _unique___opaque_item_5225;
//   @ffi.Int8()
//   external int _unique___opaque_item_5226;
//   @ffi.Int8()
//   external int _unique___opaque_item_5227;
//   @ffi.Int8()
//   external int _unique___opaque_item_5228;
//   @ffi.Int8()
//   external int _unique___opaque_item_5229;
//   @ffi.Int8()
//   external int _unique___opaque_item_5230;
//   @ffi.Int8()
//   external int _unique___opaque_item_5231;
//   @ffi.Int8()
//   external int _unique___opaque_item_5232;
//   @ffi.Int8()
//   external int _unique___opaque_item_5233;
//   @ffi.Int8()
//   external int _unique___opaque_item_5234;
//   @ffi.Int8()
//   external int _unique___opaque_item_5235;
//   @ffi.Int8()
//   external int _unique___opaque_item_5236;
//   @ffi.Int8()
//   external int _unique___opaque_item_5237;
//   @ffi.Int8()
//   external int _unique___opaque_item_5238;
//   @ffi.Int8()
//   external int _unique___opaque_item_5239;
//   @ffi.Int8()
//   external int _unique___opaque_item_5240;
//   @ffi.Int8()
//   external int _unique___opaque_item_5241;
//   @ffi.Int8()
//   external int _unique___opaque_item_5242;
//   @ffi.Int8()
//   external int _unique___opaque_item_5243;
//   @ffi.Int8()
//   external int _unique___opaque_item_5244;
//   @ffi.Int8()
//   external int _unique___opaque_item_5245;
//   @ffi.Int8()
//   external int _unique___opaque_item_5246;
//   @ffi.Int8()
//   external int _unique___opaque_item_5247;
//   @ffi.Int8()
//   external int _unique___opaque_item_5248;
//   @ffi.Int8()
//   external int _unique___opaque_item_5249;
//   @ffi.Int8()
//   external int _unique___opaque_item_5250;
//   @ffi.Int8()
//   external int _unique___opaque_item_5251;
//   @ffi.Int8()
//   external int _unique___opaque_item_5252;
//   @ffi.Int8()
//   external int _unique___opaque_item_5253;
//   @ffi.Int8()
//   external int _unique___opaque_item_5254;
//   @ffi.Int8()
//   external int _unique___opaque_item_5255;
//   @ffi.Int8()
//   external int _unique___opaque_item_5256;
//   @ffi.Int8()
//   external int _unique___opaque_item_5257;
//   @ffi.Int8()
//   external int _unique___opaque_item_5258;
//   @ffi.Int8()
//   external int _unique___opaque_item_5259;
//   @ffi.Int8()
//   external int _unique___opaque_item_5260;
//   @ffi.Int8()
//   external int _unique___opaque_item_5261;
//   @ffi.Int8()
//   external int _unique___opaque_item_5262;
//   @ffi.Int8()
//   external int _unique___opaque_item_5263;
//   @ffi.Int8()
//   external int _unique___opaque_item_5264;
//   @ffi.Int8()
//   external int _unique___opaque_item_5265;
//   @ffi.Int8()
//   external int _unique___opaque_item_5266;
//   @ffi.Int8()
//   external int _unique___opaque_item_5267;
//   @ffi.Int8()
//   external int _unique___opaque_item_5268;
//   @ffi.Int8()
//   external int _unique___opaque_item_5269;
//   @ffi.Int8()
//   external int _unique___opaque_item_5270;
//   @ffi.Int8()
//   external int _unique___opaque_item_5271;
//   @ffi.Int8()
//   external int _unique___opaque_item_5272;
//   @ffi.Int8()
//   external int _unique___opaque_item_5273;
//   @ffi.Int8()
//   external int _unique___opaque_item_5274;
//   @ffi.Int8()
//   external int _unique___opaque_item_5275;
//   @ffi.Int8()
//   external int _unique___opaque_item_5276;
//   @ffi.Int8()
//   external int _unique___opaque_item_5277;
//   @ffi.Int8()
//   external int _unique___opaque_item_5278;
//   @ffi.Int8()
//   external int _unique___opaque_item_5279;
//   @ffi.Int8()
//   external int _unique___opaque_item_5280;
//   @ffi.Int8()
//   external int _unique___opaque_item_5281;
//   @ffi.Int8()
//   external int _unique___opaque_item_5282;
//   @ffi.Int8()
//   external int _unique___opaque_item_5283;
//   @ffi.Int8()
//   external int _unique___opaque_item_5284;
//   @ffi.Int8()
//   external int _unique___opaque_item_5285;
//   @ffi.Int8()
//   external int _unique___opaque_item_5286;
//   @ffi.Int8()
//   external int _unique___opaque_item_5287;
//   @ffi.Int8()
//   external int _unique___opaque_item_5288;
//   @ffi.Int8()
//   external int _unique___opaque_item_5289;
//   @ffi.Int8()
//   external int _unique___opaque_item_5290;
//   @ffi.Int8()
//   external int _unique___opaque_item_5291;
//   @ffi.Int8()
//   external int _unique___opaque_item_5292;
//   @ffi.Int8()
//   external int _unique___opaque_item_5293;
//   @ffi.Int8()
//   external int _unique___opaque_item_5294;
//   @ffi.Int8()
//   external int _unique___opaque_item_5295;
//   @ffi.Int8()
//   external int _unique___opaque_item_5296;
//   @ffi.Int8()
//   external int _unique___opaque_item_5297;
//   @ffi.Int8()
//   external int _unique___opaque_item_5298;
//   @ffi.Int8()
//   external int _unique___opaque_item_5299;
//   @ffi.Int8()
//   external int _unique___opaque_item_5300;
//   @ffi.Int8()
//   external int _unique___opaque_item_5301;
//   @ffi.Int8()
//   external int _unique___opaque_item_5302;
//   @ffi.Int8()
//   external int _unique___opaque_item_5303;
//   @ffi.Int8()
//   external int _unique___opaque_item_5304;
//   @ffi.Int8()
//   external int _unique___opaque_item_5305;
//   @ffi.Int8()
//   external int _unique___opaque_item_5306;
//   @ffi.Int8()
//   external int _unique___opaque_item_5307;
//   @ffi.Int8()
//   external int _unique___opaque_item_5308;
//   @ffi.Int8()
//   external int _unique___opaque_item_5309;
//   @ffi.Int8()
//   external int _unique___opaque_item_5310;
//   @ffi.Int8()
//   external int _unique___opaque_item_5311;
//   @ffi.Int8()
//   external int _unique___opaque_item_5312;
//   @ffi.Int8()
//   external int _unique___opaque_item_5313;
//   @ffi.Int8()
//   external int _unique___opaque_item_5314;
//   @ffi.Int8()
//   external int _unique___opaque_item_5315;
//   @ffi.Int8()
//   external int _unique___opaque_item_5316;
//   @ffi.Int8()
//   external int _unique___opaque_item_5317;
//   @ffi.Int8()
//   external int _unique___opaque_item_5318;
//   @ffi.Int8()
//   external int _unique___opaque_item_5319;
//   @ffi.Int8()
//   external int _unique___opaque_item_5320;
//   @ffi.Int8()
//   external int _unique___opaque_item_5321;
//   @ffi.Int8()
//   external int _unique___opaque_item_5322;
//   @ffi.Int8()
//   external int _unique___opaque_item_5323;
//   @ffi.Int8()
//   external int _unique___opaque_item_5324;
//   @ffi.Int8()
//   external int _unique___opaque_item_5325;
//   @ffi.Int8()
//   external int _unique___opaque_item_5326;
//   @ffi.Int8()
//   external int _unique___opaque_item_5327;
//   @ffi.Int8()
//   external int _unique___opaque_item_5328;
//   @ffi.Int8()
//   external int _unique___opaque_item_5329;
//   @ffi.Int8()
//   external int _unique___opaque_item_5330;
//   @ffi.Int8()
//   external int _unique___opaque_item_5331;
//   @ffi.Int8()
//   external int _unique___opaque_item_5332;
//   @ffi.Int8()
//   external int _unique___opaque_item_5333;
//   @ffi.Int8()
//   external int _unique___opaque_item_5334;
//   @ffi.Int8()
//   external int _unique___opaque_item_5335;
//   @ffi.Int8()
//   external int _unique___opaque_item_5336;
//   @ffi.Int8()
//   external int _unique___opaque_item_5337;
//   @ffi.Int8()
//   external int _unique___opaque_item_5338;
//   @ffi.Int8()
//   external int _unique___opaque_item_5339;
//   @ffi.Int8()
//   external int _unique___opaque_item_5340;
//   @ffi.Int8()
//   external int _unique___opaque_item_5341;
//   @ffi.Int8()
//   external int _unique___opaque_item_5342;
//   @ffi.Int8()
//   external int _unique___opaque_item_5343;
//   @ffi.Int8()
//   external int _unique___opaque_item_5344;
//   @ffi.Int8()
//   external int _unique___opaque_item_5345;
//   @ffi.Int8()
//   external int _unique___opaque_item_5346;
//   @ffi.Int8()
//   external int _unique___opaque_item_5347;
//   @ffi.Int8()
//   external int _unique___opaque_item_5348;
//   @ffi.Int8()
//   external int _unique___opaque_item_5349;
//   @ffi.Int8()
//   external int _unique___opaque_item_5350;
//   @ffi.Int8()
//   external int _unique___opaque_item_5351;
//   @ffi.Int8()
//   external int _unique___opaque_item_5352;
//   @ffi.Int8()
//   external int _unique___opaque_item_5353;
//   @ffi.Int8()
//   external int _unique___opaque_item_5354;
//   @ffi.Int8()
//   external int _unique___opaque_item_5355;
//   @ffi.Int8()
//   external int _unique___opaque_item_5356;
//   @ffi.Int8()
//   external int _unique___opaque_item_5357;
//   @ffi.Int8()
//   external int _unique___opaque_item_5358;
//   @ffi.Int8()
//   external int _unique___opaque_item_5359;
//   @ffi.Int8()
//   external int _unique___opaque_item_5360;
//   @ffi.Int8()
//   external int _unique___opaque_item_5361;
//   @ffi.Int8()
//   external int _unique___opaque_item_5362;
//   @ffi.Int8()
//   external int _unique___opaque_item_5363;
//   @ffi.Int8()
//   external int _unique___opaque_item_5364;
//   @ffi.Int8()
//   external int _unique___opaque_item_5365;
//   @ffi.Int8()
//   external int _unique___opaque_item_5366;
//   @ffi.Int8()
//   external int _unique___opaque_item_5367;
//   @ffi.Int8()
//   external int _unique___opaque_item_5368;
//   @ffi.Int8()
//   external int _unique___opaque_item_5369;
//   @ffi.Int8()
//   external int _unique___opaque_item_5370;
//   @ffi.Int8()
//   external int _unique___opaque_item_5371;
//   @ffi.Int8()
//   external int _unique___opaque_item_5372;
//   @ffi.Int8()
//   external int _unique___opaque_item_5373;
//   @ffi.Int8()
//   external int _unique___opaque_item_5374;
//   @ffi.Int8()
//   external int _unique___opaque_item_5375;
//   @ffi.Int8()
//   external int _unique___opaque_item_5376;
//   @ffi.Int8()
//   external int _unique___opaque_item_5377;
//   @ffi.Int8()
//   external int _unique___opaque_item_5378;
//   @ffi.Int8()
//   external int _unique___opaque_item_5379;
//   @ffi.Int8()
//   external int _unique___opaque_item_5380;
//   @ffi.Int8()
//   external int _unique___opaque_item_5381;
//   @ffi.Int8()
//   external int _unique___opaque_item_5382;
//   @ffi.Int8()
//   external int _unique___opaque_item_5383;
//   @ffi.Int8()
//   external int _unique___opaque_item_5384;
//   @ffi.Int8()
//   external int _unique___opaque_item_5385;
//   @ffi.Int8()
//   external int _unique___opaque_item_5386;
//   @ffi.Int8()
//   external int _unique___opaque_item_5387;
//   @ffi.Int8()
//   external int _unique___opaque_item_5388;
//   @ffi.Int8()
//   external int _unique___opaque_item_5389;
//   @ffi.Int8()
//   external int _unique___opaque_item_5390;
//   @ffi.Int8()
//   external int _unique___opaque_item_5391;
//   @ffi.Int8()
//   external int _unique___opaque_item_5392;
//   @ffi.Int8()
//   external int _unique___opaque_item_5393;
//   @ffi.Int8()
//   external int _unique___opaque_item_5394;
//   @ffi.Int8()
//   external int _unique___opaque_item_5395;
//   @ffi.Int8()
//   external int _unique___opaque_item_5396;
//   @ffi.Int8()
//   external int _unique___opaque_item_5397;
//   @ffi.Int8()
//   external int _unique___opaque_item_5398;
//   @ffi.Int8()
//   external int _unique___opaque_item_5399;
//   @ffi.Int8()
//   external int _unique___opaque_item_5400;
//   @ffi.Int8()
//   external int _unique___opaque_item_5401;
//   @ffi.Int8()
//   external int _unique___opaque_item_5402;
//   @ffi.Int8()
//   external int _unique___opaque_item_5403;
//   @ffi.Int8()
//   external int _unique___opaque_item_5404;
//   @ffi.Int8()
//   external int _unique___opaque_item_5405;
//   @ffi.Int8()
//   external int _unique___opaque_item_5406;
//   @ffi.Int8()
//   external int _unique___opaque_item_5407;
//   @ffi.Int8()
//   external int _unique___opaque_item_5408;
//   @ffi.Int8()
//   external int _unique___opaque_item_5409;
//   @ffi.Int8()
//   external int _unique___opaque_item_5410;
//   @ffi.Int8()
//   external int _unique___opaque_item_5411;
//   @ffi.Int8()
//   external int _unique___opaque_item_5412;
//   @ffi.Int8()
//   external int _unique___opaque_item_5413;
//   @ffi.Int8()
//   external int _unique___opaque_item_5414;
//   @ffi.Int8()
//   external int _unique___opaque_item_5415;
//   @ffi.Int8()
//   external int _unique___opaque_item_5416;
//   @ffi.Int8()
//   external int _unique___opaque_item_5417;
//   @ffi.Int8()
//   external int _unique___opaque_item_5418;
//   @ffi.Int8()
//   external int _unique___opaque_item_5419;
//   @ffi.Int8()
//   external int _unique___opaque_item_5420;
//   @ffi.Int8()
//   external int _unique___opaque_item_5421;
//   @ffi.Int8()
//   external int _unique___opaque_item_5422;
//   @ffi.Int8()
//   external int _unique___opaque_item_5423;
//   @ffi.Int8()
//   external int _unique___opaque_item_5424;
//   @ffi.Int8()
//   external int _unique___opaque_item_5425;
//   @ffi.Int8()
//   external int _unique___opaque_item_5426;
//   @ffi.Int8()
//   external int _unique___opaque_item_5427;
//   @ffi.Int8()
//   external int _unique___opaque_item_5428;
//   @ffi.Int8()
//   external int _unique___opaque_item_5429;
//   @ffi.Int8()
//   external int _unique___opaque_item_5430;
//   @ffi.Int8()
//   external int _unique___opaque_item_5431;
//   @ffi.Int8()
//   external int _unique___opaque_item_5432;
//   @ffi.Int8()
//   external int _unique___opaque_item_5433;
//   @ffi.Int8()
//   external int _unique___opaque_item_5434;
//   @ffi.Int8()
//   external int _unique___opaque_item_5435;
//   @ffi.Int8()
//   external int _unique___opaque_item_5436;
//   @ffi.Int8()
//   external int _unique___opaque_item_5437;
//   @ffi.Int8()
//   external int _unique___opaque_item_5438;
//   @ffi.Int8()
//   external int _unique___opaque_item_5439;
//   @ffi.Int8()
//   external int _unique___opaque_item_5440;
//   @ffi.Int8()
//   external int _unique___opaque_item_5441;
//   @ffi.Int8()
//   external int _unique___opaque_item_5442;
//   @ffi.Int8()
//   external int _unique___opaque_item_5443;
//   @ffi.Int8()
//   external int _unique___opaque_item_5444;
//   @ffi.Int8()
//   external int _unique___opaque_item_5445;
//   @ffi.Int8()
//   external int _unique___opaque_item_5446;
//   @ffi.Int8()
//   external int _unique___opaque_item_5447;
//   @ffi.Int8()
//   external int _unique___opaque_item_5448;
//   @ffi.Int8()
//   external int _unique___opaque_item_5449;
//   @ffi.Int8()
//   external int _unique___opaque_item_5450;
//   @ffi.Int8()
//   external int _unique___opaque_item_5451;
//   @ffi.Int8()
//   external int _unique___opaque_item_5452;
//   @ffi.Int8()
//   external int _unique___opaque_item_5453;
//   @ffi.Int8()
//   external int _unique___opaque_item_5454;
//   @ffi.Int8()
//   external int _unique___opaque_item_5455;
//   @ffi.Int8()
//   external int _unique___opaque_item_5456;
//   @ffi.Int8()
//   external int _unique___opaque_item_5457;
//   @ffi.Int8()
//   external int _unique___opaque_item_5458;
//   @ffi.Int8()
//   external int _unique___opaque_item_5459;
//   @ffi.Int8()
//   external int _unique___opaque_item_5460;
//   @ffi.Int8()
//   external int _unique___opaque_item_5461;
//   @ffi.Int8()
//   external int _unique___opaque_item_5462;
//   @ffi.Int8()
//   external int _unique___opaque_item_5463;
//   @ffi.Int8()
//   external int _unique___opaque_item_5464;
//   @ffi.Int8()
//   external int _unique___opaque_item_5465;
//   @ffi.Int8()
//   external int _unique___opaque_item_5466;
//   @ffi.Int8()
//   external int _unique___opaque_item_5467;
//   @ffi.Int8()
//   external int _unique___opaque_item_5468;
//   @ffi.Int8()
//   external int _unique___opaque_item_5469;
//   @ffi.Int8()
//   external int _unique___opaque_item_5470;
//   @ffi.Int8()
//   external int _unique___opaque_item_5471;
//   @ffi.Int8()
//   external int _unique___opaque_item_5472;
//   @ffi.Int8()
//   external int _unique___opaque_item_5473;
//   @ffi.Int8()
//   external int _unique___opaque_item_5474;
//   @ffi.Int8()
//   external int _unique___opaque_item_5475;
//   @ffi.Int8()
//   external int _unique___opaque_item_5476;
//   @ffi.Int8()
//   external int _unique___opaque_item_5477;
//   @ffi.Int8()
//   external int _unique___opaque_item_5478;
//   @ffi.Int8()
//   external int _unique___opaque_item_5479;
//   @ffi.Int8()
//   external int _unique___opaque_item_5480;
//   @ffi.Int8()
//   external int _unique___opaque_item_5481;
//   @ffi.Int8()
//   external int _unique___opaque_item_5482;
//   @ffi.Int8()
//   external int _unique___opaque_item_5483;
//   @ffi.Int8()
//   external int _unique___opaque_item_5484;
//   @ffi.Int8()
//   external int _unique___opaque_item_5485;
//   @ffi.Int8()
//   external int _unique___opaque_item_5486;
//   @ffi.Int8()
//   external int _unique___opaque_item_5487;
//   @ffi.Int8()
//   external int _unique___opaque_item_5488;
//   @ffi.Int8()
//   external int _unique___opaque_item_5489;
//   @ffi.Int8()
//   external int _unique___opaque_item_5490;
//   @ffi.Int8()
//   external int _unique___opaque_item_5491;
//   @ffi.Int8()
//   external int _unique___opaque_item_5492;
//   @ffi.Int8()
//   external int _unique___opaque_item_5493;
//   @ffi.Int8()
//   external int _unique___opaque_item_5494;
//   @ffi.Int8()
//   external int _unique___opaque_item_5495;
//   @ffi.Int8()
//   external int _unique___opaque_item_5496;
//   @ffi.Int8()
//   external int _unique___opaque_item_5497;
//   @ffi.Int8()
//   external int _unique___opaque_item_5498;
//   @ffi.Int8()
//   external int _unique___opaque_item_5499;
//   @ffi.Int8()
//   external int _unique___opaque_item_5500;
//   @ffi.Int8()
//   external int _unique___opaque_item_5501;
//   @ffi.Int8()
//   external int _unique___opaque_item_5502;
//   @ffi.Int8()
//   external int _unique___opaque_item_5503;
//   @ffi.Int8()
//   external int _unique___opaque_item_5504;
//   @ffi.Int8()
//   external int _unique___opaque_item_5505;
//   @ffi.Int8()
//   external int _unique___opaque_item_5506;
//   @ffi.Int8()
//   external int _unique___opaque_item_5507;
//   @ffi.Int8()
//   external int _unique___opaque_item_5508;
//   @ffi.Int8()
//   external int _unique___opaque_item_5509;
//   @ffi.Int8()
//   external int _unique___opaque_item_5510;
//   @ffi.Int8()
//   external int _unique___opaque_item_5511;
//   @ffi.Int8()
//   external int _unique___opaque_item_5512;
//   @ffi.Int8()
//   external int _unique___opaque_item_5513;
//   @ffi.Int8()
//   external int _unique___opaque_item_5514;
//   @ffi.Int8()
//   external int _unique___opaque_item_5515;
//   @ffi.Int8()
//   external int _unique___opaque_item_5516;
//   @ffi.Int8()
//   external int _unique___opaque_item_5517;
//   @ffi.Int8()
//   external int _unique___opaque_item_5518;
//   @ffi.Int8()
//   external int _unique___opaque_item_5519;
//   @ffi.Int8()
//   external int _unique___opaque_item_5520;
//   @ffi.Int8()
//   external int _unique___opaque_item_5521;
//   @ffi.Int8()
//   external int _unique___opaque_item_5522;
//   @ffi.Int8()
//   external int _unique___opaque_item_5523;
//   @ffi.Int8()
//   external int _unique___opaque_item_5524;
//   @ffi.Int8()
//   external int _unique___opaque_item_5525;
//   @ffi.Int8()
//   external int _unique___opaque_item_5526;
//   @ffi.Int8()
//   external int _unique___opaque_item_5527;
//   @ffi.Int8()
//   external int _unique___opaque_item_5528;
//   @ffi.Int8()
//   external int _unique___opaque_item_5529;
//   @ffi.Int8()
//   external int _unique___opaque_item_5530;
//   @ffi.Int8()
//   external int _unique___opaque_item_5531;
//   @ffi.Int8()
//   external int _unique___opaque_item_5532;
//   @ffi.Int8()
//   external int _unique___opaque_item_5533;
//   @ffi.Int8()
//   external int _unique___opaque_item_5534;
//   @ffi.Int8()
//   external int _unique___opaque_item_5535;
//   @ffi.Int8()
//   external int _unique___opaque_item_5536;
//   @ffi.Int8()
//   external int _unique___opaque_item_5537;
//   @ffi.Int8()
//   external int _unique___opaque_item_5538;
//   @ffi.Int8()
//   external int _unique___opaque_item_5539;
//   @ffi.Int8()
//   external int _unique___opaque_item_5540;
//   @ffi.Int8()
//   external int _unique___opaque_item_5541;
//   @ffi.Int8()
//   external int _unique___opaque_item_5542;
//   @ffi.Int8()
//   external int _unique___opaque_item_5543;
//   @ffi.Int8()
//   external int _unique___opaque_item_5544;
//   @ffi.Int8()
//   external int _unique___opaque_item_5545;
//   @ffi.Int8()
//   external int _unique___opaque_item_5546;
//   @ffi.Int8()
//   external int _unique___opaque_item_5547;
//   @ffi.Int8()
//   external int _unique___opaque_item_5548;
//   @ffi.Int8()
//   external int _unique___opaque_item_5549;
//   @ffi.Int8()
//   external int _unique___opaque_item_5550;
//   @ffi.Int8()
//   external int _unique___opaque_item_5551;
//   @ffi.Int8()
//   external int _unique___opaque_item_5552;
//   @ffi.Int8()
//   external int _unique___opaque_item_5553;
//   @ffi.Int8()
//   external int _unique___opaque_item_5554;
//   @ffi.Int8()
//   external int _unique___opaque_item_5555;
//   @ffi.Int8()
//   external int _unique___opaque_item_5556;
//   @ffi.Int8()
//   external int _unique___opaque_item_5557;
//   @ffi.Int8()
//   external int _unique___opaque_item_5558;
//   @ffi.Int8()
//   external int _unique___opaque_item_5559;
//   @ffi.Int8()
//   external int _unique___opaque_item_5560;
//   @ffi.Int8()
//   external int _unique___opaque_item_5561;
//   @ffi.Int8()
//   external int _unique___opaque_item_5562;
//   @ffi.Int8()
//   external int _unique___opaque_item_5563;
//   @ffi.Int8()
//   external int _unique___opaque_item_5564;
//   @ffi.Int8()
//   external int _unique___opaque_item_5565;
//   @ffi.Int8()
//   external int _unique___opaque_item_5566;
//   @ffi.Int8()
//   external int _unique___opaque_item_5567;
//   @ffi.Int8()
//   external int _unique___opaque_item_5568;
//   @ffi.Int8()
//   external int _unique___opaque_item_5569;
//   @ffi.Int8()
//   external int _unique___opaque_item_5570;
//   @ffi.Int8()
//   external int _unique___opaque_item_5571;
//   @ffi.Int8()
//   external int _unique___opaque_item_5572;
//   @ffi.Int8()
//   external int _unique___opaque_item_5573;
//   @ffi.Int8()
//   external int _unique___opaque_item_5574;
//   @ffi.Int8()
//   external int _unique___opaque_item_5575;
//   @ffi.Int8()
//   external int _unique___opaque_item_5576;
//   @ffi.Int8()
//   external int _unique___opaque_item_5577;
//   @ffi.Int8()
//   external int _unique___opaque_item_5578;
//   @ffi.Int8()
//   external int _unique___opaque_item_5579;
//   @ffi.Int8()
//   external int _unique___opaque_item_5580;
//   @ffi.Int8()
//   external int _unique___opaque_item_5581;
//   @ffi.Int8()
//   external int _unique___opaque_item_5582;
//   @ffi.Int8()
//   external int _unique___opaque_item_5583;
//   @ffi.Int8()
//   external int _unique___opaque_item_5584;
//   @ffi.Int8()
//   external int _unique___opaque_item_5585;
//   @ffi.Int8()
//   external int _unique___opaque_item_5586;
//   @ffi.Int8()
//   external int _unique___opaque_item_5587;
//   @ffi.Int8()
//   external int _unique___opaque_item_5588;
//   @ffi.Int8()
//   external int _unique___opaque_item_5589;
//   @ffi.Int8()
//   external int _unique___opaque_item_5590;
//   @ffi.Int8()
//   external int _unique___opaque_item_5591;
//   @ffi.Int8()
//   external int _unique___opaque_item_5592;
//   @ffi.Int8()
//   external int _unique___opaque_item_5593;
//   @ffi.Int8()
//   external int _unique___opaque_item_5594;
//   @ffi.Int8()
//   external int _unique___opaque_item_5595;
//   @ffi.Int8()
//   external int _unique___opaque_item_5596;
//   @ffi.Int8()
//   external int _unique___opaque_item_5597;
//   @ffi.Int8()
//   external int _unique___opaque_item_5598;
//   @ffi.Int8()
//   external int _unique___opaque_item_5599;
//   @ffi.Int8()
//   external int _unique___opaque_item_5600;
//   @ffi.Int8()
//   external int _unique___opaque_item_5601;
//   @ffi.Int8()
//   external int _unique___opaque_item_5602;
//   @ffi.Int8()
//   external int _unique___opaque_item_5603;
//   @ffi.Int8()
//   external int _unique___opaque_item_5604;
//   @ffi.Int8()
//   external int _unique___opaque_item_5605;
//   @ffi.Int8()
//   external int _unique___opaque_item_5606;
//   @ffi.Int8()
//   external int _unique___opaque_item_5607;
//   @ffi.Int8()
//   external int _unique___opaque_item_5608;
//   @ffi.Int8()
//   external int _unique___opaque_item_5609;
//   @ffi.Int8()
//   external int _unique___opaque_item_5610;
//   @ffi.Int8()
//   external int _unique___opaque_item_5611;
//   @ffi.Int8()
//   external int _unique___opaque_item_5612;
//   @ffi.Int8()
//   external int _unique___opaque_item_5613;
//   @ffi.Int8()
//   external int _unique___opaque_item_5614;
//   @ffi.Int8()
//   external int _unique___opaque_item_5615;
//   @ffi.Int8()
//   external int _unique___opaque_item_5616;
//   @ffi.Int8()
//   external int _unique___opaque_item_5617;
//   @ffi.Int8()
//   external int _unique___opaque_item_5618;
//   @ffi.Int8()
//   external int _unique___opaque_item_5619;
//   @ffi.Int8()
//   external int _unique___opaque_item_5620;
//   @ffi.Int8()
//   external int _unique___opaque_item_5621;
//   @ffi.Int8()
//   external int _unique___opaque_item_5622;
//   @ffi.Int8()
//   external int _unique___opaque_item_5623;
//   @ffi.Int8()
//   external int _unique___opaque_item_5624;
//   @ffi.Int8()
//   external int _unique___opaque_item_5625;
//   @ffi.Int8()
//   external int _unique___opaque_item_5626;
//   @ffi.Int8()
//   external int _unique___opaque_item_5627;
//   @ffi.Int8()
//   external int _unique___opaque_item_5628;
//   @ffi.Int8()
//   external int _unique___opaque_item_5629;
//   @ffi.Int8()
//   external int _unique___opaque_item_5630;
//   @ffi.Int8()
//   external int _unique___opaque_item_5631;
//   @ffi.Int8()
//   external int _unique___opaque_item_5632;
//   @ffi.Int8()
//   external int _unique___opaque_item_5633;
//   @ffi.Int8()
//   external int _unique___opaque_item_5634;
//   @ffi.Int8()
//   external int _unique___opaque_item_5635;
//   @ffi.Int8()
//   external int _unique___opaque_item_5636;
//   @ffi.Int8()
//   external int _unique___opaque_item_5637;
//   @ffi.Int8()
//   external int _unique___opaque_item_5638;
//   @ffi.Int8()
//   external int _unique___opaque_item_5639;
//   @ffi.Int8()
//   external int _unique___opaque_item_5640;
//   @ffi.Int8()
//   external int _unique___opaque_item_5641;
//   @ffi.Int8()
//   external int _unique___opaque_item_5642;
//   @ffi.Int8()
//   external int _unique___opaque_item_5643;
//   @ffi.Int8()
//   external int _unique___opaque_item_5644;
//   @ffi.Int8()
//   external int _unique___opaque_item_5645;
//   @ffi.Int8()
//   external int _unique___opaque_item_5646;
//   @ffi.Int8()
//   external int _unique___opaque_item_5647;
//   @ffi.Int8()
//   external int _unique___opaque_item_5648;
//   @ffi.Int8()
//   external int _unique___opaque_item_5649;
//   @ffi.Int8()
//   external int _unique___opaque_item_5650;
//   @ffi.Int8()
//   external int _unique___opaque_item_5651;
//   @ffi.Int8()
//   external int _unique___opaque_item_5652;
//   @ffi.Int8()
//   external int _unique___opaque_item_5653;
//   @ffi.Int8()
//   external int _unique___opaque_item_5654;
//   @ffi.Int8()
//   external int _unique___opaque_item_5655;
//   @ffi.Int8()
//   external int _unique___opaque_item_5656;
//   @ffi.Int8()
//   external int _unique___opaque_item_5657;
//   @ffi.Int8()
//   external int _unique___opaque_item_5658;
//   @ffi.Int8()
//   external int _unique___opaque_item_5659;
//   @ffi.Int8()
//   external int _unique___opaque_item_5660;
//   @ffi.Int8()
//   external int _unique___opaque_item_5661;
//   @ffi.Int8()
//   external int _unique___opaque_item_5662;
//   @ffi.Int8()
//   external int _unique___opaque_item_5663;
//   @ffi.Int8()
//   external int _unique___opaque_item_5664;
//   @ffi.Int8()
//   external int _unique___opaque_item_5665;
//   @ffi.Int8()
//   external int _unique___opaque_item_5666;
//   @ffi.Int8()
//   external int _unique___opaque_item_5667;
//   @ffi.Int8()
//   external int _unique___opaque_item_5668;
//   @ffi.Int8()
//   external int _unique___opaque_item_5669;
//   @ffi.Int8()
//   external int _unique___opaque_item_5670;
//   @ffi.Int8()
//   external int _unique___opaque_item_5671;
//   @ffi.Int8()
//   external int _unique___opaque_item_5672;
//   @ffi.Int8()
//   external int _unique___opaque_item_5673;
//   @ffi.Int8()
//   external int _unique___opaque_item_5674;
//   @ffi.Int8()
//   external int _unique___opaque_item_5675;
//   @ffi.Int8()
//   external int _unique___opaque_item_5676;
//   @ffi.Int8()
//   external int _unique___opaque_item_5677;
//   @ffi.Int8()
//   external int _unique___opaque_item_5678;
//   @ffi.Int8()
//   external int _unique___opaque_item_5679;
//   @ffi.Int8()
//   external int _unique___opaque_item_5680;
//   @ffi.Int8()
//   external int _unique___opaque_item_5681;
//   @ffi.Int8()
//   external int _unique___opaque_item_5682;
//   @ffi.Int8()
//   external int _unique___opaque_item_5683;
//   @ffi.Int8()
//   external int _unique___opaque_item_5684;
//   @ffi.Int8()
//   external int _unique___opaque_item_5685;
//   @ffi.Int8()
//   external int _unique___opaque_item_5686;
//   @ffi.Int8()
//   external int _unique___opaque_item_5687;
//   @ffi.Int8()
//   external int _unique___opaque_item_5688;
//   @ffi.Int8()
//   external int _unique___opaque_item_5689;
//   @ffi.Int8()
//   external int _unique___opaque_item_5690;
//   @ffi.Int8()
//   external int _unique___opaque_item_5691;
//   @ffi.Int8()
//   external int _unique___opaque_item_5692;
//   @ffi.Int8()
//   external int _unique___opaque_item_5693;
//   @ffi.Int8()
//   external int _unique___opaque_item_5694;
//   @ffi.Int8()
//   external int _unique___opaque_item_5695;
//   @ffi.Int8()
//   external int _unique___opaque_item_5696;
//   @ffi.Int8()
//   external int _unique___opaque_item_5697;
//   @ffi.Int8()
//   external int _unique___opaque_item_5698;
//   @ffi.Int8()
//   external int _unique___opaque_item_5699;
//   @ffi.Int8()
//   external int _unique___opaque_item_5700;
//   @ffi.Int8()
//   external int _unique___opaque_item_5701;
//   @ffi.Int8()
//   external int _unique___opaque_item_5702;
//   @ffi.Int8()
//   external int _unique___opaque_item_5703;
//   @ffi.Int8()
//   external int _unique___opaque_item_5704;
//   @ffi.Int8()
//   external int _unique___opaque_item_5705;
//   @ffi.Int8()
//   external int _unique___opaque_item_5706;
//   @ffi.Int8()
//   external int _unique___opaque_item_5707;
//   @ffi.Int8()
//   external int _unique___opaque_item_5708;
//   @ffi.Int8()
//   external int _unique___opaque_item_5709;
//   @ffi.Int8()
//   external int _unique___opaque_item_5710;
//   @ffi.Int8()
//   external int _unique___opaque_item_5711;
//   @ffi.Int8()
//   external int _unique___opaque_item_5712;
//   @ffi.Int8()
//   external int _unique___opaque_item_5713;
//   @ffi.Int8()
//   external int _unique___opaque_item_5714;
//   @ffi.Int8()
//   external int _unique___opaque_item_5715;
//   @ffi.Int8()
//   external int _unique___opaque_item_5716;
//   @ffi.Int8()
//   external int _unique___opaque_item_5717;
//   @ffi.Int8()
//   external int _unique___opaque_item_5718;
//   @ffi.Int8()
//   external int _unique___opaque_item_5719;
//   @ffi.Int8()
//   external int _unique___opaque_item_5720;
//   @ffi.Int8()
//   external int _unique___opaque_item_5721;
//   @ffi.Int8()
//   external int _unique___opaque_item_5722;
//   @ffi.Int8()
//   external int _unique___opaque_item_5723;
//   @ffi.Int8()
//   external int _unique___opaque_item_5724;
//   @ffi.Int8()
//   external int _unique___opaque_item_5725;
//   @ffi.Int8()
//   external int _unique___opaque_item_5726;
//   @ffi.Int8()
//   external int _unique___opaque_item_5727;
//   @ffi.Int8()
//   external int _unique___opaque_item_5728;
//   @ffi.Int8()
//   external int _unique___opaque_item_5729;
//   @ffi.Int8()
//   external int _unique___opaque_item_5730;
//   @ffi.Int8()
//   external int _unique___opaque_item_5731;
//   @ffi.Int8()
//   external int _unique___opaque_item_5732;
//   @ffi.Int8()
//   external int _unique___opaque_item_5733;
//   @ffi.Int8()
//   external int _unique___opaque_item_5734;
//   @ffi.Int8()
//   external int _unique___opaque_item_5735;
//   @ffi.Int8()
//   external int _unique___opaque_item_5736;
//   @ffi.Int8()
//   external int _unique___opaque_item_5737;
//   @ffi.Int8()
//   external int _unique___opaque_item_5738;
//   @ffi.Int8()
//   external int _unique___opaque_item_5739;
//   @ffi.Int8()
//   external int _unique___opaque_item_5740;
//   @ffi.Int8()
//   external int _unique___opaque_item_5741;
//   @ffi.Int8()
//   external int _unique___opaque_item_5742;
//   @ffi.Int8()
//   external int _unique___opaque_item_5743;
//   @ffi.Int8()
//   external int _unique___opaque_item_5744;
//   @ffi.Int8()
//   external int _unique___opaque_item_5745;
//   @ffi.Int8()
//   external int _unique___opaque_item_5746;
//   @ffi.Int8()
//   external int _unique___opaque_item_5747;
//   @ffi.Int8()
//   external int _unique___opaque_item_5748;
//   @ffi.Int8()
//   external int _unique___opaque_item_5749;
//   @ffi.Int8()
//   external int _unique___opaque_item_5750;
//   @ffi.Int8()
//   external int _unique___opaque_item_5751;
//   @ffi.Int8()
//   external int _unique___opaque_item_5752;
//   @ffi.Int8()
//   external int _unique___opaque_item_5753;
//   @ffi.Int8()
//   external int _unique___opaque_item_5754;
//   @ffi.Int8()
//   external int _unique___opaque_item_5755;
//   @ffi.Int8()
//   external int _unique___opaque_item_5756;
//   @ffi.Int8()
//   external int _unique___opaque_item_5757;
//   @ffi.Int8()
//   external int _unique___opaque_item_5758;
//   @ffi.Int8()
//   external int _unique___opaque_item_5759;
//   @ffi.Int8()
//   external int _unique___opaque_item_5760;
//   @ffi.Int8()
//   external int _unique___opaque_item_5761;
//   @ffi.Int8()
//   external int _unique___opaque_item_5762;
//   @ffi.Int8()
//   external int _unique___opaque_item_5763;
//   @ffi.Int8()
//   external int _unique___opaque_item_5764;
//   @ffi.Int8()
//   external int _unique___opaque_item_5765;
//   @ffi.Int8()
//   external int _unique___opaque_item_5766;
//   @ffi.Int8()
//   external int _unique___opaque_item_5767;
//   @ffi.Int8()
//   external int _unique___opaque_item_5768;
//   @ffi.Int8()
//   external int _unique___opaque_item_5769;
//   @ffi.Int8()
//   external int _unique___opaque_item_5770;
//   @ffi.Int8()
//   external int _unique___opaque_item_5771;
//   @ffi.Int8()
//   external int _unique___opaque_item_5772;
//   @ffi.Int8()
//   external int _unique___opaque_item_5773;
//   @ffi.Int8()
//   external int _unique___opaque_item_5774;
//   @ffi.Int8()
//   external int _unique___opaque_item_5775;
//   @ffi.Int8()
//   external int _unique___opaque_item_5776;
//   @ffi.Int8()
//   external int _unique___opaque_item_5777;
//   @ffi.Int8()
//   external int _unique___opaque_item_5778;
//   @ffi.Int8()
//   external int _unique___opaque_item_5779;
//   @ffi.Int8()
//   external int _unique___opaque_item_5780;
//   @ffi.Int8()
//   external int _unique___opaque_item_5781;
//   @ffi.Int8()
//   external int _unique___opaque_item_5782;
//   @ffi.Int8()
//   external int _unique___opaque_item_5783;
//   @ffi.Int8()
//   external int _unique___opaque_item_5784;
//   @ffi.Int8()
//   external int _unique___opaque_item_5785;
//   @ffi.Int8()
//   external int _unique___opaque_item_5786;
//   @ffi.Int8()
//   external int _unique___opaque_item_5787;
//   @ffi.Int8()
//   external int _unique___opaque_item_5788;
//   @ffi.Int8()
//   external int _unique___opaque_item_5789;
//   @ffi.Int8()
//   external int _unique___opaque_item_5790;
//   @ffi.Int8()
//   external int _unique___opaque_item_5791;
//   @ffi.Int8()
//   external int _unique___opaque_item_5792;
//   @ffi.Int8()
//   external int _unique___opaque_item_5793;
//   @ffi.Int8()
//   external int _unique___opaque_item_5794;
//   @ffi.Int8()
//   external int _unique___opaque_item_5795;
//   @ffi.Int8()
//   external int _unique___opaque_item_5796;
//   @ffi.Int8()
//   external int _unique___opaque_item_5797;
//   @ffi.Int8()
//   external int _unique___opaque_item_5798;
//   @ffi.Int8()
//   external int _unique___opaque_item_5799;
//   @ffi.Int8()
//   external int _unique___opaque_item_5800;
//   @ffi.Int8()
//   external int _unique___opaque_item_5801;
//   @ffi.Int8()
//   external int _unique___opaque_item_5802;
//   @ffi.Int8()
//   external int _unique___opaque_item_5803;
//   @ffi.Int8()
//   external int _unique___opaque_item_5804;
//   @ffi.Int8()
//   external int _unique___opaque_item_5805;
//   @ffi.Int8()
//   external int _unique___opaque_item_5806;
//   @ffi.Int8()
//   external int _unique___opaque_item_5807;
//   @ffi.Int8()
//   external int _unique___opaque_item_5808;
//   @ffi.Int8()
//   external int _unique___opaque_item_5809;
//   @ffi.Int8()
//   external int _unique___opaque_item_5810;
//   @ffi.Int8()
//   external int _unique___opaque_item_5811;
//   @ffi.Int8()
//   external int _unique___opaque_item_5812;
//   @ffi.Int8()
//   external int _unique___opaque_item_5813;
//   @ffi.Int8()
//   external int _unique___opaque_item_5814;
//   @ffi.Int8()
//   external int _unique___opaque_item_5815;
//   @ffi.Int8()
//   external int _unique___opaque_item_5816;
//   @ffi.Int8()
//   external int _unique___opaque_item_5817;
//   @ffi.Int8()
//   external int _unique___opaque_item_5818;
//   @ffi.Int8()
//   external int _unique___opaque_item_5819;
//   @ffi.Int8()
//   external int _unique___opaque_item_5820;
//   @ffi.Int8()
//   external int _unique___opaque_item_5821;
//   @ffi.Int8()
//   external int _unique___opaque_item_5822;
//   @ffi.Int8()
//   external int _unique___opaque_item_5823;
//   @ffi.Int8()
//   external int _unique___opaque_item_5824;
//   @ffi.Int8()
//   external int _unique___opaque_item_5825;
//   @ffi.Int8()
//   external int _unique___opaque_item_5826;
//   @ffi.Int8()
//   external int _unique___opaque_item_5827;
//   @ffi.Int8()
//   external int _unique___opaque_item_5828;
//   @ffi.Int8()
//   external int _unique___opaque_item_5829;
//   @ffi.Int8()
//   external int _unique___opaque_item_5830;
//   @ffi.Int8()
//   external int _unique___opaque_item_5831;
//   @ffi.Int8()
//   external int _unique___opaque_item_5832;
//   @ffi.Int8()
//   external int _unique___opaque_item_5833;
//   @ffi.Int8()
//   external int _unique___opaque_item_5834;
//   @ffi.Int8()
//   external int _unique___opaque_item_5835;
//   @ffi.Int8()
//   external int _unique___opaque_item_5836;
//   @ffi.Int8()
//   external int _unique___opaque_item_5837;
//   @ffi.Int8()
//   external int _unique___opaque_item_5838;
//   @ffi.Int8()
//   external int _unique___opaque_item_5839;
//   @ffi.Int8()
//   external int _unique___opaque_item_5840;
//   @ffi.Int8()
//   external int _unique___opaque_item_5841;
//   @ffi.Int8()
//   external int _unique___opaque_item_5842;
//   @ffi.Int8()
//   external int _unique___opaque_item_5843;
//   @ffi.Int8()
//   external int _unique___opaque_item_5844;
//   @ffi.Int8()
//   external int _unique___opaque_item_5845;
//   @ffi.Int8()
//   external int _unique___opaque_item_5846;
//   @ffi.Int8()
//   external int _unique___opaque_item_5847;
//   @ffi.Int8()
//   external int _unique___opaque_item_5848;
//   @ffi.Int8()
//   external int _unique___opaque_item_5849;
//   @ffi.Int8()
//   external int _unique___opaque_item_5850;
//   @ffi.Int8()
//   external int _unique___opaque_item_5851;
//   @ffi.Int8()
//   external int _unique___opaque_item_5852;
//   @ffi.Int8()
//   external int _unique___opaque_item_5853;
//   @ffi.Int8()
//   external int _unique___opaque_item_5854;
//   @ffi.Int8()
//   external int _unique___opaque_item_5855;
//   @ffi.Int8()
//   external int _unique___opaque_item_5856;
//   @ffi.Int8()
//   external int _unique___opaque_item_5857;
//   @ffi.Int8()
//   external int _unique___opaque_item_5858;
//   @ffi.Int8()
//   external int _unique___opaque_item_5859;
//   @ffi.Int8()
//   external int _unique___opaque_item_5860;
//   @ffi.Int8()
//   external int _unique___opaque_item_5861;
//   @ffi.Int8()
//   external int _unique___opaque_item_5862;
//   @ffi.Int8()
//   external int _unique___opaque_item_5863;
//   @ffi.Int8()
//   external int _unique___opaque_item_5864;
//   @ffi.Int8()
//   external int _unique___opaque_item_5865;
//   @ffi.Int8()
//   external int _unique___opaque_item_5866;
//   @ffi.Int8()
//   external int _unique___opaque_item_5867;
//   @ffi.Int8()
//   external int _unique___opaque_item_5868;
//   @ffi.Int8()
//   external int _unique___opaque_item_5869;
//   @ffi.Int8()
//   external int _unique___opaque_item_5870;
//   @ffi.Int8()
//   external int _unique___opaque_item_5871;
//   @ffi.Int8()
//   external int _unique___opaque_item_5872;
//   @ffi.Int8()
//   external int _unique___opaque_item_5873;
//   @ffi.Int8()
//   external int _unique___opaque_item_5874;
//   @ffi.Int8()
//   external int _unique___opaque_item_5875;
//   @ffi.Int8()
//   external int _unique___opaque_item_5876;
//   @ffi.Int8()
//   external int _unique___opaque_item_5877;
//   @ffi.Int8()
//   external int _unique___opaque_item_5878;
//   @ffi.Int8()
//   external int _unique___opaque_item_5879;
//   @ffi.Int8()
//   external int _unique___opaque_item_5880;
//   @ffi.Int8()
//   external int _unique___opaque_item_5881;
//   @ffi.Int8()
//   external int _unique___opaque_item_5882;
//   @ffi.Int8()
//   external int _unique___opaque_item_5883;
//   @ffi.Int8()
//   external int _unique___opaque_item_5884;
//   @ffi.Int8()
//   external int _unique___opaque_item_5885;
//   @ffi.Int8()
//   external int _unique___opaque_item_5886;
//   @ffi.Int8()
//   external int _unique___opaque_item_5887;
//   @ffi.Int8()
//   external int _unique___opaque_item_5888;
//   @ffi.Int8()
//   external int _unique___opaque_item_5889;
//   @ffi.Int8()
//   external int _unique___opaque_item_5890;
//   @ffi.Int8()
//   external int _unique___opaque_item_5891;
//   @ffi.Int8()
//   external int _unique___opaque_item_5892;
//   @ffi.Int8()
//   external int _unique___opaque_item_5893;
//   @ffi.Int8()
//   external int _unique___opaque_item_5894;
//   @ffi.Int8()
//   external int _unique___opaque_item_5895;
//   @ffi.Int8()
//   external int _unique___opaque_item_5896;
//   @ffi.Int8()
//   external int _unique___opaque_item_5897;
//   @ffi.Int8()
//   external int _unique___opaque_item_5898;
//   @ffi.Int8()
//   external int _unique___opaque_item_5899;
//   @ffi.Int8()
//   external int _unique___opaque_item_5900;
//   @ffi.Int8()
//   external int _unique___opaque_item_5901;
//   @ffi.Int8()
//   external int _unique___opaque_item_5902;
//   @ffi.Int8()
//   external int _unique___opaque_item_5903;
//   @ffi.Int8()
//   external int _unique___opaque_item_5904;
//   @ffi.Int8()
//   external int _unique___opaque_item_5905;
//   @ffi.Int8()
//   external int _unique___opaque_item_5906;
//   @ffi.Int8()
//   external int _unique___opaque_item_5907;
//   @ffi.Int8()
//   external int _unique___opaque_item_5908;
//   @ffi.Int8()
//   external int _unique___opaque_item_5909;
//   @ffi.Int8()
//   external int _unique___opaque_item_5910;
//   @ffi.Int8()
//   external int _unique___opaque_item_5911;
//   @ffi.Int8()
//   external int _unique___opaque_item_5912;
//   @ffi.Int8()
//   external int _unique___opaque_item_5913;
//   @ffi.Int8()
//   external int _unique___opaque_item_5914;
//   @ffi.Int8()
//   external int _unique___opaque_item_5915;
//   @ffi.Int8()
//   external int _unique___opaque_item_5916;
//   @ffi.Int8()
//   external int _unique___opaque_item_5917;
//   @ffi.Int8()
//   external int _unique___opaque_item_5918;
//   @ffi.Int8()
//   external int _unique___opaque_item_5919;
//   @ffi.Int8()
//   external int _unique___opaque_item_5920;
//   @ffi.Int8()
//   external int _unique___opaque_item_5921;
//   @ffi.Int8()
//   external int _unique___opaque_item_5922;
//   @ffi.Int8()
//   external int _unique___opaque_item_5923;
//   @ffi.Int8()
//   external int _unique___opaque_item_5924;
//   @ffi.Int8()
//   external int _unique___opaque_item_5925;
//   @ffi.Int8()
//   external int _unique___opaque_item_5926;
//   @ffi.Int8()
//   external int _unique___opaque_item_5927;
//   @ffi.Int8()
//   external int _unique___opaque_item_5928;
//   @ffi.Int8()
//   external int _unique___opaque_item_5929;
//   @ffi.Int8()
//   external int _unique___opaque_item_5930;
//   @ffi.Int8()
//   external int _unique___opaque_item_5931;
//   @ffi.Int8()
//   external int _unique___opaque_item_5932;
//   @ffi.Int8()
//   external int _unique___opaque_item_5933;
//   @ffi.Int8()
//   external int _unique___opaque_item_5934;
//   @ffi.Int8()
//   external int _unique___opaque_item_5935;
//   @ffi.Int8()
//   external int _unique___opaque_item_5936;
//   @ffi.Int8()
//   external int _unique___opaque_item_5937;
//   @ffi.Int8()
//   external int _unique___opaque_item_5938;
//   @ffi.Int8()
//   external int _unique___opaque_item_5939;
//   @ffi.Int8()
//   external int _unique___opaque_item_5940;
//   @ffi.Int8()
//   external int _unique___opaque_item_5941;
//   @ffi.Int8()
//   external int _unique___opaque_item_5942;
//   @ffi.Int8()
//   external int _unique___opaque_item_5943;
//   @ffi.Int8()
//   external int _unique___opaque_item_5944;
//   @ffi.Int8()
//   external int _unique___opaque_item_5945;
//   @ffi.Int8()
//   external int _unique___opaque_item_5946;
//   @ffi.Int8()
//   external int _unique___opaque_item_5947;
//   @ffi.Int8()
//   external int _unique___opaque_item_5948;
//   @ffi.Int8()
//   external int _unique___opaque_item_5949;
//   @ffi.Int8()
//   external int _unique___opaque_item_5950;
//   @ffi.Int8()
//   external int _unique___opaque_item_5951;
//   @ffi.Int8()
//   external int _unique___opaque_item_5952;
//   @ffi.Int8()
//   external int _unique___opaque_item_5953;
//   @ffi.Int8()
//   external int _unique___opaque_item_5954;
//   @ffi.Int8()
//   external int _unique___opaque_item_5955;
//   @ffi.Int8()
//   external int _unique___opaque_item_5956;
//   @ffi.Int8()
//   external int _unique___opaque_item_5957;
//   @ffi.Int8()
//   external int _unique___opaque_item_5958;
//   @ffi.Int8()
//   external int _unique___opaque_item_5959;
//   @ffi.Int8()
//   external int _unique___opaque_item_5960;
//   @ffi.Int8()
//   external int _unique___opaque_item_5961;
//   @ffi.Int8()
//   external int _unique___opaque_item_5962;
//   @ffi.Int8()
//   external int _unique___opaque_item_5963;
//   @ffi.Int8()
//   external int _unique___opaque_item_5964;
//   @ffi.Int8()
//   external int _unique___opaque_item_5965;
//   @ffi.Int8()
//   external int _unique___opaque_item_5966;
//   @ffi.Int8()
//   external int _unique___opaque_item_5967;
//   @ffi.Int8()
//   external int _unique___opaque_item_5968;
//   @ffi.Int8()
//   external int _unique___opaque_item_5969;
//   @ffi.Int8()
//   external int _unique___opaque_item_5970;
//   @ffi.Int8()
//   external int _unique___opaque_item_5971;
//   @ffi.Int8()
//   external int _unique___opaque_item_5972;
//   @ffi.Int8()
//   external int _unique___opaque_item_5973;
//   @ffi.Int8()
//   external int _unique___opaque_item_5974;
//   @ffi.Int8()
//   external int _unique___opaque_item_5975;
//   @ffi.Int8()
//   external int _unique___opaque_item_5976;
//   @ffi.Int8()
//   external int _unique___opaque_item_5977;
//   @ffi.Int8()
//   external int _unique___opaque_item_5978;
//   @ffi.Int8()
//   external int _unique___opaque_item_5979;
//   @ffi.Int8()
//   external int _unique___opaque_item_5980;
//   @ffi.Int8()
//   external int _unique___opaque_item_5981;
//   @ffi.Int8()
//   external int _unique___opaque_item_5982;
//   @ffi.Int8()
//   external int _unique___opaque_item_5983;
//   @ffi.Int8()
//   external int _unique___opaque_item_5984;
//   @ffi.Int8()
//   external int _unique___opaque_item_5985;
//   @ffi.Int8()
//   external int _unique___opaque_item_5986;
//   @ffi.Int8()
//   external int _unique___opaque_item_5987;
//   @ffi.Int8()
//   external int _unique___opaque_item_5988;
//   @ffi.Int8()
//   external int _unique___opaque_item_5989;
//   @ffi.Int8()
//   external int _unique___opaque_item_5990;
//   @ffi.Int8()
//   external int _unique___opaque_item_5991;
//   @ffi.Int8()
//   external int _unique___opaque_item_5992;
//   @ffi.Int8()
//   external int _unique___opaque_item_5993;
//   @ffi.Int8()
//   external int _unique___opaque_item_5994;
//   @ffi.Int8()
//   external int _unique___opaque_item_5995;
//   @ffi.Int8()
//   external int _unique___opaque_item_5996;
//   @ffi.Int8()
//   external int _unique___opaque_item_5997;
//   @ffi.Int8()
//   external int _unique___opaque_item_5998;
//   @ffi.Int8()
//   external int _unique___opaque_item_5999;
//   @ffi.Int8()
//   external int _unique___opaque_item_6000;
//   @ffi.Int8()
//   external int _unique___opaque_item_6001;
//   @ffi.Int8()
//   external int _unique___opaque_item_6002;
//   @ffi.Int8()
//   external int _unique___opaque_item_6003;
//   @ffi.Int8()
//   external int _unique___opaque_item_6004;
//   @ffi.Int8()
//   external int _unique___opaque_item_6005;
//   @ffi.Int8()
//   external int _unique___opaque_item_6006;
//   @ffi.Int8()
//   external int _unique___opaque_item_6007;
//   @ffi.Int8()
//   external int _unique___opaque_item_6008;
//   @ffi.Int8()
//   external int _unique___opaque_item_6009;
//   @ffi.Int8()
//   external int _unique___opaque_item_6010;
//   @ffi.Int8()
//   external int _unique___opaque_item_6011;
//   @ffi.Int8()
//   external int _unique___opaque_item_6012;
//   @ffi.Int8()
//   external int _unique___opaque_item_6013;
//   @ffi.Int8()
//   external int _unique___opaque_item_6014;
//   @ffi.Int8()
//   external int _unique___opaque_item_6015;
//   @ffi.Int8()
//   external int _unique___opaque_item_6016;
//   @ffi.Int8()
//   external int _unique___opaque_item_6017;
//   @ffi.Int8()
//   external int _unique___opaque_item_6018;
//   @ffi.Int8()
//   external int _unique___opaque_item_6019;
//   @ffi.Int8()
//   external int _unique___opaque_item_6020;
//   @ffi.Int8()
//   external int _unique___opaque_item_6021;
//   @ffi.Int8()
//   external int _unique___opaque_item_6022;
//   @ffi.Int8()
//   external int _unique___opaque_item_6023;
//   @ffi.Int8()
//   external int _unique___opaque_item_6024;
//   @ffi.Int8()
//   external int _unique___opaque_item_6025;
//   @ffi.Int8()
//   external int _unique___opaque_item_6026;
//   @ffi.Int8()
//   external int _unique___opaque_item_6027;
//   @ffi.Int8()
//   external int _unique___opaque_item_6028;
//   @ffi.Int8()
//   external int _unique___opaque_item_6029;
//   @ffi.Int8()
//   external int _unique___opaque_item_6030;
//   @ffi.Int8()
//   external int _unique___opaque_item_6031;
//   @ffi.Int8()
//   external int _unique___opaque_item_6032;
//   @ffi.Int8()
//   external int _unique___opaque_item_6033;
//   @ffi.Int8()
//   external int _unique___opaque_item_6034;
//   @ffi.Int8()
//   external int _unique___opaque_item_6035;
//   @ffi.Int8()
//   external int _unique___opaque_item_6036;
//   @ffi.Int8()
//   external int _unique___opaque_item_6037;
//   @ffi.Int8()
//   external int _unique___opaque_item_6038;
//   @ffi.Int8()
//   external int _unique___opaque_item_6039;
//   @ffi.Int8()
//   external int _unique___opaque_item_6040;
//   @ffi.Int8()
//   external int _unique___opaque_item_6041;
//   @ffi.Int8()
//   external int _unique___opaque_item_6042;
//   @ffi.Int8()
//   external int _unique___opaque_item_6043;
//   @ffi.Int8()
//   external int _unique___opaque_item_6044;
//   @ffi.Int8()
//   external int _unique___opaque_item_6045;
//   @ffi.Int8()
//   external int _unique___opaque_item_6046;
//   @ffi.Int8()
//   external int _unique___opaque_item_6047;
//   @ffi.Int8()
//   external int _unique___opaque_item_6048;
//   @ffi.Int8()
//   external int _unique___opaque_item_6049;
//   @ffi.Int8()
//   external int _unique___opaque_item_6050;
//   @ffi.Int8()
//   external int _unique___opaque_item_6051;
//   @ffi.Int8()
//   external int _unique___opaque_item_6052;
//   @ffi.Int8()
//   external int _unique___opaque_item_6053;
//   @ffi.Int8()
//   external int _unique___opaque_item_6054;
//   @ffi.Int8()
//   external int _unique___opaque_item_6055;
//   @ffi.Int8()
//   external int _unique___opaque_item_6056;
//   @ffi.Int8()
//   external int _unique___opaque_item_6057;
//   @ffi.Int8()
//   external int _unique___opaque_item_6058;
//   @ffi.Int8()
//   external int _unique___opaque_item_6059;
//   @ffi.Int8()
//   external int _unique___opaque_item_6060;
//   @ffi.Int8()
//   external int _unique___opaque_item_6061;
//   @ffi.Int8()
//   external int _unique___opaque_item_6062;
//   @ffi.Int8()
//   external int _unique___opaque_item_6063;
//   @ffi.Int8()
//   external int _unique___opaque_item_6064;
//   @ffi.Int8()
//   external int _unique___opaque_item_6065;
//   @ffi.Int8()
//   external int _unique___opaque_item_6066;
//   @ffi.Int8()
//   external int _unique___opaque_item_6067;
//   @ffi.Int8()
//   external int _unique___opaque_item_6068;
//   @ffi.Int8()
//   external int _unique___opaque_item_6069;
//   @ffi.Int8()
//   external int _unique___opaque_item_6070;
//   @ffi.Int8()
//   external int _unique___opaque_item_6071;
//   @ffi.Int8()
//   external int _unique___opaque_item_6072;
//   @ffi.Int8()
//   external int _unique___opaque_item_6073;
//   @ffi.Int8()
//   external int _unique___opaque_item_6074;
//   @ffi.Int8()
//   external int _unique___opaque_item_6075;
//   @ffi.Int8()
//   external int _unique___opaque_item_6076;
//   @ffi.Int8()
//   external int _unique___opaque_item_6077;
//   @ffi.Int8()
//   external int _unique___opaque_item_6078;
//   @ffi.Int8()
//   external int _unique___opaque_item_6079;
//   @ffi.Int8()
//   external int _unique___opaque_item_6080;
//   @ffi.Int8()
//   external int _unique___opaque_item_6081;
//   @ffi.Int8()
//   external int _unique___opaque_item_6082;
//   @ffi.Int8()
//   external int _unique___opaque_item_6083;
//   @ffi.Int8()
//   external int _unique___opaque_item_6084;
//   @ffi.Int8()
//   external int _unique___opaque_item_6085;
//   @ffi.Int8()
//   external int _unique___opaque_item_6086;
//   @ffi.Int8()
//   external int _unique___opaque_item_6087;
//   @ffi.Int8()
//   external int _unique___opaque_item_6088;
//   @ffi.Int8()
//   external int _unique___opaque_item_6089;
//   @ffi.Int8()
//   external int _unique___opaque_item_6090;
//   @ffi.Int8()
//   external int _unique___opaque_item_6091;
//   @ffi.Int8()
//   external int _unique___opaque_item_6092;
//   @ffi.Int8()
//   external int _unique___opaque_item_6093;
//   @ffi.Int8()
//   external int _unique___opaque_item_6094;
//   @ffi.Int8()
//   external int _unique___opaque_item_6095;
//   @ffi.Int8()
//   external int _unique___opaque_item_6096;
//   @ffi.Int8()
//   external int _unique___opaque_item_6097;
//   @ffi.Int8()
//   external int _unique___opaque_item_6098;
//   @ffi.Int8()
//   external int _unique___opaque_item_6099;
//   @ffi.Int8()
//   external int _unique___opaque_item_6100;
//   @ffi.Int8()
//   external int _unique___opaque_item_6101;
//   @ffi.Int8()
//   external int _unique___opaque_item_6102;
//   @ffi.Int8()
//   external int _unique___opaque_item_6103;
//   @ffi.Int8()
//   external int _unique___opaque_item_6104;
//   @ffi.Int8()
//   external int _unique___opaque_item_6105;
//   @ffi.Int8()
//   external int _unique___opaque_item_6106;
//   @ffi.Int8()
//   external int _unique___opaque_item_6107;
//   @ffi.Int8()
//   external int _unique___opaque_item_6108;
//   @ffi.Int8()
//   external int _unique___opaque_item_6109;
//   @ffi.Int8()
//   external int _unique___opaque_item_6110;
//   @ffi.Int8()
//   external int _unique___opaque_item_6111;
//   @ffi.Int8()
//   external int _unique___opaque_item_6112;
//   @ffi.Int8()
//   external int _unique___opaque_item_6113;
//   @ffi.Int8()
//   external int _unique___opaque_item_6114;
//   @ffi.Int8()
//   external int _unique___opaque_item_6115;
//   @ffi.Int8()
//   external int _unique___opaque_item_6116;
//   @ffi.Int8()
//   external int _unique___opaque_item_6117;
//   @ffi.Int8()
//   external int _unique___opaque_item_6118;
//   @ffi.Int8()
//   external int _unique___opaque_item_6119;
//   @ffi.Int8()
//   external int _unique___opaque_item_6120;
//   @ffi.Int8()
//   external int _unique___opaque_item_6121;
//   @ffi.Int8()
//   external int _unique___opaque_item_6122;
//   @ffi.Int8()
//   external int _unique___opaque_item_6123;
//   @ffi.Int8()
//   external int _unique___opaque_item_6124;
//   @ffi.Int8()
//   external int _unique___opaque_item_6125;
//   @ffi.Int8()
//   external int _unique___opaque_item_6126;
//   @ffi.Int8()
//   external int _unique___opaque_item_6127;
//   @ffi.Int8()
//   external int _unique___opaque_item_6128;
//   @ffi.Int8()
//   external int _unique___opaque_item_6129;
//   @ffi.Int8()
//   external int _unique___opaque_item_6130;
//   @ffi.Int8()
//   external int _unique___opaque_item_6131;
//   @ffi.Int8()
//   external int _unique___opaque_item_6132;
//   @ffi.Int8()
//   external int _unique___opaque_item_6133;
//   @ffi.Int8()
//   external int _unique___opaque_item_6134;
//   @ffi.Int8()
//   external int _unique___opaque_item_6135;
//   @ffi.Int8()
//   external int _unique___opaque_item_6136;
//   @ffi.Int8()
//   external int _unique___opaque_item_6137;
//   @ffi.Int8()
//   external int _unique___opaque_item_6138;
//   @ffi.Int8()
//   external int _unique___opaque_item_6139;
//   @ffi.Int8()
//   external int _unique___opaque_item_6140;
//   @ffi.Int8()
//   external int _unique___opaque_item_6141;
//   @ffi.Int8()
//   external int _unique___opaque_item_6142;
//   @ffi.Int8()
//   external int _unique___opaque_item_6143;
//   @ffi.Int8()
//   external int _unique___opaque_item_6144;
//   @ffi.Int8()
//   external int _unique___opaque_item_6145;
//   @ffi.Int8()
//   external int _unique___opaque_item_6146;
//   @ffi.Int8()
//   external int _unique___opaque_item_6147;
//   @ffi.Int8()
//   external int _unique___opaque_item_6148;
//   @ffi.Int8()
//   external int _unique___opaque_item_6149;
//   @ffi.Int8()
//   external int _unique___opaque_item_6150;
//   @ffi.Int8()
//   external int _unique___opaque_item_6151;
//   @ffi.Int8()
//   external int _unique___opaque_item_6152;
//   @ffi.Int8()
//   external int _unique___opaque_item_6153;
//   @ffi.Int8()
//   external int _unique___opaque_item_6154;
//   @ffi.Int8()
//   external int _unique___opaque_item_6155;
//   @ffi.Int8()
//   external int _unique___opaque_item_6156;
//   @ffi.Int8()
//   external int _unique___opaque_item_6157;
//   @ffi.Int8()
//   external int _unique___opaque_item_6158;
//   @ffi.Int8()
//   external int _unique___opaque_item_6159;
//   @ffi.Int8()
//   external int _unique___opaque_item_6160;
//   @ffi.Int8()
//   external int _unique___opaque_item_6161;
//   @ffi.Int8()
//   external int _unique___opaque_item_6162;
//   @ffi.Int8()
//   external int _unique___opaque_item_6163;
//   @ffi.Int8()
//   external int _unique___opaque_item_6164;
//   @ffi.Int8()
//   external int _unique___opaque_item_6165;
//   @ffi.Int8()
//   external int _unique___opaque_item_6166;
//   @ffi.Int8()
//   external int _unique___opaque_item_6167;
//   @ffi.Int8()
//   external int _unique___opaque_item_6168;
//   @ffi.Int8()
//   external int _unique___opaque_item_6169;
//   @ffi.Int8()
//   external int _unique___opaque_item_6170;
//   @ffi.Int8()
//   external int _unique___opaque_item_6171;
//   @ffi.Int8()
//   external int _unique___opaque_item_6172;
//   @ffi.Int8()
//   external int _unique___opaque_item_6173;
//   @ffi.Int8()
//   external int _unique___opaque_item_6174;
//   @ffi.Int8()
//   external int _unique___opaque_item_6175;
//   @ffi.Int8()
//   external int _unique___opaque_item_6176;
//   @ffi.Int8()
//   external int _unique___opaque_item_6177;
//   @ffi.Int8()
//   external int _unique___opaque_item_6178;
//   @ffi.Int8()
//   external int _unique___opaque_item_6179;
//   @ffi.Int8()
//   external int _unique___opaque_item_6180;
//   @ffi.Int8()
//   external int _unique___opaque_item_6181;
//   @ffi.Int8()
//   external int _unique___opaque_item_6182;
//   @ffi.Int8()
//   external int _unique___opaque_item_6183;
//   @ffi.Int8()
//   external int _unique___opaque_item_6184;
//   @ffi.Int8()
//   external int _unique___opaque_item_6185;
//   @ffi.Int8()
//   external int _unique___opaque_item_6186;
//   @ffi.Int8()
//   external int _unique___opaque_item_6187;
//   @ffi.Int8()
//   external int _unique___opaque_item_6188;
//   @ffi.Int8()
//   external int _unique___opaque_item_6189;
//   @ffi.Int8()
//   external int _unique___opaque_item_6190;
//   @ffi.Int8()
//   external int _unique___opaque_item_6191;
//   @ffi.Int8()
//   external int _unique___opaque_item_6192;
//   @ffi.Int8()
//   external int _unique___opaque_item_6193;
//   @ffi.Int8()
//   external int _unique___opaque_item_6194;
//   @ffi.Int8()
//   external int _unique___opaque_item_6195;
//   @ffi.Int8()
//   external int _unique___opaque_item_6196;
//   @ffi.Int8()
//   external int _unique___opaque_item_6197;
//   @ffi.Int8()
//   external int _unique___opaque_item_6198;
//   @ffi.Int8()
//   external int _unique___opaque_item_6199;
//   @ffi.Int8()
//   external int _unique___opaque_item_6200;
//   @ffi.Int8()
//   external int _unique___opaque_item_6201;
//   @ffi.Int8()
//   external int _unique___opaque_item_6202;
//   @ffi.Int8()
//   external int _unique___opaque_item_6203;
//   @ffi.Int8()
//   external int _unique___opaque_item_6204;
//   @ffi.Int8()
//   external int _unique___opaque_item_6205;
//   @ffi.Int8()
//   external int _unique___opaque_item_6206;
//   @ffi.Int8()
//   external int _unique___opaque_item_6207;
//   @ffi.Int8()
//   external int _unique___opaque_item_6208;
//   @ffi.Int8()
//   external int _unique___opaque_item_6209;
//   @ffi.Int8()
//   external int _unique___opaque_item_6210;
//   @ffi.Int8()
//   external int _unique___opaque_item_6211;
//   @ffi.Int8()
//   external int _unique___opaque_item_6212;
//   @ffi.Int8()
//   external int _unique___opaque_item_6213;
//   @ffi.Int8()
//   external int _unique___opaque_item_6214;
//   @ffi.Int8()
//   external int _unique___opaque_item_6215;
//   @ffi.Int8()
//   external int _unique___opaque_item_6216;
//   @ffi.Int8()
//   external int _unique___opaque_item_6217;
//   @ffi.Int8()
//   external int _unique___opaque_item_6218;
//   @ffi.Int8()
//   external int _unique___opaque_item_6219;
//   @ffi.Int8()
//   external int _unique___opaque_item_6220;
//   @ffi.Int8()
//   external int _unique___opaque_item_6221;
//   @ffi.Int8()
//   external int _unique___opaque_item_6222;
//   @ffi.Int8()
//   external int _unique___opaque_item_6223;
//   @ffi.Int8()
//   external int _unique___opaque_item_6224;
//   @ffi.Int8()
//   external int _unique___opaque_item_6225;
//   @ffi.Int8()
//   external int _unique___opaque_item_6226;
//   @ffi.Int8()
//   external int _unique___opaque_item_6227;
//   @ffi.Int8()
//   external int _unique___opaque_item_6228;
//   @ffi.Int8()
//   external int _unique___opaque_item_6229;
//   @ffi.Int8()
//   external int _unique___opaque_item_6230;
//   @ffi.Int8()
//   external int _unique___opaque_item_6231;
//   @ffi.Int8()
//   external int _unique___opaque_item_6232;
//   @ffi.Int8()
//   external int _unique___opaque_item_6233;
//   @ffi.Int8()
//   external int _unique___opaque_item_6234;
//   @ffi.Int8()
//   external int _unique___opaque_item_6235;
//   @ffi.Int8()
//   external int _unique___opaque_item_6236;
//   @ffi.Int8()
//   external int _unique___opaque_item_6237;
//   @ffi.Int8()
//   external int _unique___opaque_item_6238;
//   @ffi.Int8()
//   external int _unique___opaque_item_6239;
//   @ffi.Int8()
//   external int _unique___opaque_item_6240;
//   @ffi.Int8()
//   external int _unique___opaque_item_6241;
//   @ffi.Int8()
//   external int _unique___opaque_item_6242;
//   @ffi.Int8()
//   external int _unique___opaque_item_6243;
//   @ffi.Int8()
//   external int _unique___opaque_item_6244;
//   @ffi.Int8()
//   external int _unique___opaque_item_6245;
//   @ffi.Int8()
//   external int _unique___opaque_item_6246;
//   @ffi.Int8()
//   external int _unique___opaque_item_6247;
//   @ffi.Int8()
//   external int _unique___opaque_item_6248;
//   @ffi.Int8()
//   external int _unique___opaque_item_6249;
//   @ffi.Int8()
//   external int _unique___opaque_item_6250;
//   @ffi.Int8()
//   external int _unique___opaque_item_6251;
//   @ffi.Int8()
//   external int _unique___opaque_item_6252;
//   @ffi.Int8()
//   external int _unique___opaque_item_6253;
//   @ffi.Int8()
//   external int _unique___opaque_item_6254;
//   @ffi.Int8()
//   external int _unique___opaque_item_6255;
//   @ffi.Int8()
//   external int _unique___opaque_item_6256;
//   @ffi.Int8()
//   external int _unique___opaque_item_6257;
//   @ffi.Int8()
//   external int _unique___opaque_item_6258;
//   @ffi.Int8()
//   external int _unique___opaque_item_6259;
//   @ffi.Int8()
//   external int _unique___opaque_item_6260;
//   @ffi.Int8()
//   external int _unique___opaque_item_6261;
//   @ffi.Int8()
//   external int _unique___opaque_item_6262;
//   @ffi.Int8()
//   external int _unique___opaque_item_6263;
//   @ffi.Int8()
//   external int _unique___opaque_item_6264;
//   @ffi.Int8()
//   external int _unique___opaque_item_6265;
//   @ffi.Int8()
//   external int _unique___opaque_item_6266;
//   @ffi.Int8()
//   external int _unique___opaque_item_6267;
//   @ffi.Int8()
//   external int _unique___opaque_item_6268;
//   @ffi.Int8()
//   external int _unique___opaque_item_6269;
//   @ffi.Int8()
//   external int _unique___opaque_item_6270;
//   @ffi.Int8()
//   external int _unique___opaque_item_6271;
//   @ffi.Int8()
//   external int _unique___opaque_item_6272;
//   @ffi.Int8()
//   external int _unique___opaque_item_6273;
//   @ffi.Int8()
//   external int _unique___opaque_item_6274;
//   @ffi.Int8()
//   external int _unique___opaque_item_6275;
//   @ffi.Int8()
//   external int _unique___opaque_item_6276;
//   @ffi.Int8()
//   external int _unique___opaque_item_6277;
//   @ffi.Int8()
//   external int _unique___opaque_item_6278;
//   @ffi.Int8()
//   external int _unique___opaque_item_6279;
//   @ffi.Int8()
//   external int _unique___opaque_item_6280;
//   @ffi.Int8()
//   external int _unique___opaque_item_6281;
//   @ffi.Int8()
//   external int _unique___opaque_item_6282;
//   @ffi.Int8()
//   external int _unique___opaque_item_6283;
//   @ffi.Int8()
//   external int _unique___opaque_item_6284;
//   @ffi.Int8()
//   external int _unique___opaque_item_6285;
//   @ffi.Int8()
//   external int _unique___opaque_item_6286;
//   @ffi.Int8()
//   external int _unique___opaque_item_6287;
//   @ffi.Int8()
//   external int _unique___opaque_item_6288;
//   @ffi.Int8()
//   external int _unique___opaque_item_6289;
//   @ffi.Int8()
//   external int _unique___opaque_item_6290;
//   @ffi.Int8()
//   external int _unique___opaque_item_6291;
//   @ffi.Int8()
//   external int _unique___opaque_item_6292;
//   @ffi.Int8()
//   external int _unique___opaque_item_6293;
//   @ffi.Int8()
//   external int _unique___opaque_item_6294;
//   @ffi.Int8()
//   external int _unique___opaque_item_6295;
//   @ffi.Int8()
//   external int _unique___opaque_item_6296;
//   @ffi.Int8()
//   external int _unique___opaque_item_6297;
//   @ffi.Int8()
//   external int _unique___opaque_item_6298;
//   @ffi.Int8()
//   external int _unique___opaque_item_6299;
//   @ffi.Int8()
//   external int _unique___opaque_item_6300;
//   @ffi.Int8()
//   external int _unique___opaque_item_6301;
//   @ffi.Int8()
//   external int _unique___opaque_item_6302;
//   @ffi.Int8()
//   external int _unique___opaque_item_6303;
//   @ffi.Int8()
//   external int _unique___opaque_item_6304;
//   @ffi.Int8()
//   external int _unique___opaque_item_6305;
//   @ffi.Int8()
//   external int _unique___opaque_item_6306;
//   @ffi.Int8()
//   external int _unique___opaque_item_6307;
//   @ffi.Int8()
//   external int _unique___opaque_item_6308;
//   @ffi.Int8()
//   external int _unique___opaque_item_6309;
//   @ffi.Int8()
//   external int _unique___opaque_item_6310;
//   @ffi.Int8()
//   external int _unique___opaque_item_6311;
//   @ffi.Int8()
//   external int _unique___opaque_item_6312;
//   @ffi.Int8()
//   external int _unique___opaque_item_6313;
//   @ffi.Int8()
//   external int _unique___opaque_item_6314;
//   @ffi.Int8()
//   external int _unique___opaque_item_6315;
//   @ffi.Int8()
//   external int _unique___opaque_item_6316;
//   @ffi.Int8()
//   external int _unique___opaque_item_6317;
//   @ffi.Int8()
//   external int _unique___opaque_item_6318;
//   @ffi.Int8()
//   external int _unique___opaque_item_6319;
//   @ffi.Int8()
//   external int _unique___opaque_item_6320;
//   @ffi.Int8()
//   external int _unique___opaque_item_6321;
//   @ffi.Int8()
//   external int _unique___opaque_item_6322;
//   @ffi.Int8()
//   external int _unique___opaque_item_6323;
//   @ffi.Int8()
//   external int _unique___opaque_item_6324;
//   @ffi.Int8()
//   external int _unique___opaque_item_6325;
//   @ffi.Int8()
//   external int _unique___opaque_item_6326;
//   @ffi.Int8()
//   external int _unique___opaque_item_6327;
//   @ffi.Int8()
//   external int _unique___opaque_item_6328;
//   @ffi.Int8()
//   external int _unique___opaque_item_6329;
//   @ffi.Int8()
//   external int _unique___opaque_item_6330;
//   @ffi.Int8()
//   external int _unique___opaque_item_6331;
//   @ffi.Int8()
//   external int _unique___opaque_item_6332;
//   @ffi.Int8()
//   external int _unique___opaque_item_6333;
//   @ffi.Int8()
//   external int _unique___opaque_item_6334;
//   @ffi.Int8()
//   external int _unique___opaque_item_6335;
//   @ffi.Int8()
//   external int _unique___opaque_item_6336;
//   @ffi.Int8()
//   external int _unique___opaque_item_6337;
//   @ffi.Int8()
//   external int _unique___opaque_item_6338;
//   @ffi.Int8()
//   external int _unique___opaque_item_6339;
//   @ffi.Int8()
//   external int _unique___opaque_item_6340;
//   @ffi.Int8()
//   external int _unique___opaque_item_6341;
//   @ffi.Int8()
//   external int _unique___opaque_item_6342;
//   @ffi.Int8()
//   external int _unique___opaque_item_6343;
//   @ffi.Int8()
//   external int _unique___opaque_item_6344;
//   @ffi.Int8()
//   external int _unique___opaque_item_6345;
//   @ffi.Int8()
//   external int _unique___opaque_item_6346;
//   @ffi.Int8()
//   external int _unique___opaque_item_6347;
//   @ffi.Int8()
//   external int _unique___opaque_item_6348;
//   @ffi.Int8()
//   external int _unique___opaque_item_6349;
//   @ffi.Int8()
//   external int _unique___opaque_item_6350;
//   @ffi.Int8()
//   external int _unique___opaque_item_6351;
//   @ffi.Int8()
//   external int _unique___opaque_item_6352;
//   @ffi.Int8()
//   external int _unique___opaque_item_6353;
//   @ffi.Int8()
//   external int _unique___opaque_item_6354;
//   @ffi.Int8()
//   external int _unique___opaque_item_6355;
//   @ffi.Int8()
//   external int _unique___opaque_item_6356;
//   @ffi.Int8()
//   external int _unique___opaque_item_6357;
//   @ffi.Int8()
//   external int _unique___opaque_item_6358;
//   @ffi.Int8()
//   external int _unique___opaque_item_6359;
//   @ffi.Int8()
//   external int _unique___opaque_item_6360;
//   @ffi.Int8()
//   external int _unique___opaque_item_6361;
//   @ffi.Int8()
//   external int _unique___opaque_item_6362;
//   @ffi.Int8()
//   external int _unique___opaque_item_6363;
//   @ffi.Int8()
//   external int _unique___opaque_item_6364;
//   @ffi.Int8()
//   external int _unique___opaque_item_6365;
//   @ffi.Int8()
//   external int _unique___opaque_item_6366;
//   @ffi.Int8()
//   external int _unique___opaque_item_6367;
//   @ffi.Int8()
//   external int _unique___opaque_item_6368;
//   @ffi.Int8()
//   external int _unique___opaque_item_6369;
//   @ffi.Int8()
//   external int _unique___opaque_item_6370;
//   @ffi.Int8()
//   external int _unique___opaque_item_6371;
//   @ffi.Int8()
//   external int _unique___opaque_item_6372;
//   @ffi.Int8()
//   external int _unique___opaque_item_6373;
//   @ffi.Int8()
//   external int _unique___opaque_item_6374;
//   @ffi.Int8()
//   external int _unique___opaque_item_6375;
//   @ffi.Int8()
//   external int _unique___opaque_item_6376;
//   @ffi.Int8()
//   external int _unique___opaque_item_6377;
//   @ffi.Int8()
//   external int _unique___opaque_item_6378;
//   @ffi.Int8()
//   external int _unique___opaque_item_6379;
//   @ffi.Int8()
//   external int _unique___opaque_item_6380;
//   @ffi.Int8()
//   external int _unique___opaque_item_6381;
//   @ffi.Int8()
//   external int _unique___opaque_item_6382;
//   @ffi.Int8()
//   external int _unique___opaque_item_6383;
//   @ffi.Int8()
//   external int _unique___opaque_item_6384;
//   @ffi.Int8()
//   external int _unique___opaque_item_6385;
//   @ffi.Int8()
//   external int _unique___opaque_item_6386;
//   @ffi.Int8()
//   external int _unique___opaque_item_6387;
//   @ffi.Int8()
//   external int _unique___opaque_item_6388;
//   @ffi.Int8()
//   external int _unique___opaque_item_6389;
//   @ffi.Int8()
//   external int _unique___opaque_item_6390;
//   @ffi.Int8()
//   external int _unique___opaque_item_6391;
//   @ffi.Int8()
//   external int _unique___opaque_item_6392;
//   @ffi.Int8()
//   external int _unique___opaque_item_6393;
//   @ffi.Int8()
//   external int _unique___opaque_item_6394;
//   @ffi.Int8()
//   external int _unique___opaque_item_6395;
//   @ffi.Int8()
//   external int _unique___opaque_item_6396;
//   @ffi.Int8()
//   external int _unique___opaque_item_6397;
//   @ffi.Int8()
//   external int _unique___opaque_item_6398;
//   @ffi.Int8()
//   external int _unique___opaque_item_6399;
//   @ffi.Int8()
//   external int _unique___opaque_item_6400;
//   @ffi.Int8()
//   external int _unique___opaque_item_6401;
//   @ffi.Int8()
//   external int _unique___opaque_item_6402;
//   @ffi.Int8()
//   external int _unique___opaque_item_6403;
//   @ffi.Int8()
//   external int _unique___opaque_item_6404;
//   @ffi.Int8()
//   external int _unique___opaque_item_6405;
//   @ffi.Int8()
//   external int _unique___opaque_item_6406;
//   @ffi.Int8()
//   external int _unique___opaque_item_6407;
//   @ffi.Int8()
//   external int _unique___opaque_item_6408;
//   @ffi.Int8()
//   external int _unique___opaque_item_6409;
//   @ffi.Int8()
//   external int _unique___opaque_item_6410;
//   @ffi.Int8()
//   external int _unique___opaque_item_6411;
//   @ffi.Int8()
//   external int _unique___opaque_item_6412;
//   @ffi.Int8()
//   external int _unique___opaque_item_6413;
//   @ffi.Int8()
//   external int _unique___opaque_item_6414;
//   @ffi.Int8()
//   external int _unique___opaque_item_6415;
//   @ffi.Int8()
//   external int _unique___opaque_item_6416;
//   @ffi.Int8()
//   external int _unique___opaque_item_6417;
//   @ffi.Int8()
//   external int _unique___opaque_item_6418;
//   @ffi.Int8()
//   external int _unique___opaque_item_6419;
//   @ffi.Int8()
//   external int _unique___opaque_item_6420;
//   @ffi.Int8()
//   external int _unique___opaque_item_6421;
//   @ffi.Int8()
//   external int _unique___opaque_item_6422;
//   @ffi.Int8()
//   external int _unique___opaque_item_6423;
//   @ffi.Int8()
//   external int _unique___opaque_item_6424;
//   @ffi.Int8()
//   external int _unique___opaque_item_6425;
//   @ffi.Int8()
//   external int _unique___opaque_item_6426;
//   @ffi.Int8()
//   external int _unique___opaque_item_6427;
//   @ffi.Int8()
//   external int _unique___opaque_item_6428;
//   @ffi.Int8()
//   external int _unique___opaque_item_6429;
//   @ffi.Int8()
//   external int _unique___opaque_item_6430;
//   @ffi.Int8()
//   external int _unique___opaque_item_6431;
//   @ffi.Int8()
//   external int _unique___opaque_item_6432;
//   @ffi.Int8()
//   external int _unique___opaque_item_6433;
//   @ffi.Int8()
//   external int _unique___opaque_item_6434;
//   @ffi.Int8()
//   external int _unique___opaque_item_6435;
//   @ffi.Int8()
//   external int _unique___opaque_item_6436;
//   @ffi.Int8()
//   external int _unique___opaque_item_6437;
//   @ffi.Int8()
//   external int _unique___opaque_item_6438;
//   @ffi.Int8()
//   external int _unique___opaque_item_6439;
//   @ffi.Int8()
//   external int _unique___opaque_item_6440;
//   @ffi.Int8()
//   external int _unique___opaque_item_6441;
//   @ffi.Int8()
//   external int _unique___opaque_item_6442;
//   @ffi.Int8()
//   external int _unique___opaque_item_6443;
//   @ffi.Int8()
//   external int _unique___opaque_item_6444;
//   @ffi.Int8()
//   external int _unique___opaque_item_6445;
//   @ffi.Int8()
//   external int _unique___opaque_item_6446;
//   @ffi.Int8()
//   external int _unique___opaque_item_6447;
//   @ffi.Int8()
//   external int _unique___opaque_item_6448;
//   @ffi.Int8()
//   external int _unique___opaque_item_6449;
//   @ffi.Int8()
//   external int _unique___opaque_item_6450;
//   @ffi.Int8()
//   external int _unique___opaque_item_6451;
//   @ffi.Int8()
//   external int _unique___opaque_item_6452;
//   @ffi.Int8()
//   external int _unique___opaque_item_6453;
//   @ffi.Int8()
//   external int _unique___opaque_item_6454;
//   @ffi.Int8()
//   external int _unique___opaque_item_6455;
//   @ffi.Int8()
//   external int _unique___opaque_item_6456;
//   @ffi.Int8()
//   external int _unique___opaque_item_6457;
//   @ffi.Int8()
//   external int _unique___opaque_item_6458;
//   @ffi.Int8()
//   external int _unique___opaque_item_6459;
//   @ffi.Int8()
//   external int _unique___opaque_item_6460;
//   @ffi.Int8()
//   external int _unique___opaque_item_6461;
//   @ffi.Int8()
//   external int _unique___opaque_item_6462;
//   @ffi.Int8()
//   external int _unique___opaque_item_6463;
//   @ffi.Int8()
//   external int _unique___opaque_item_6464;
//   @ffi.Int8()
//   external int _unique___opaque_item_6465;
//   @ffi.Int8()
//   external int _unique___opaque_item_6466;
//   @ffi.Int8()
//   external int _unique___opaque_item_6467;
//   @ffi.Int8()
//   external int _unique___opaque_item_6468;
//   @ffi.Int8()
//   external int _unique___opaque_item_6469;
//   @ffi.Int8()
//   external int _unique___opaque_item_6470;
//   @ffi.Int8()
//   external int _unique___opaque_item_6471;
//   @ffi.Int8()
//   external int _unique___opaque_item_6472;
//   @ffi.Int8()
//   external int _unique___opaque_item_6473;
//   @ffi.Int8()
//   external int _unique___opaque_item_6474;
//   @ffi.Int8()
//   external int _unique___opaque_item_6475;
//   @ffi.Int8()
//   external int _unique___opaque_item_6476;
//   @ffi.Int8()
//   external int _unique___opaque_item_6477;
//   @ffi.Int8()
//   external int _unique___opaque_item_6478;
//   @ffi.Int8()
//   external int _unique___opaque_item_6479;
//   @ffi.Int8()
//   external int _unique___opaque_item_6480;
//   @ffi.Int8()
//   external int _unique___opaque_item_6481;
//   @ffi.Int8()
//   external int _unique___opaque_item_6482;
//   @ffi.Int8()
//   external int _unique___opaque_item_6483;
//   @ffi.Int8()
//   external int _unique___opaque_item_6484;
//   @ffi.Int8()
//   external int _unique___opaque_item_6485;
//   @ffi.Int8()
//   external int _unique___opaque_item_6486;
//   @ffi.Int8()
//   external int _unique___opaque_item_6487;
//   @ffi.Int8()
//   external int _unique___opaque_item_6488;
//   @ffi.Int8()
//   external int _unique___opaque_item_6489;
//   @ffi.Int8()
//   external int _unique___opaque_item_6490;
//   @ffi.Int8()
//   external int _unique___opaque_item_6491;
//   @ffi.Int8()
//   external int _unique___opaque_item_6492;
//   @ffi.Int8()
//   external int _unique___opaque_item_6493;
//   @ffi.Int8()
//   external int _unique___opaque_item_6494;
//   @ffi.Int8()
//   external int _unique___opaque_item_6495;
//   @ffi.Int8()
//   external int _unique___opaque_item_6496;
//   @ffi.Int8()
//   external int _unique___opaque_item_6497;
//   @ffi.Int8()
//   external int _unique___opaque_item_6498;
//   @ffi.Int8()
//   external int _unique___opaque_item_6499;
//   @ffi.Int8()
//   external int _unique___opaque_item_6500;
//   @ffi.Int8()
//   external int _unique___opaque_item_6501;
//   @ffi.Int8()
//   external int _unique___opaque_item_6502;
//   @ffi.Int8()
//   external int _unique___opaque_item_6503;
//   @ffi.Int8()
//   external int _unique___opaque_item_6504;
//   @ffi.Int8()
//   external int _unique___opaque_item_6505;
//   @ffi.Int8()
//   external int _unique___opaque_item_6506;
//   @ffi.Int8()
//   external int _unique___opaque_item_6507;
//   @ffi.Int8()
//   external int _unique___opaque_item_6508;
//   @ffi.Int8()
//   external int _unique___opaque_item_6509;
//   @ffi.Int8()
//   external int _unique___opaque_item_6510;
//   @ffi.Int8()
//   external int _unique___opaque_item_6511;
//   @ffi.Int8()
//   external int _unique___opaque_item_6512;
//   @ffi.Int8()
//   external int _unique___opaque_item_6513;
//   @ffi.Int8()
//   external int _unique___opaque_item_6514;
//   @ffi.Int8()
//   external int _unique___opaque_item_6515;
//   @ffi.Int8()
//   external int _unique___opaque_item_6516;
//   @ffi.Int8()
//   external int _unique___opaque_item_6517;
//   @ffi.Int8()
//   external int _unique___opaque_item_6518;
//   @ffi.Int8()
//   external int _unique___opaque_item_6519;
//   @ffi.Int8()
//   external int _unique___opaque_item_6520;
//   @ffi.Int8()
//   external int _unique___opaque_item_6521;
//   @ffi.Int8()
//   external int _unique___opaque_item_6522;
//   @ffi.Int8()
//   external int _unique___opaque_item_6523;
//   @ffi.Int8()
//   external int _unique___opaque_item_6524;
//   @ffi.Int8()
//   external int _unique___opaque_item_6525;
//   @ffi.Int8()
//   external int _unique___opaque_item_6526;
//   @ffi.Int8()
//   external int _unique___opaque_item_6527;
//   @ffi.Int8()
//   external int _unique___opaque_item_6528;
//   @ffi.Int8()
//   external int _unique___opaque_item_6529;
//   @ffi.Int8()
//   external int _unique___opaque_item_6530;
//   @ffi.Int8()
//   external int _unique___opaque_item_6531;
//   @ffi.Int8()
//   external int _unique___opaque_item_6532;
//   @ffi.Int8()
//   external int _unique___opaque_item_6533;
//   @ffi.Int8()
//   external int _unique___opaque_item_6534;
//   @ffi.Int8()
//   external int _unique___opaque_item_6535;
//   @ffi.Int8()
//   external int _unique___opaque_item_6536;
//   @ffi.Int8()
//   external int _unique___opaque_item_6537;
//   @ffi.Int8()
//   external int _unique___opaque_item_6538;
//   @ffi.Int8()
//   external int _unique___opaque_item_6539;
//   @ffi.Int8()
//   external int _unique___opaque_item_6540;
//   @ffi.Int8()
//   external int _unique___opaque_item_6541;
//   @ffi.Int8()
//   external int _unique___opaque_item_6542;
//   @ffi.Int8()
//   external int _unique___opaque_item_6543;
//   @ffi.Int8()
//   external int _unique___opaque_item_6544;
//   @ffi.Int8()
//   external int _unique___opaque_item_6545;
//   @ffi.Int8()
//   external int _unique___opaque_item_6546;
//   @ffi.Int8()
//   external int _unique___opaque_item_6547;
//   @ffi.Int8()
//   external int _unique___opaque_item_6548;
//   @ffi.Int8()
//   external int _unique___opaque_item_6549;
//   @ffi.Int8()
//   external int _unique___opaque_item_6550;
//   @ffi.Int8()
//   external int _unique___opaque_item_6551;
//   @ffi.Int8()
//   external int _unique___opaque_item_6552;
//   @ffi.Int8()
//   external int _unique___opaque_item_6553;
//   @ffi.Int8()
//   external int _unique___opaque_item_6554;
//   @ffi.Int8()
//   external int _unique___opaque_item_6555;
//   @ffi.Int8()
//   external int _unique___opaque_item_6556;
//   @ffi.Int8()
//   external int _unique___opaque_item_6557;
//   @ffi.Int8()
//   external int _unique___opaque_item_6558;
//   @ffi.Int8()
//   external int _unique___opaque_item_6559;
//   @ffi.Int8()
//   external int _unique___opaque_item_6560;
//   @ffi.Int8()
//   external int _unique___opaque_item_6561;
//   @ffi.Int8()
//   external int _unique___opaque_item_6562;
//   @ffi.Int8()
//   external int _unique___opaque_item_6563;
//   @ffi.Int8()
//   external int _unique___opaque_item_6564;
//   @ffi.Int8()
//   external int _unique___opaque_item_6565;
//   @ffi.Int8()
//   external int _unique___opaque_item_6566;
//   @ffi.Int8()
//   external int _unique___opaque_item_6567;
//   @ffi.Int8()
//   external int _unique___opaque_item_6568;
//   @ffi.Int8()
//   external int _unique___opaque_item_6569;
//   @ffi.Int8()
//   external int _unique___opaque_item_6570;
//   @ffi.Int8()
//   external int _unique___opaque_item_6571;
//   @ffi.Int8()
//   external int _unique___opaque_item_6572;
//   @ffi.Int8()
//   external int _unique___opaque_item_6573;
//   @ffi.Int8()
//   external int _unique___opaque_item_6574;
//   @ffi.Int8()
//   external int _unique___opaque_item_6575;
//   @ffi.Int8()
//   external int _unique___opaque_item_6576;
//   @ffi.Int8()
//   external int _unique___opaque_item_6577;
//   @ffi.Int8()
//   external int _unique___opaque_item_6578;
//   @ffi.Int8()
//   external int _unique___opaque_item_6579;
//   @ffi.Int8()
//   external int _unique___opaque_item_6580;
//   @ffi.Int8()
//   external int _unique___opaque_item_6581;
//   @ffi.Int8()
//   external int _unique___opaque_item_6582;
//   @ffi.Int8()
//   external int _unique___opaque_item_6583;
//   @ffi.Int8()
//   external int _unique___opaque_item_6584;
//   @ffi.Int8()
//   external int _unique___opaque_item_6585;
//   @ffi.Int8()
//   external int _unique___opaque_item_6586;
//   @ffi.Int8()
//   external int _unique___opaque_item_6587;
//   @ffi.Int8()
//   external int _unique___opaque_item_6588;
//   @ffi.Int8()
//   external int _unique___opaque_item_6589;
//   @ffi.Int8()
//   external int _unique___opaque_item_6590;
//   @ffi.Int8()
//   external int _unique___opaque_item_6591;
//   @ffi.Int8()
//   external int _unique___opaque_item_6592;
//   @ffi.Int8()
//   external int _unique___opaque_item_6593;
//   @ffi.Int8()
//   external int _unique___opaque_item_6594;
//   @ffi.Int8()
//   external int _unique___opaque_item_6595;
//   @ffi.Int8()
//   external int _unique___opaque_item_6596;
//   @ffi.Int8()
//   external int _unique___opaque_item_6597;
//   @ffi.Int8()
//   external int _unique___opaque_item_6598;
//   @ffi.Int8()
//   external int _unique___opaque_item_6599;
//   @ffi.Int8()
//   external int _unique___opaque_item_6600;
//   @ffi.Int8()
//   external int _unique___opaque_item_6601;
//   @ffi.Int8()
//   external int _unique___opaque_item_6602;
//   @ffi.Int8()
//   external int _unique___opaque_item_6603;
//   @ffi.Int8()
//   external int _unique___opaque_item_6604;
//   @ffi.Int8()
//   external int _unique___opaque_item_6605;
//   @ffi.Int8()
//   external int _unique___opaque_item_6606;
//   @ffi.Int8()
//   external int _unique___opaque_item_6607;
//   @ffi.Int8()
//   external int _unique___opaque_item_6608;
//   @ffi.Int8()
//   external int _unique___opaque_item_6609;
//   @ffi.Int8()
//   external int _unique___opaque_item_6610;
//   @ffi.Int8()
//   external int _unique___opaque_item_6611;
//   @ffi.Int8()
//   external int _unique___opaque_item_6612;
//   @ffi.Int8()
//   external int _unique___opaque_item_6613;
//   @ffi.Int8()
//   external int _unique___opaque_item_6614;
//   @ffi.Int8()
//   external int _unique___opaque_item_6615;
//   @ffi.Int8()
//   external int _unique___opaque_item_6616;
//   @ffi.Int8()
//   external int _unique___opaque_item_6617;
//   @ffi.Int8()
//   external int _unique___opaque_item_6618;
//   @ffi.Int8()
//   external int _unique___opaque_item_6619;
//   @ffi.Int8()
//   external int _unique___opaque_item_6620;
//   @ffi.Int8()
//   external int _unique___opaque_item_6621;
//   @ffi.Int8()
//   external int _unique___opaque_item_6622;
//   @ffi.Int8()
//   external int _unique___opaque_item_6623;
//   @ffi.Int8()
//   external int _unique___opaque_item_6624;
//   @ffi.Int8()
//   external int _unique___opaque_item_6625;
//   @ffi.Int8()
//   external int _unique___opaque_item_6626;
//   @ffi.Int8()
//   external int _unique___opaque_item_6627;
//   @ffi.Int8()
//   external int _unique___opaque_item_6628;
//   @ffi.Int8()
//   external int _unique___opaque_item_6629;
//   @ffi.Int8()
//   external int _unique___opaque_item_6630;
//   @ffi.Int8()
//   external int _unique___opaque_item_6631;
//   @ffi.Int8()
//   external int _unique___opaque_item_6632;
//   @ffi.Int8()
//   external int _unique___opaque_item_6633;
//   @ffi.Int8()
//   external int _unique___opaque_item_6634;
//   @ffi.Int8()
//   external int _unique___opaque_item_6635;
//   @ffi.Int8()
//   external int _unique___opaque_item_6636;
//   @ffi.Int8()
//   external int _unique___opaque_item_6637;
//   @ffi.Int8()
//   external int _unique___opaque_item_6638;
//   @ffi.Int8()
//   external int _unique___opaque_item_6639;
//   @ffi.Int8()
//   external int _unique___opaque_item_6640;
//   @ffi.Int8()
//   external int _unique___opaque_item_6641;
//   @ffi.Int8()
//   external int _unique___opaque_item_6642;
//   @ffi.Int8()
//   external int _unique___opaque_item_6643;
//   @ffi.Int8()
//   external int _unique___opaque_item_6644;
//   @ffi.Int8()
//   external int _unique___opaque_item_6645;
//   @ffi.Int8()
//   external int _unique___opaque_item_6646;
//   @ffi.Int8()
//   external int _unique___opaque_item_6647;
//   @ffi.Int8()
//   external int _unique___opaque_item_6648;
//   @ffi.Int8()
//   external int _unique___opaque_item_6649;
//   @ffi.Int8()
//   external int _unique___opaque_item_6650;
//   @ffi.Int8()
//   external int _unique___opaque_item_6651;
//   @ffi.Int8()
//   external int _unique___opaque_item_6652;
//   @ffi.Int8()
//   external int _unique___opaque_item_6653;
//   @ffi.Int8()
//   external int _unique___opaque_item_6654;
//   @ffi.Int8()
//   external int _unique___opaque_item_6655;
//   @ffi.Int8()
//   external int _unique___opaque_item_6656;
//   @ffi.Int8()
//   external int _unique___opaque_item_6657;
//   @ffi.Int8()
//   external int _unique___opaque_item_6658;
//   @ffi.Int8()
//   external int _unique___opaque_item_6659;
//   @ffi.Int8()
//   external int _unique___opaque_item_6660;
//   @ffi.Int8()
//   external int _unique___opaque_item_6661;
//   @ffi.Int8()
//   external int _unique___opaque_item_6662;
//   @ffi.Int8()
//   external int _unique___opaque_item_6663;
//   @ffi.Int8()
//   external int _unique___opaque_item_6664;
//   @ffi.Int8()
//   external int _unique___opaque_item_6665;
//   @ffi.Int8()
//   external int _unique___opaque_item_6666;
//   @ffi.Int8()
//   external int _unique___opaque_item_6667;
//   @ffi.Int8()
//   external int _unique___opaque_item_6668;
//   @ffi.Int8()
//   external int _unique___opaque_item_6669;
//   @ffi.Int8()
//   external int _unique___opaque_item_6670;
//   @ffi.Int8()
//   external int _unique___opaque_item_6671;
//   @ffi.Int8()
//   external int _unique___opaque_item_6672;
//   @ffi.Int8()
//   external int _unique___opaque_item_6673;
//   @ffi.Int8()
//   external int _unique___opaque_item_6674;
//   @ffi.Int8()
//   external int _unique___opaque_item_6675;
//   @ffi.Int8()
//   external int _unique___opaque_item_6676;
//   @ffi.Int8()
//   external int _unique___opaque_item_6677;
//   @ffi.Int8()
//   external int _unique___opaque_item_6678;
//   @ffi.Int8()
//   external int _unique___opaque_item_6679;
//   @ffi.Int8()
//   external int _unique___opaque_item_6680;
//   @ffi.Int8()
//   external int _unique___opaque_item_6681;
//   @ffi.Int8()
//   external int _unique___opaque_item_6682;
//   @ffi.Int8()
//   external int _unique___opaque_item_6683;
//   @ffi.Int8()
//   external int _unique___opaque_item_6684;
//   @ffi.Int8()
//   external int _unique___opaque_item_6685;
//   @ffi.Int8()
//   external int _unique___opaque_item_6686;
//   @ffi.Int8()
//   external int _unique___opaque_item_6687;
//   @ffi.Int8()
//   external int _unique___opaque_item_6688;
//   @ffi.Int8()
//   external int _unique___opaque_item_6689;
//   @ffi.Int8()
//   external int _unique___opaque_item_6690;
//   @ffi.Int8()
//   external int _unique___opaque_item_6691;
//   @ffi.Int8()
//   external int _unique___opaque_item_6692;
//   @ffi.Int8()
//   external int _unique___opaque_item_6693;
//   @ffi.Int8()
//   external int _unique___opaque_item_6694;
//   @ffi.Int8()
//   external int _unique___opaque_item_6695;
//   @ffi.Int8()
//   external int _unique___opaque_item_6696;
//   @ffi.Int8()
//   external int _unique___opaque_item_6697;
//   @ffi.Int8()
//   external int _unique___opaque_item_6698;
//   @ffi.Int8()
//   external int _unique___opaque_item_6699;
//   @ffi.Int8()
//   external int _unique___opaque_item_6700;
//   @ffi.Int8()
//   external int _unique___opaque_item_6701;
//   @ffi.Int8()
//   external int _unique___opaque_item_6702;
//   @ffi.Int8()
//   external int _unique___opaque_item_6703;
//   @ffi.Int8()
//   external int _unique___opaque_item_6704;
//   @ffi.Int8()
//   external int _unique___opaque_item_6705;
//   @ffi.Int8()
//   external int _unique___opaque_item_6706;
//   @ffi.Int8()
//   external int _unique___opaque_item_6707;
//   @ffi.Int8()
//   external int _unique___opaque_item_6708;
//   @ffi.Int8()
//   external int _unique___opaque_item_6709;
//   @ffi.Int8()
//   external int _unique___opaque_item_6710;
//   @ffi.Int8()
//   external int _unique___opaque_item_6711;
//   @ffi.Int8()
//   external int _unique___opaque_item_6712;
//   @ffi.Int8()
//   external int _unique___opaque_item_6713;
//   @ffi.Int8()
//   external int _unique___opaque_item_6714;
//   @ffi.Int8()
//   external int _unique___opaque_item_6715;
//   @ffi.Int8()
//   external int _unique___opaque_item_6716;
//   @ffi.Int8()
//   external int _unique___opaque_item_6717;
//   @ffi.Int8()
//   external int _unique___opaque_item_6718;
//   @ffi.Int8()
//   external int _unique___opaque_item_6719;
//   @ffi.Int8()
//   external int _unique___opaque_item_6720;
//   @ffi.Int8()
//   external int _unique___opaque_item_6721;
//   @ffi.Int8()
//   external int _unique___opaque_item_6722;
//   @ffi.Int8()
//   external int _unique___opaque_item_6723;
//   @ffi.Int8()
//   external int _unique___opaque_item_6724;
//   @ffi.Int8()
//   external int _unique___opaque_item_6725;
//   @ffi.Int8()
//   external int _unique___opaque_item_6726;
//   @ffi.Int8()
//   external int _unique___opaque_item_6727;
//   @ffi.Int8()
//   external int _unique___opaque_item_6728;
//   @ffi.Int8()
//   external int _unique___opaque_item_6729;
//   @ffi.Int8()
//   external int _unique___opaque_item_6730;
//   @ffi.Int8()
//   external int _unique___opaque_item_6731;
//   @ffi.Int8()
//   external int _unique___opaque_item_6732;
//   @ffi.Int8()
//   external int _unique___opaque_item_6733;
//   @ffi.Int8()
//   external int _unique___opaque_item_6734;
//   @ffi.Int8()
//   external int _unique___opaque_item_6735;
//   @ffi.Int8()
//   external int _unique___opaque_item_6736;
//   @ffi.Int8()
//   external int _unique___opaque_item_6737;
//   @ffi.Int8()
//   external int _unique___opaque_item_6738;
//   @ffi.Int8()
//   external int _unique___opaque_item_6739;
//   @ffi.Int8()
//   external int _unique___opaque_item_6740;
//   @ffi.Int8()
//   external int _unique___opaque_item_6741;
//   @ffi.Int8()
//   external int _unique___opaque_item_6742;
//   @ffi.Int8()
//   external int _unique___opaque_item_6743;
//   @ffi.Int8()
//   external int _unique___opaque_item_6744;
//   @ffi.Int8()
//   external int _unique___opaque_item_6745;
//   @ffi.Int8()
//   external int _unique___opaque_item_6746;
//   @ffi.Int8()
//   external int _unique___opaque_item_6747;
//   @ffi.Int8()
//   external int _unique___opaque_item_6748;
//   @ffi.Int8()
//   external int _unique___opaque_item_6749;
//   @ffi.Int8()
//   external int _unique___opaque_item_6750;
//   @ffi.Int8()
//   external int _unique___opaque_item_6751;
//   @ffi.Int8()
//   external int _unique___opaque_item_6752;
//   @ffi.Int8()
//   external int _unique___opaque_item_6753;
//   @ffi.Int8()
//   external int _unique___opaque_item_6754;
//   @ffi.Int8()
//   external int _unique___opaque_item_6755;
//   @ffi.Int8()
//   external int _unique___opaque_item_6756;
//   @ffi.Int8()
//   external int _unique___opaque_item_6757;
//   @ffi.Int8()
//   external int _unique___opaque_item_6758;
//   @ffi.Int8()
//   external int _unique___opaque_item_6759;
//   @ffi.Int8()
//   external int _unique___opaque_item_6760;
//   @ffi.Int8()
//   external int _unique___opaque_item_6761;
//   @ffi.Int8()
//   external int _unique___opaque_item_6762;
//   @ffi.Int8()
//   external int _unique___opaque_item_6763;
//   @ffi.Int8()
//   external int _unique___opaque_item_6764;
//   @ffi.Int8()
//   external int _unique___opaque_item_6765;
//   @ffi.Int8()
//   external int _unique___opaque_item_6766;
//   @ffi.Int8()
//   external int _unique___opaque_item_6767;
//   @ffi.Int8()
//   external int _unique___opaque_item_6768;
//   @ffi.Int8()
//   external int _unique___opaque_item_6769;
//   @ffi.Int8()
//   external int _unique___opaque_item_6770;
//   @ffi.Int8()
//   external int _unique___opaque_item_6771;
//   @ffi.Int8()
//   external int _unique___opaque_item_6772;
//   @ffi.Int8()
//   external int _unique___opaque_item_6773;
//   @ffi.Int8()
//   external int _unique___opaque_item_6774;
//   @ffi.Int8()
//   external int _unique___opaque_item_6775;
//   @ffi.Int8()
//   external int _unique___opaque_item_6776;
//   @ffi.Int8()
//   external int _unique___opaque_item_6777;
//   @ffi.Int8()
//   external int _unique___opaque_item_6778;
//   @ffi.Int8()
//   external int _unique___opaque_item_6779;
//   @ffi.Int8()
//   external int _unique___opaque_item_6780;
//   @ffi.Int8()
//   external int _unique___opaque_item_6781;
//   @ffi.Int8()
//   external int _unique___opaque_item_6782;
//   @ffi.Int8()
//   external int _unique___opaque_item_6783;
//   @ffi.Int8()
//   external int _unique___opaque_item_6784;
//   @ffi.Int8()
//   external int _unique___opaque_item_6785;
//   @ffi.Int8()
//   external int _unique___opaque_item_6786;
//   @ffi.Int8()
//   external int _unique___opaque_item_6787;
//   @ffi.Int8()
//   external int _unique___opaque_item_6788;
//   @ffi.Int8()
//   external int _unique___opaque_item_6789;
//   @ffi.Int8()
//   external int _unique___opaque_item_6790;
//   @ffi.Int8()
//   external int _unique___opaque_item_6791;
//   @ffi.Int8()
//   external int _unique___opaque_item_6792;
//   @ffi.Int8()
//   external int _unique___opaque_item_6793;
//   @ffi.Int8()
//   external int _unique___opaque_item_6794;
//   @ffi.Int8()
//   external int _unique___opaque_item_6795;
//   @ffi.Int8()
//   external int _unique___opaque_item_6796;
//   @ffi.Int8()
//   external int _unique___opaque_item_6797;
//   @ffi.Int8()
//   external int _unique___opaque_item_6798;
//   @ffi.Int8()
//   external int _unique___opaque_item_6799;
//   @ffi.Int8()
//   external int _unique___opaque_item_6800;
//   @ffi.Int8()
//   external int _unique___opaque_item_6801;
//   @ffi.Int8()
//   external int _unique___opaque_item_6802;
//   @ffi.Int8()
//   external int _unique___opaque_item_6803;
//   @ffi.Int8()
//   external int _unique___opaque_item_6804;
//   @ffi.Int8()
//   external int _unique___opaque_item_6805;
//   @ffi.Int8()
//   external int _unique___opaque_item_6806;
//   @ffi.Int8()
//   external int _unique___opaque_item_6807;
//   @ffi.Int8()
//   external int _unique___opaque_item_6808;
//   @ffi.Int8()
//   external int _unique___opaque_item_6809;
//   @ffi.Int8()
//   external int _unique___opaque_item_6810;
//   @ffi.Int8()
//   external int _unique___opaque_item_6811;
//   @ffi.Int8()
//   external int _unique___opaque_item_6812;
//   @ffi.Int8()
//   external int _unique___opaque_item_6813;
//   @ffi.Int8()
//   external int _unique___opaque_item_6814;
//   @ffi.Int8()
//   external int _unique___opaque_item_6815;
//   @ffi.Int8()
//   external int _unique___opaque_item_6816;
//   @ffi.Int8()
//   external int _unique___opaque_item_6817;
//   @ffi.Int8()
//   external int _unique___opaque_item_6818;
//   @ffi.Int8()
//   external int _unique___opaque_item_6819;
//   @ffi.Int8()
//   external int _unique___opaque_item_6820;
//   @ffi.Int8()
//   external int _unique___opaque_item_6821;
//   @ffi.Int8()
//   external int _unique___opaque_item_6822;
//   @ffi.Int8()
//   external int _unique___opaque_item_6823;
//   @ffi.Int8()
//   external int _unique___opaque_item_6824;
//   @ffi.Int8()
//   external int _unique___opaque_item_6825;
//   @ffi.Int8()
//   external int _unique___opaque_item_6826;
//   @ffi.Int8()
//   external int _unique___opaque_item_6827;
//   @ffi.Int8()
//   external int _unique___opaque_item_6828;
//   @ffi.Int8()
//   external int _unique___opaque_item_6829;
//   @ffi.Int8()
//   external int _unique___opaque_item_6830;
//   @ffi.Int8()
//   external int _unique___opaque_item_6831;
//   @ffi.Int8()
//   external int _unique___opaque_item_6832;
//   @ffi.Int8()
//   external int _unique___opaque_item_6833;
//   @ffi.Int8()
//   external int _unique___opaque_item_6834;
//   @ffi.Int8()
//   external int _unique___opaque_item_6835;
//   @ffi.Int8()
//   external int _unique___opaque_item_6836;
//   @ffi.Int8()
//   external int _unique___opaque_item_6837;
//   @ffi.Int8()
//   external int _unique___opaque_item_6838;
//   @ffi.Int8()
//   external int _unique___opaque_item_6839;
//   @ffi.Int8()
//   external int _unique___opaque_item_6840;
//   @ffi.Int8()
//   external int _unique___opaque_item_6841;
//   @ffi.Int8()
//   external int _unique___opaque_item_6842;
//   @ffi.Int8()
//   external int _unique___opaque_item_6843;
//   @ffi.Int8()
//   external int _unique___opaque_item_6844;
//   @ffi.Int8()
//   external int _unique___opaque_item_6845;
//   @ffi.Int8()
//   external int _unique___opaque_item_6846;
//   @ffi.Int8()
//   external int _unique___opaque_item_6847;
//   @ffi.Int8()
//   external int _unique___opaque_item_6848;
//   @ffi.Int8()
//   external int _unique___opaque_item_6849;
//   @ffi.Int8()
//   external int _unique___opaque_item_6850;
//   @ffi.Int8()
//   external int _unique___opaque_item_6851;
//   @ffi.Int8()
//   external int _unique___opaque_item_6852;
//   @ffi.Int8()
//   external int _unique___opaque_item_6853;
//   @ffi.Int8()
//   external int _unique___opaque_item_6854;
//   @ffi.Int8()
//   external int _unique___opaque_item_6855;
//   @ffi.Int8()
//   external int _unique___opaque_item_6856;
//   @ffi.Int8()
//   external int _unique___opaque_item_6857;
//   @ffi.Int8()
//   external int _unique___opaque_item_6858;
//   @ffi.Int8()
//   external int _unique___opaque_item_6859;
//   @ffi.Int8()
//   external int _unique___opaque_item_6860;
//   @ffi.Int8()
//   external int _unique___opaque_item_6861;
//   @ffi.Int8()
//   external int _unique___opaque_item_6862;
//   @ffi.Int8()
//   external int _unique___opaque_item_6863;
//   @ffi.Int8()
//   external int _unique___opaque_item_6864;
//   @ffi.Int8()
//   external int _unique___opaque_item_6865;
//   @ffi.Int8()
//   external int _unique___opaque_item_6866;
//   @ffi.Int8()
//   external int _unique___opaque_item_6867;
//   @ffi.Int8()
//   external int _unique___opaque_item_6868;
//   @ffi.Int8()
//   external int _unique___opaque_item_6869;
//   @ffi.Int8()
//   external int _unique___opaque_item_6870;
//   @ffi.Int8()
//   external int _unique___opaque_item_6871;
//   @ffi.Int8()
//   external int _unique___opaque_item_6872;
//   @ffi.Int8()
//   external int _unique___opaque_item_6873;
//   @ffi.Int8()
//   external int _unique___opaque_item_6874;
//   @ffi.Int8()
//   external int _unique___opaque_item_6875;
//   @ffi.Int8()
//   external int _unique___opaque_item_6876;
//   @ffi.Int8()
//   external int _unique___opaque_item_6877;
//   @ffi.Int8()
//   external int _unique___opaque_item_6878;
//   @ffi.Int8()
//   external int _unique___opaque_item_6879;
//   @ffi.Int8()
//   external int _unique___opaque_item_6880;
//   @ffi.Int8()
//   external int _unique___opaque_item_6881;
//   @ffi.Int8()
//   external int _unique___opaque_item_6882;
//   @ffi.Int8()
//   external int _unique___opaque_item_6883;
//   @ffi.Int8()
//   external int _unique___opaque_item_6884;
//   @ffi.Int8()
//   external int _unique___opaque_item_6885;
//   @ffi.Int8()
//   external int _unique___opaque_item_6886;
//   @ffi.Int8()
//   external int _unique___opaque_item_6887;
//   @ffi.Int8()
//   external int _unique___opaque_item_6888;
//   @ffi.Int8()
//   external int _unique___opaque_item_6889;
//   @ffi.Int8()
//   external int _unique___opaque_item_6890;
//   @ffi.Int8()
//   external int _unique___opaque_item_6891;
//   @ffi.Int8()
//   external int _unique___opaque_item_6892;
//   @ffi.Int8()
//   external int _unique___opaque_item_6893;
//   @ffi.Int8()
//   external int _unique___opaque_item_6894;
//   @ffi.Int8()
//   external int _unique___opaque_item_6895;
//   @ffi.Int8()
//   external int _unique___opaque_item_6896;
//   @ffi.Int8()
//   external int _unique___opaque_item_6897;
//   @ffi.Int8()
//   external int _unique___opaque_item_6898;
//   @ffi.Int8()
//   external int _unique___opaque_item_6899;
//   @ffi.Int8()
//   external int _unique___opaque_item_6900;
//   @ffi.Int8()
//   external int _unique___opaque_item_6901;
//   @ffi.Int8()
//   external int _unique___opaque_item_6902;
//   @ffi.Int8()
//   external int _unique___opaque_item_6903;
//   @ffi.Int8()
//   external int _unique___opaque_item_6904;
//   @ffi.Int8()
//   external int _unique___opaque_item_6905;
//   @ffi.Int8()
//   external int _unique___opaque_item_6906;
//   @ffi.Int8()
//   external int _unique___opaque_item_6907;
//   @ffi.Int8()
//   external int _unique___opaque_item_6908;
//   @ffi.Int8()
//   external int _unique___opaque_item_6909;
//   @ffi.Int8()
//   external int _unique___opaque_item_6910;
//   @ffi.Int8()
//   external int _unique___opaque_item_6911;
//   @ffi.Int8()
//   external int _unique___opaque_item_6912;
//   @ffi.Int8()
//   external int _unique___opaque_item_6913;
//   @ffi.Int8()
//   external int _unique___opaque_item_6914;
//   @ffi.Int8()
//   external int _unique___opaque_item_6915;
//   @ffi.Int8()
//   external int _unique___opaque_item_6916;
//   @ffi.Int8()
//   external int _unique___opaque_item_6917;
//   @ffi.Int8()
//   external int _unique___opaque_item_6918;
//   @ffi.Int8()
//   external int _unique___opaque_item_6919;
//   @ffi.Int8()
//   external int _unique___opaque_item_6920;
//   @ffi.Int8()
//   external int _unique___opaque_item_6921;
//   @ffi.Int8()
//   external int _unique___opaque_item_6922;
//   @ffi.Int8()
//   external int _unique___opaque_item_6923;
//   @ffi.Int8()
//   external int _unique___opaque_item_6924;
//   @ffi.Int8()
//   external int _unique___opaque_item_6925;
//   @ffi.Int8()
//   external int _unique___opaque_item_6926;
//   @ffi.Int8()
//   external int _unique___opaque_item_6927;
//   @ffi.Int8()
//   external int _unique___opaque_item_6928;
//   @ffi.Int8()
//   external int _unique___opaque_item_6929;
//   @ffi.Int8()
//   external int _unique___opaque_item_6930;
//   @ffi.Int8()
//   external int _unique___opaque_item_6931;
//   @ffi.Int8()
//   external int _unique___opaque_item_6932;
//   @ffi.Int8()
//   external int _unique___opaque_item_6933;
//   @ffi.Int8()
//   external int _unique___opaque_item_6934;
//   @ffi.Int8()
//   external int _unique___opaque_item_6935;
//   @ffi.Int8()
//   external int _unique___opaque_item_6936;
//   @ffi.Int8()
//   external int _unique___opaque_item_6937;
//   @ffi.Int8()
//   external int _unique___opaque_item_6938;
//   @ffi.Int8()
//   external int _unique___opaque_item_6939;
//   @ffi.Int8()
//   external int _unique___opaque_item_6940;
//   @ffi.Int8()
//   external int _unique___opaque_item_6941;
//   @ffi.Int8()
//   external int _unique___opaque_item_6942;
//   @ffi.Int8()
//   external int _unique___opaque_item_6943;
//   @ffi.Int8()
//   external int _unique___opaque_item_6944;
//   @ffi.Int8()
//   external int _unique___opaque_item_6945;
//   @ffi.Int8()
//   external int _unique___opaque_item_6946;
//   @ffi.Int8()
//   external int _unique___opaque_item_6947;
//   @ffi.Int8()
//   external int _unique___opaque_item_6948;
//   @ffi.Int8()
//   external int _unique___opaque_item_6949;
//   @ffi.Int8()
//   external int _unique___opaque_item_6950;
//   @ffi.Int8()
//   external int _unique___opaque_item_6951;
//   @ffi.Int8()
//   external int _unique___opaque_item_6952;
//   @ffi.Int8()
//   external int _unique___opaque_item_6953;
//   @ffi.Int8()
//   external int _unique___opaque_item_6954;
//   @ffi.Int8()
//   external int _unique___opaque_item_6955;
//   @ffi.Int8()
//   external int _unique___opaque_item_6956;
//   @ffi.Int8()
//   external int _unique___opaque_item_6957;
//   @ffi.Int8()
//   external int _unique___opaque_item_6958;
//   @ffi.Int8()
//   external int _unique___opaque_item_6959;
//   @ffi.Int8()
//   external int _unique___opaque_item_6960;
//   @ffi.Int8()
//   external int _unique___opaque_item_6961;
//   @ffi.Int8()
//   external int _unique___opaque_item_6962;
//   @ffi.Int8()
//   external int _unique___opaque_item_6963;
//   @ffi.Int8()
//   external int _unique___opaque_item_6964;
//   @ffi.Int8()
//   external int _unique___opaque_item_6965;
//   @ffi.Int8()
//   external int _unique___opaque_item_6966;
//   @ffi.Int8()
//   external int _unique___opaque_item_6967;
//   @ffi.Int8()
//   external int _unique___opaque_item_6968;
//   @ffi.Int8()
//   external int _unique___opaque_item_6969;
//   @ffi.Int8()
//   external int _unique___opaque_item_6970;
//   @ffi.Int8()
//   external int _unique___opaque_item_6971;
//   @ffi.Int8()
//   external int _unique___opaque_item_6972;
//   @ffi.Int8()
//   external int _unique___opaque_item_6973;
//   @ffi.Int8()
//   external int _unique___opaque_item_6974;
//   @ffi.Int8()
//   external int _unique___opaque_item_6975;
//   @ffi.Int8()
//   external int _unique___opaque_item_6976;
//   @ffi.Int8()
//   external int _unique___opaque_item_6977;
//   @ffi.Int8()
//   external int _unique___opaque_item_6978;
//   @ffi.Int8()
//   external int _unique___opaque_item_6979;
//   @ffi.Int8()
//   external int _unique___opaque_item_6980;
//   @ffi.Int8()
//   external int _unique___opaque_item_6981;
//   @ffi.Int8()
//   external int _unique___opaque_item_6982;
//   @ffi.Int8()
//   external int _unique___opaque_item_6983;
//   @ffi.Int8()
//   external int _unique___opaque_item_6984;
//   @ffi.Int8()
//   external int _unique___opaque_item_6985;
//   @ffi.Int8()
//   external int _unique___opaque_item_6986;
//   @ffi.Int8()
//   external int _unique___opaque_item_6987;
//   @ffi.Int8()
//   external int _unique___opaque_item_6988;
//   @ffi.Int8()
//   external int _unique___opaque_item_6989;
//   @ffi.Int8()
//   external int _unique___opaque_item_6990;
//   @ffi.Int8()
//   external int _unique___opaque_item_6991;
//   @ffi.Int8()
//   external int _unique___opaque_item_6992;
//   @ffi.Int8()
//   external int _unique___opaque_item_6993;
//   @ffi.Int8()
//   external int _unique___opaque_item_6994;
//   @ffi.Int8()
//   external int _unique___opaque_item_6995;
//   @ffi.Int8()
//   external int _unique___opaque_item_6996;
//   @ffi.Int8()
//   external int _unique___opaque_item_6997;
//   @ffi.Int8()
//   external int _unique___opaque_item_6998;
//   @ffi.Int8()
//   external int _unique___opaque_item_6999;
//   @ffi.Int8()
//   external int _unique___opaque_item_7000;
//   @ffi.Int8()
//   external int _unique___opaque_item_7001;
//   @ffi.Int8()
//   external int _unique___opaque_item_7002;
//   @ffi.Int8()
//   external int _unique___opaque_item_7003;
//   @ffi.Int8()
//   external int _unique___opaque_item_7004;
//   @ffi.Int8()
//   external int _unique___opaque_item_7005;
//   @ffi.Int8()
//   external int _unique___opaque_item_7006;
//   @ffi.Int8()
//   external int _unique___opaque_item_7007;
//   @ffi.Int8()
//   external int _unique___opaque_item_7008;
//   @ffi.Int8()
//   external int _unique___opaque_item_7009;
//   @ffi.Int8()
//   external int _unique___opaque_item_7010;
//   @ffi.Int8()
//   external int _unique___opaque_item_7011;
//   @ffi.Int8()
//   external int _unique___opaque_item_7012;
//   @ffi.Int8()
//   external int _unique___opaque_item_7013;
//   @ffi.Int8()
//   external int _unique___opaque_item_7014;
//   @ffi.Int8()
//   external int _unique___opaque_item_7015;
//   @ffi.Int8()
//   external int _unique___opaque_item_7016;
//   @ffi.Int8()
//   external int _unique___opaque_item_7017;
//   @ffi.Int8()
//   external int _unique___opaque_item_7018;
//   @ffi.Int8()
//   external int _unique___opaque_item_7019;
//   @ffi.Int8()
//   external int _unique___opaque_item_7020;
//   @ffi.Int8()
//   external int _unique___opaque_item_7021;
//   @ffi.Int8()
//   external int _unique___opaque_item_7022;
//   @ffi.Int8()
//   external int _unique___opaque_item_7023;
//   @ffi.Int8()
//   external int _unique___opaque_item_7024;
//   @ffi.Int8()
//   external int _unique___opaque_item_7025;
//   @ffi.Int8()
//   external int _unique___opaque_item_7026;
//   @ffi.Int8()
//   external int _unique___opaque_item_7027;
//   @ffi.Int8()
//   external int _unique___opaque_item_7028;
//   @ffi.Int8()
//   external int _unique___opaque_item_7029;
//   @ffi.Int8()
//   external int _unique___opaque_item_7030;
//   @ffi.Int8()
//   external int _unique___opaque_item_7031;
//   @ffi.Int8()
//   external int _unique___opaque_item_7032;
//   @ffi.Int8()
//   external int _unique___opaque_item_7033;
//   @ffi.Int8()
//   external int _unique___opaque_item_7034;
//   @ffi.Int8()
//   external int _unique___opaque_item_7035;
//   @ffi.Int8()
//   external int _unique___opaque_item_7036;
//   @ffi.Int8()
//   external int _unique___opaque_item_7037;
//   @ffi.Int8()
//   external int _unique___opaque_item_7038;
//   @ffi.Int8()
//   external int _unique___opaque_item_7039;
//   @ffi.Int8()
//   external int _unique___opaque_item_7040;
//   @ffi.Int8()
//   external int _unique___opaque_item_7041;
//   @ffi.Int8()
//   external int _unique___opaque_item_7042;
//   @ffi.Int8()
//   external int _unique___opaque_item_7043;
//   @ffi.Int8()
//   external int _unique___opaque_item_7044;
//   @ffi.Int8()
//   external int _unique___opaque_item_7045;
//   @ffi.Int8()
//   external int _unique___opaque_item_7046;
//   @ffi.Int8()
//   external int _unique___opaque_item_7047;
//   @ffi.Int8()
//   external int _unique___opaque_item_7048;
//   @ffi.Int8()
//   external int _unique___opaque_item_7049;
//   @ffi.Int8()
//   external int _unique___opaque_item_7050;
//   @ffi.Int8()
//   external int _unique___opaque_item_7051;
//   @ffi.Int8()
//   external int _unique___opaque_item_7052;
//   @ffi.Int8()
//   external int _unique___opaque_item_7053;
//   @ffi.Int8()
//   external int _unique___opaque_item_7054;
//   @ffi.Int8()
//   external int _unique___opaque_item_7055;
//   @ffi.Int8()
//   external int _unique___opaque_item_7056;
//   @ffi.Int8()
//   external int _unique___opaque_item_7057;
//   @ffi.Int8()
//   external int _unique___opaque_item_7058;
//   @ffi.Int8()
//   external int _unique___opaque_item_7059;
//   @ffi.Int8()
//   external int _unique___opaque_item_7060;
//   @ffi.Int8()
//   external int _unique___opaque_item_7061;
//   @ffi.Int8()
//   external int _unique___opaque_item_7062;
//   @ffi.Int8()
//   external int _unique___opaque_item_7063;
//   @ffi.Int8()
//   external int _unique___opaque_item_7064;
//   @ffi.Int8()
//   external int _unique___opaque_item_7065;
//   @ffi.Int8()
//   external int _unique___opaque_item_7066;
//   @ffi.Int8()
//   external int _unique___opaque_item_7067;
//   @ffi.Int8()
//   external int _unique___opaque_item_7068;
//   @ffi.Int8()
//   external int _unique___opaque_item_7069;
//   @ffi.Int8()
//   external int _unique___opaque_item_7070;
//   @ffi.Int8()
//   external int _unique___opaque_item_7071;
//   @ffi.Int8()
//   external int _unique___opaque_item_7072;
//   @ffi.Int8()
//   external int _unique___opaque_item_7073;
//   @ffi.Int8()
//   external int _unique___opaque_item_7074;
//   @ffi.Int8()
//   external int _unique___opaque_item_7075;
//   @ffi.Int8()
//   external int _unique___opaque_item_7076;
//   @ffi.Int8()
//   external int _unique___opaque_item_7077;
//   @ffi.Int8()
//   external int _unique___opaque_item_7078;
//   @ffi.Int8()
//   external int _unique___opaque_item_7079;
//   @ffi.Int8()
//   external int _unique___opaque_item_7080;
//   @ffi.Int8()
//   external int _unique___opaque_item_7081;
//   @ffi.Int8()
//   external int _unique___opaque_item_7082;
//   @ffi.Int8()
//   external int _unique___opaque_item_7083;
//   @ffi.Int8()
//   external int _unique___opaque_item_7084;
//   @ffi.Int8()
//   external int _unique___opaque_item_7085;
//   @ffi.Int8()
//   external int _unique___opaque_item_7086;
//   @ffi.Int8()
//   external int _unique___opaque_item_7087;
//   @ffi.Int8()
//   external int _unique___opaque_item_7088;
//   @ffi.Int8()
//   external int _unique___opaque_item_7089;
//   @ffi.Int8()
//   external int _unique___opaque_item_7090;
//   @ffi.Int8()
//   external int _unique___opaque_item_7091;
//   @ffi.Int8()
//   external int _unique___opaque_item_7092;
//   @ffi.Int8()
//   external int _unique___opaque_item_7093;
//   @ffi.Int8()
//   external int _unique___opaque_item_7094;
//   @ffi.Int8()
//   external int _unique___opaque_item_7095;
//   @ffi.Int8()
//   external int _unique___opaque_item_7096;
//   @ffi.Int8()
//   external int _unique___opaque_item_7097;
//   @ffi.Int8()
//   external int _unique___opaque_item_7098;
//   @ffi.Int8()
//   external int _unique___opaque_item_7099;
//   @ffi.Int8()
//   external int _unique___opaque_item_7100;
//   @ffi.Int8()
//   external int _unique___opaque_item_7101;
//   @ffi.Int8()
//   external int _unique___opaque_item_7102;
//   @ffi.Int8()
//   external int _unique___opaque_item_7103;
//   @ffi.Int8()
//   external int _unique___opaque_item_7104;
//   @ffi.Int8()
//   external int _unique___opaque_item_7105;
//   @ffi.Int8()
//   external int _unique___opaque_item_7106;
//   @ffi.Int8()
//   external int _unique___opaque_item_7107;
//   @ffi.Int8()
//   external int _unique___opaque_item_7108;
//   @ffi.Int8()
//   external int _unique___opaque_item_7109;
//   @ffi.Int8()
//   external int _unique___opaque_item_7110;
//   @ffi.Int8()
//   external int _unique___opaque_item_7111;
//   @ffi.Int8()
//   external int _unique___opaque_item_7112;
//   @ffi.Int8()
//   external int _unique___opaque_item_7113;
//   @ffi.Int8()
//   external int _unique___opaque_item_7114;
//   @ffi.Int8()
//   external int _unique___opaque_item_7115;
//   @ffi.Int8()
//   external int _unique___opaque_item_7116;
//   @ffi.Int8()
//   external int _unique___opaque_item_7117;
//   @ffi.Int8()
//   external int _unique___opaque_item_7118;
//   @ffi.Int8()
//   external int _unique___opaque_item_7119;
//   @ffi.Int8()
//   external int _unique___opaque_item_7120;
//   @ffi.Int8()
//   external int _unique___opaque_item_7121;
//   @ffi.Int8()
//   external int _unique___opaque_item_7122;
//   @ffi.Int8()
//   external int _unique___opaque_item_7123;
//   @ffi.Int8()
//   external int _unique___opaque_item_7124;
//   @ffi.Int8()
//   external int _unique___opaque_item_7125;
//   @ffi.Int8()
//   external int _unique___opaque_item_7126;
//   @ffi.Int8()
//   external int _unique___opaque_item_7127;
//   @ffi.Int8()
//   external int _unique___opaque_item_7128;
//   @ffi.Int8()
//   external int _unique___opaque_item_7129;
//   @ffi.Int8()
//   external int _unique___opaque_item_7130;
//   @ffi.Int8()
//   external int _unique___opaque_item_7131;
//   @ffi.Int8()
//   external int _unique___opaque_item_7132;
//   @ffi.Int8()
//   external int _unique___opaque_item_7133;
//   @ffi.Int8()
//   external int _unique___opaque_item_7134;
//   @ffi.Int8()
//   external int _unique___opaque_item_7135;
//   @ffi.Int8()
//   external int _unique___opaque_item_7136;
//   @ffi.Int8()
//   external int _unique___opaque_item_7137;
//   @ffi.Int8()
//   external int _unique___opaque_item_7138;
//   @ffi.Int8()
//   external int _unique___opaque_item_7139;
//   @ffi.Int8()
//   external int _unique___opaque_item_7140;
//   @ffi.Int8()
//   external int _unique___opaque_item_7141;
//   @ffi.Int8()
//   external int _unique___opaque_item_7142;
//   @ffi.Int8()
//   external int _unique___opaque_item_7143;
//   @ffi.Int8()
//   external int _unique___opaque_item_7144;
//   @ffi.Int8()
//   external int _unique___opaque_item_7145;
//   @ffi.Int8()
//   external int _unique___opaque_item_7146;
//   @ffi.Int8()
//   external int _unique___opaque_item_7147;
//   @ffi.Int8()
//   external int _unique___opaque_item_7148;
//   @ffi.Int8()
//   external int _unique___opaque_item_7149;
//   @ffi.Int8()
//   external int _unique___opaque_item_7150;
//   @ffi.Int8()
//   external int _unique___opaque_item_7151;
//   @ffi.Int8()
//   external int _unique___opaque_item_7152;
//   @ffi.Int8()
//   external int _unique___opaque_item_7153;
//   @ffi.Int8()
//   external int _unique___opaque_item_7154;
//   @ffi.Int8()
//   external int _unique___opaque_item_7155;
//   @ffi.Int8()
//   external int _unique___opaque_item_7156;
//   @ffi.Int8()
//   external int _unique___opaque_item_7157;
//   @ffi.Int8()
//   external int _unique___opaque_item_7158;
//   @ffi.Int8()
//   external int _unique___opaque_item_7159;
//   @ffi.Int8()
//   external int _unique___opaque_item_7160;
//   @ffi.Int8()
//   external int _unique___opaque_item_7161;
//   @ffi.Int8()
//   external int _unique___opaque_item_7162;
//   @ffi.Int8()
//   external int _unique___opaque_item_7163;
//   @ffi.Int8()
//   external int _unique___opaque_item_7164;
//   @ffi.Int8()
//   external int _unique___opaque_item_7165;
//   @ffi.Int8()
//   external int _unique___opaque_item_7166;
//   @ffi.Int8()
//   external int _unique___opaque_item_7167;
//   @ffi.Int8()
//   external int _unique___opaque_item_7168;
//   @ffi.Int8()
//   external int _unique___opaque_item_7169;
//   @ffi.Int8()
//   external int _unique___opaque_item_7170;
//   @ffi.Int8()
//   external int _unique___opaque_item_7171;
//   @ffi.Int8()
//   external int _unique___opaque_item_7172;
//   @ffi.Int8()
//   external int _unique___opaque_item_7173;
//   @ffi.Int8()
//   external int _unique___opaque_item_7174;
//   @ffi.Int8()
//   external int _unique___opaque_item_7175;
//   @ffi.Int8()
//   external int _unique___opaque_item_7176;
//   @ffi.Int8()
//   external int _unique___opaque_item_7177;
//   @ffi.Int8()
//   external int _unique___opaque_item_7178;
//   @ffi.Int8()
//   external int _unique___opaque_item_7179;
//   @ffi.Int8()
//   external int _unique___opaque_item_7180;
//   @ffi.Int8()
//   external int _unique___opaque_item_7181;
//   @ffi.Int8()
//   external int _unique___opaque_item_7182;
//   @ffi.Int8()
//   external int _unique___opaque_item_7183;
//   @ffi.Int8()
//   external int _unique___opaque_item_7184;
//   @ffi.Int8()
//   external int _unique___opaque_item_7185;
//   @ffi.Int8()
//   external int _unique___opaque_item_7186;
//   @ffi.Int8()
//   external int _unique___opaque_item_7187;
//   @ffi.Int8()
//   external int _unique___opaque_item_7188;
//   @ffi.Int8()
//   external int _unique___opaque_item_7189;
//   @ffi.Int8()
//   external int _unique___opaque_item_7190;
//   @ffi.Int8()
//   external int _unique___opaque_item_7191;
//   @ffi.Int8()
//   external int _unique___opaque_item_7192;
//   @ffi.Int8()
//   external int _unique___opaque_item_7193;
//   @ffi.Int8()
//   external int _unique___opaque_item_7194;
//   @ffi.Int8()
//   external int _unique___opaque_item_7195;
//   @ffi.Int8()
//   external int _unique___opaque_item_7196;
//   @ffi.Int8()
//   external int _unique___opaque_item_7197;
//   @ffi.Int8()
//   external int _unique___opaque_item_7198;
//   @ffi.Int8()
//   external int _unique___opaque_item_7199;
//   @ffi.Int8()
//   external int _unique___opaque_item_7200;
//   @ffi.Int8()
//   external int _unique___opaque_item_7201;
//   @ffi.Int8()
//   external int _unique___opaque_item_7202;
//   @ffi.Int8()
//   external int _unique___opaque_item_7203;
//   @ffi.Int8()
//   external int _unique___opaque_item_7204;
//   @ffi.Int8()
//   external int _unique___opaque_item_7205;
//   @ffi.Int8()
//   external int _unique___opaque_item_7206;
//   @ffi.Int8()
//   external int _unique___opaque_item_7207;
//   @ffi.Int8()
//   external int _unique___opaque_item_7208;
//   @ffi.Int8()
//   external int _unique___opaque_item_7209;
//   @ffi.Int8()
//   external int _unique___opaque_item_7210;
//   @ffi.Int8()
//   external int _unique___opaque_item_7211;
//   @ffi.Int8()
//   external int _unique___opaque_item_7212;
//   @ffi.Int8()
//   external int _unique___opaque_item_7213;
//   @ffi.Int8()
//   external int _unique___opaque_item_7214;
//   @ffi.Int8()
//   external int _unique___opaque_item_7215;
//   @ffi.Int8()
//   external int _unique___opaque_item_7216;
//   @ffi.Int8()
//   external int _unique___opaque_item_7217;
//   @ffi.Int8()
//   external int _unique___opaque_item_7218;
//   @ffi.Int8()
//   external int _unique___opaque_item_7219;
//   @ffi.Int8()
//   external int _unique___opaque_item_7220;
//   @ffi.Int8()
//   external int _unique___opaque_item_7221;
//   @ffi.Int8()
//   external int _unique___opaque_item_7222;
//   @ffi.Int8()
//   external int _unique___opaque_item_7223;
//   @ffi.Int8()
//   external int _unique___opaque_item_7224;
//   @ffi.Int8()
//   external int _unique___opaque_item_7225;
//   @ffi.Int8()
//   external int _unique___opaque_item_7226;
//   @ffi.Int8()
//   external int _unique___opaque_item_7227;
//   @ffi.Int8()
//   external int _unique___opaque_item_7228;
//   @ffi.Int8()
//   external int _unique___opaque_item_7229;
//   @ffi.Int8()
//   external int _unique___opaque_item_7230;
//   @ffi.Int8()
//   external int _unique___opaque_item_7231;
//   @ffi.Int8()
//   external int _unique___opaque_item_7232;
//   @ffi.Int8()
//   external int _unique___opaque_item_7233;
//   @ffi.Int8()
//   external int _unique___opaque_item_7234;
//   @ffi.Int8()
//   external int _unique___opaque_item_7235;
//   @ffi.Int8()
//   external int _unique___opaque_item_7236;
//   @ffi.Int8()
//   external int _unique___opaque_item_7237;
//   @ffi.Int8()
//   external int _unique___opaque_item_7238;
//   @ffi.Int8()
//   external int _unique___opaque_item_7239;
//   @ffi.Int8()
//   external int _unique___opaque_item_7240;
//   @ffi.Int8()
//   external int _unique___opaque_item_7241;
//   @ffi.Int8()
//   external int _unique___opaque_item_7242;
//   @ffi.Int8()
//   external int _unique___opaque_item_7243;
//   @ffi.Int8()
//   external int _unique___opaque_item_7244;
//   @ffi.Int8()
//   external int _unique___opaque_item_7245;
//   @ffi.Int8()
//   external int _unique___opaque_item_7246;
//   @ffi.Int8()
//   external int _unique___opaque_item_7247;
//   @ffi.Int8()
//   external int _unique___opaque_item_7248;
//   @ffi.Int8()
//   external int _unique___opaque_item_7249;
//   @ffi.Int8()
//   external int _unique___opaque_item_7250;
//   @ffi.Int8()
//   external int _unique___opaque_item_7251;
//   @ffi.Int8()
//   external int _unique___opaque_item_7252;
//   @ffi.Int8()
//   external int _unique___opaque_item_7253;
//   @ffi.Int8()
//   external int _unique___opaque_item_7254;
//   @ffi.Int8()
//   external int _unique___opaque_item_7255;
//   @ffi.Int8()
//   external int _unique___opaque_item_7256;
//   @ffi.Int8()
//   external int _unique___opaque_item_7257;
//   @ffi.Int8()
//   external int _unique___opaque_item_7258;
//   @ffi.Int8()
//   external int _unique___opaque_item_7259;
//   @ffi.Int8()
//   external int _unique___opaque_item_7260;
//   @ffi.Int8()
//   external int _unique___opaque_item_7261;
//   @ffi.Int8()
//   external int _unique___opaque_item_7262;
//   @ffi.Int8()
//   external int _unique___opaque_item_7263;
//   @ffi.Int8()
//   external int _unique___opaque_item_7264;
//   @ffi.Int8()
//   external int _unique___opaque_item_7265;
//   @ffi.Int8()
//   external int _unique___opaque_item_7266;
//   @ffi.Int8()
//   external int _unique___opaque_item_7267;
//   @ffi.Int8()
//   external int _unique___opaque_item_7268;
//   @ffi.Int8()
//   external int _unique___opaque_item_7269;
//   @ffi.Int8()
//   external int _unique___opaque_item_7270;
//   @ffi.Int8()
//   external int _unique___opaque_item_7271;
//   @ffi.Int8()
//   external int _unique___opaque_item_7272;
//   @ffi.Int8()
//   external int _unique___opaque_item_7273;
//   @ffi.Int8()
//   external int _unique___opaque_item_7274;
//   @ffi.Int8()
//   external int _unique___opaque_item_7275;
//   @ffi.Int8()
//   external int _unique___opaque_item_7276;
//   @ffi.Int8()
//   external int _unique___opaque_item_7277;
//   @ffi.Int8()
//   external int _unique___opaque_item_7278;
//   @ffi.Int8()
//   external int _unique___opaque_item_7279;
//   @ffi.Int8()
//   external int _unique___opaque_item_7280;
//   @ffi.Int8()
//   external int _unique___opaque_item_7281;
//   @ffi.Int8()
//   external int _unique___opaque_item_7282;
//   @ffi.Int8()
//   external int _unique___opaque_item_7283;
//   @ffi.Int8()
//   external int _unique___opaque_item_7284;
//   @ffi.Int8()
//   external int _unique___opaque_item_7285;
//   @ffi.Int8()
//   external int _unique___opaque_item_7286;
//   @ffi.Int8()
//   external int _unique___opaque_item_7287;
//   @ffi.Int8()
//   external int _unique___opaque_item_7288;
//   @ffi.Int8()
//   external int _unique___opaque_item_7289;
//   @ffi.Int8()
//   external int _unique___opaque_item_7290;
//   @ffi.Int8()
//   external int _unique___opaque_item_7291;
//   @ffi.Int8()
//   external int _unique___opaque_item_7292;
//   @ffi.Int8()
//   external int _unique___opaque_item_7293;
//   @ffi.Int8()
//   external int _unique___opaque_item_7294;
//   @ffi.Int8()
//   external int _unique___opaque_item_7295;
//   @ffi.Int8()
//   external int _unique___opaque_item_7296;
//   @ffi.Int8()
//   external int _unique___opaque_item_7297;
//   @ffi.Int8()
//   external int _unique___opaque_item_7298;
//   @ffi.Int8()
//   external int _unique___opaque_item_7299;
//   @ffi.Int8()
//   external int _unique___opaque_item_7300;
//   @ffi.Int8()
//   external int _unique___opaque_item_7301;
//   @ffi.Int8()
//   external int _unique___opaque_item_7302;
//   @ffi.Int8()
//   external int _unique___opaque_item_7303;
//   @ffi.Int8()
//   external int _unique___opaque_item_7304;
//   @ffi.Int8()
//   external int _unique___opaque_item_7305;
//   @ffi.Int8()
//   external int _unique___opaque_item_7306;
//   @ffi.Int8()
//   external int _unique___opaque_item_7307;
//   @ffi.Int8()
//   external int _unique___opaque_item_7308;
//   @ffi.Int8()
//   external int _unique___opaque_item_7309;
//   @ffi.Int8()
//   external int _unique___opaque_item_7310;
//   @ffi.Int8()
//   external int _unique___opaque_item_7311;
//   @ffi.Int8()
//   external int _unique___opaque_item_7312;
//   @ffi.Int8()
//   external int _unique___opaque_item_7313;
//   @ffi.Int8()
//   external int _unique___opaque_item_7314;
//   @ffi.Int8()
//   external int _unique___opaque_item_7315;
//   @ffi.Int8()
//   external int _unique___opaque_item_7316;
//   @ffi.Int8()
//   external int _unique___opaque_item_7317;
//   @ffi.Int8()
//   external int _unique___opaque_item_7318;
//   @ffi.Int8()
//   external int _unique___opaque_item_7319;
//   @ffi.Int8()
//   external int _unique___opaque_item_7320;
//   @ffi.Int8()
//   external int _unique___opaque_item_7321;
//   @ffi.Int8()
//   external int _unique___opaque_item_7322;
//   @ffi.Int8()
//   external int _unique___opaque_item_7323;
//   @ffi.Int8()
//   external int _unique___opaque_item_7324;
//   @ffi.Int8()
//   external int _unique___opaque_item_7325;
//   @ffi.Int8()
//   external int _unique___opaque_item_7326;
//   @ffi.Int8()
//   external int _unique___opaque_item_7327;
//   @ffi.Int8()
//   external int _unique___opaque_item_7328;
//   @ffi.Int8()
//   external int _unique___opaque_item_7329;
//   @ffi.Int8()
//   external int _unique___opaque_item_7330;
//   @ffi.Int8()
//   external int _unique___opaque_item_7331;
//   @ffi.Int8()
//   external int _unique___opaque_item_7332;
//   @ffi.Int8()
//   external int _unique___opaque_item_7333;
//   @ffi.Int8()
//   external int _unique___opaque_item_7334;
//   @ffi.Int8()
//   external int _unique___opaque_item_7335;
//   @ffi.Int8()
//   external int _unique___opaque_item_7336;
//   @ffi.Int8()
//   external int _unique___opaque_item_7337;
//   @ffi.Int8()
//   external int _unique___opaque_item_7338;
//   @ffi.Int8()
//   external int _unique___opaque_item_7339;
//   @ffi.Int8()
//   external int _unique___opaque_item_7340;
//   @ffi.Int8()
//   external int _unique___opaque_item_7341;
//   @ffi.Int8()
//   external int _unique___opaque_item_7342;
//   @ffi.Int8()
//   external int _unique___opaque_item_7343;
//   @ffi.Int8()
//   external int _unique___opaque_item_7344;
//   @ffi.Int8()
//   external int _unique___opaque_item_7345;
//   @ffi.Int8()
//   external int _unique___opaque_item_7346;
//   @ffi.Int8()
//   external int _unique___opaque_item_7347;
//   @ffi.Int8()
//   external int _unique___opaque_item_7348;
//   @ffi.Int8()
//   external int _unique___opaque_item_7349;
//   @ffi.Int8()
//   external int _unique___opaque_item_7350;
//   @ffi.Int8()
//   external int _unique___opaque_item_7351;
//   @ffi.Int8()
//   external int _unique___opaque_item_7352;
//   @ffi.Int8()
//   external int _unique___opaque_item_7353;
//   @ffi.Int8()
//   external int _unique___opaque_item_7354;
//   @ffi.Int8()
//   external int _unique___opaque_item_7355;
//   @ffi.Int8()
//   external int _unique___opaque_item_7356;
//   @ffi.Int8()
//   external int _unique___opaque_item_7357;
//   @ffi.Int8()
//   external int _unique___opaque_item_7358;
//   @ffi.Int8()
//   external int _unique___opaque_item_7359;
//   @ffi.Int8()
//   external int _unique___opaque_item_7360;
//   @ffi.Int8()
//   external int _unique___opaque_item_7361;
//   @ffi.Int8()
//   external int _unique___opaque_item_7362;
//   @ffi.Int8()
//   external int _unique___opaque_item_7363;
//   @ffi.Int8()
//   external int _unique___opaque_item_7364;
//   @ffi.Int8()
//   external int _unique___opaque_item_7365;
//   @ffi.Int8()
//   external int _unique___opaque_item_7366;
//   @ffi.Int8()
//   external int _unique___opaque_item_7367;
//   @ffi.Int8()
//   external int _unique___opaque_item_7368;
//   @ffi.Int8()
//   external int _unique___opaque_item_7369;
//   @ffi.Int8()
//   external int _unique___opaque_item_7370;
//   @ffi.Int8()
//   external int _unique___opaque_item_7371;
//   @ffi.Int8()
//   external int _unique___opaque_item_7372;
//   @ffi.Int8()
//   external int _unique___opaque_item_7373;
//   @ffi.Int8()
//   external int _unique___opaque_item_7374;
//   @ffi.Int8()
//   external int _unique___opaque_item_7375;
//   @ffi.Int8()
//   external int _unique___opaque_item_7376;
//   @ffi.Int8()
//   external int _unique___opaque_item_7377;
//   @ffi.Int8()
//   external int _unique___opaque_item_7378;
//   @ffi.Int8()
//   external int _unique___opaque_item_7379;
//   @ffi.Int8()
//   external int _unique___opaque_item_7380;
//   @ffi.Int8()
//   external int _unique___opaque_item_7381;
//   @ffi.Int8()
//   external int _unique___opaque_item_7382;
//   @ffi.Int8()
//   external int _unique___opaque_item_7383;
//   @ffi.Int8()
//   external int _unique___opaque_item_7384;
//   @ffi.Int8()
//   external int _unique___opaque_item_7385;
//   @ffi.Int8()
//   external int _unique___opaque_item_7386;
//   @ffi.Int8()
//   external int _unique___opaque_item_7387;
//   @ffi.Int8()
//   external int _unique___opaque_item_7388;
//   @ffi.Int8()
//   external int _unique___opaque_item_7389;
//   @ffi.Int8()
//   external int _unique___opaque_item_7390;
//   @ffi.Int8()
//   external int _unique___opaque_item_7391;
//   @ffi.Int8()
//   external int _unique___opaque_item_7392;
//   @ffi.Int8()
//   external int _unique___opaque_item_7393;
//   @ffi.Int8()
//   external int _unique___opaque_item_7394;
//   @ffi.Int8()
//   external int _unique___opaque_item_7395;
//   @ffi.Int8()
//   external int _unique___opaque_item_7396;
//   @ffi.Int8()
//   external int _unique___opaque_item_7397;
//   @ffi.Int8()
//   external int _unique___opaque_item_7398;
//   @ffi.Int8()
//   external int _unique___opaque_item_7399;
//   @ffi.Int8()
//   external int _unique___opaque_item_7400;
//   @ffi.Int8()
//   external int _unique___opaque_item_7401;
//   @ffi.Int8()
//   external int _unique___opaque_item_7402;
//   @ffi.Int8()
//   external int _unique___opaque_item_7403;
//   @ffi.Int8()
//   external int _unique___opaque_item_7404;
//   @ffi.Int8()
//   external int _unique___opaque_item_7405;
//   @ffi.Int8()
//   external int _unique___opaque_item_7406;
//   @ffi.Int8()
//   external int _unique___opaque_item_7407;
//   @ffi.Int8()
//   external int _unique___opaque_item_7408;
//   @ffi.Int8()
//   external int _unique___opaque_item_7409;
//   @ffi.Int8()
//   external int _unique___opaque_item_7410;
//   @ffi.Int8()
//   external int _unique___opaque_item_7411;
//   @ffi.Int8()
//   external int _unique___opaque_item_7412;
//   @ffi.Int8()
//   external int _unique___opaque_item_7413;
//   @ffi.Int8()
//   external int _unique___opaque_item_7414;
//   @ffi.Int8()
//   external int _unique___opaque_item_7415;
//   @ffi.Int8()
//   external int _unique___opaque_item_7416;
//   @ffi.Int8()
//   external int _unique___opaque_item_7417;
//   @ffi.Int8()
//   external int _unique___opaque_item_7418;
//   @ffi.Int8()
//   external int _unique___opaque_item_7419;
//   @ffi.Int8()
//   external int _unique___opaque_item_7420;
//   @ffi.Int8()
//   external int _unique___opaque_item_7421;
//   @ffi.Int8()
//   external int _unique___opaque_item_7422;
//   @ffi.Int8()
//   external int _unique___opaque_item_7423;
//   @ffi.Int8()
//   external int _unique___opaque_item_7424;
//   @ffi.Int8()
//   external int _unique___opaque_item_7425;
//   @ffi.Int8()
//   external int _unique___opaque_item_7426;
//   @ffi.Int8()
//   external int _unique___opaque_item_7427;
//   @ffi.Int8()
//   external int _unique___opaque_item_7428;
//   @ffi.Int8()
//   external int _unique___opaque_item_7429;
//   @ffi.Int8()
//   external int _unique___opaque_item_7430;
//   @ffi.Int8()
//   external int _unique___opaque_item_7431;
//   @ffi.Int8()
//   external int _unique___opaque_item_7432;
//   @ffi.Int8()
//   external int _unique___opaque_item_7433;
//   @ffi.Int8()
//   external int _unique___opaque_item_7434;
//   @ffi.Int8()
//   external int _unique___opaque_item_7435;
//   @ffi.Int8()
//   external int _unique___opaque_item_7436;
//   @ffi.Int8()
//   external int _unique___opaque_item_7437;
//   @ffi.Int8()
//   external int _unique___opaque_item_7438;
//   @ffi.Int8()
//   external int _unique___opaque_item_7439;
//   @ffi.Int8()
//   external int _unique___opaque_item_7440;
//   @ffi.Int8()
//   external int _unique___opaque_item_7441;
//   @ffi.Int8()
//   external int _unique___opaque_item_7442;
//   @ffi.Int8()
//   external int _unique___opaque_item_7443;
//   @ffi.Int8()
//   external int _unique___opaque_item_7444;
//   @ffi.Int8()
//   external int _unique___opaque_item_7445;
//   @ffi.Int8()
//   external int _unique___opaque_item_7446;
//   @ffi.Int8()
//   external int _unique___opaque_item_7447;
//   @ffi.Int8()
//   external int _unique___opaque_item_7448;
//   @ffi.Int8()
//   external int _unique___opaque_item_7449;
//   @ffi.Int8()
//   external int _unique___opaque_item_7450;
//   @ffi.Int8()
//   external int _unique___opaque_item_7451;
//   @ffi.Int8()
//   external int _unique___opaque_item_7452;
//   @ffi.Int8()
//   external int _unique___opaque_item_7453;
//   @ffi.Int8()
//   external int _unique___opaque_item_7454;
//   @ffi.Int8()
//   external int _unique___opaque_item_7455;
//   @ffi.Int8()
//   external int _unique___opaque_item_7456;
//   @ffi.Int8()
//   external int _unique___opaque_item_7457;
//   @ffi.Int8()
//   external int _unique___opaque_item_7458;
//   @ffi.Int8()
//   external int _unique___opaque_item_7459;
//   @ffi.Int8()
//   external int _unique___opaque_item_7460;
//   @ffi.Int8()
//   external int _unique___opaque_item_7461;
//   @ffi.Int8()
//   external int _unique___opaque_item_7462;
//   @ffi.Int8()
//   external int _unique___opaque_item_7463;
//   @ffi.Int8()
//   external int _unique___opaque_item_7464;
//   @ffi.Int8()
//   external int _unique___opaque_item_7465;
//   @ffi.Int8()
//   external int _unique___opaque_item_7466;
//   @ffi.Int8()
//   external int _unique___opaque_item_7467;
//   @ffi.Int8()
//   external int _unique___opaque_item_7468;
//   @ffi.Int8()
//   external int _unique___opaque_item_7469;
//   @ffi.Int8()
//   external int _unique___opaque_item_7470;
//   @ffi.Int8()
//   external int _unique___opaque_item_7471;
//   @ffi.Int8()
//   external int _unique___opaque_item_7472;
//   @ffi.Int8()
//   external int _unique___opaque_item_7473;
//   @ffi.Int8()
//   external int _unique___opaque_item_7474;
//   @ffi.Int8()
//   external int _unique___opaque_item_7475;
//   @ffi.Int8()
//   external int _unique___opaque_item_7476;
//   @ffi.Int8()
//   external int _unique___opaque_item_7477;
//   @ffi.Int8()
//   external int _unique___opaque_item_7478;
//   @ffi.Int8()
//   external int _unique___opaque_item_7479;
//   @ffi.Int8()
//   external int _unique___opaque_item_7480;
//   @ffi.Int8()
//   external int _unique___opaque_item_7481;
//   @ffi.Int8()
//   external int _unique___opaque_item_7482;
//   @ffi.Int8()
//   external int _unique___opaque_item_7483;
//   @ffi.Int8()
//   external int _unique___opaque_item_7484;
//   @ffi.Int8()
//   external int _unique___opaque_item_7485;
//   @ffi.Int8()
//   external int _unique___opaque_item_7486;
//   @ffi.Int8()
//   external int _unique___opaque_item_7487;
//   @ffi.Int8()
//   external int _unique___opaque_item_7488;
//   @ffi.Int8()
//   external int _unique___opaque_item_7489;
//   @ffi.Int8()
//   external int _unique___opaque_item_7490;
//   @ffi.Int8()
//   external int _unique___opaque_item_7491;
//   @ffi.Int8()
//   external int _unique___opaque_item_7492;
//   @ffi.Int8()
//   external int _unique___opaque_item_7493;
//   @ffi.Int8()
//   external int _unique___opaque_item_7494;
//   @ffi.Int8()
//   external int _unique___opaque_item_7495;
//   @ffi.Int8()
//   external int _unique___opaque_item_7496;
//   @ffi.Int8()
//   external int _unique___opaque_item_7497;
//   @ffi.Int8()
//   external int _unique___opaque_item_7498;
//   @ffi.Int8()
//   external int _unique___opaque_item_7499;
//   @ffi.Int8()
//   external int _unique___opaque_item_7500;
//   @ffi.Int8()
//   external int _unique___opaque_item_7501;
//   @ffi.Int8()
//   external int _unique___opaque_item_7502;
//   @ffi.Int8()
//   external int _unique___opaque_item_7503;
//   @ffi.Int8()
//   external int _unique___opaque_item_7504;
//   @ffi.Int8()
//   external int _unique___opaque_item_7505;
//   @ffi.Int8()
//   external int _unique___opaque_item_7506;
//   @ffi.Int8()
//   external int _unique___opaque_item_7507;
//   @ffi.Int8()
//   external int _unique___opaque_item_7508;
//   @ffi.Int8()
//   external int _unique___opaque_item_7509;
//   @ffi.Int8()
//   external int _unique___opaque_item_7510;
//   @ffi.Int8()
//   external int _unique___opaque_item_7511;
//   @ffi.Int8()
//   external int _unique___opaque_item_7512;
//   @ffi.Int8()
//   external int _unique___opaque_item_7513;
//   @ffi.Int8()
//   external int _unique___opaque_item_7514;
//   @ffi.Int8()
//   external int _unique___opaque_item_7515;
//   @ffi.Int8()
//   external int _unique___opaque_item_7516;
//   @ffi.Int8()
//   external int _unique___opaque_item_7517;
//   @ffi.Int8()
//   external int _unique___opaque_item_7518;
//   @ffi.Int8()
//   external int _unique___opaque_item_7519;
//   @ffi.Int8()
//   external int _unique___opaque_item_7520;
//   @ffi.Int8()
//   external int _unique___opaque_item_7521;
//   @ffi.Int8()
//   external int _unique___opaque_item_7522;
//   @ffi.Int8()
//   external int _unique___opaque_item_7523;
//   @ffi.Int8()
//   external int _unique___opaque_item_7524;
//   @ffi.Int8()
//   external int _unique___opaque_item_7525;
//   @ffi.Int8()
//   external int _unique___opaque_item_7526;
//   @ffi.Int8()
//   external int _unique___opaque_item_7527;
//   @ffi.Int8()
//   external int _unique___opaque_item_7528;
//   @ffi.Int8()
//   external int _unique___opaque_item_7529;
//   @ffi.Int8()
//   external int _unique___opaque_item_7530;
//   @ffi.Int8()
//   external int _unique___opaque_item_7531;
//   @ffi.Int8()
//   external int _unique___opaque_item_7532;
//   @ffi.Int8()
//   external int _unique___opaque_item_7533;
//   @ffi.Int8()
//   external int _unique___opaque_item_7534;
//   @ffi.Int8()
//   external int _unique___opaque_item_7535;
//   @ffi.Int8()
//   external int _unique___opaque_item_7536;
//   @ffi.Int8()
//   external int _unique___opaque_item_7537;
//   @ffi.Int8()
//   external int _unique___opaque_item_7538;
//   @ffi.Int8()
//   external int _unique___opaque_item_7539;
//   @ffi.Int8()
//   external int _unique___opaque_item_7540;
//   @ffi.Int8()
//   external int _unique___opaque_item_7541;
//   @ffi.Int8()
//   external int _unique___opaque_item_7542;
//   @ffi.Int8()
//   external int _unique___opaque_item_7543;
//   @ffi.Int8()
//   external int _unique___opaque_item_7544;
//   @ffi.Int8()
//   external int _unique___opaque_item_7545;
//   @ffi.Int8()
//   external int _unique___opaque_item_7546;
//   @ffi.Int8()
//   external int _unique___opaque_item_7547;
//   @ffi.Int8()
//   external int _unique___opaque_item_7548;
//   @ffi.Int8()
//   external int _unique___opaque_item_7549;
//   @ffi.Int8()
//   external int _unique___opaque_item_7550;
//   @ffi.Int8()
//   external int _unique___opaque_item_7551;
//   @ffi.Int8()
//   external int _unique___opaque_item_7552;
//   @ffi.Int8()
//   external int _unique___opaque_item_7553;
//   @ffi.Int8()
//   external int _unique___opaque_item_7554;
//   @ffi.Int8()
//   external int _unique___opaque_item_7555;
//   @ffi.Int8()
//   external int _unique___opaque_item_7556;
//   @ffi.Int8()
//   external int _unique___opaque_item_7557;
//   @ffi.Int8()
//   external int _unique___opaque_item_7558;
//   @ffi.Int8()
//   external int _unique___opaque_item_7559;
//   @ffi.Int8()
//   external int _unique___opaque_item_7560;
//   @ffi.Int8()
//   external int _unique___opaque_item_7561;
//   @ffi.Int8()
//   external int _unique___opaque_item_7562;
//   @ffi.Int8()
//   external int _unique___opaque_item_7563;
//   @ffi.Int8()
//   external int _unique___opaque_item_7564;
//   @ffi.Int8()
//   external int _unique___opaque_item_7565;
//   @ffi.Int8()
//   external int _unique___opaque_item_7566;
//   @ffi.Int8()
//   external int _unique___opaque_item_7567;
//   @ffi.Int8()
//   external int _unique___opaque_item_7568;
//   @ffi.Int8()
//   external int _unique___opaque_item_7569;
//   @ffi.Int8()
//   external int _unique___opaque_item_7570;
//   @ffi.Int8()
//   external int _unique___opaque_item_7571;
//   @ffi.Int8()
//   external int _unique___opaque_item_7572;
//   @ffi.Int8()
//   external int _unique___opaque_item_7573;
//   @ffi.Int8()
//   external int _unique___opaque_item_7574;
//   @ffi.Int8()
//   external int _unique___opaque_item_7575;
//   @ffi.Int8()
//   external int _unique___opaque_item_7576;
//   @ffi.Int8()
//   external int _unique___opaque_item_7577;
//   @ffi.Int8()
//   external int _unique___opaque_item_7578;
//   @ffi.Int8()
//   external int _unique___opaque_item_7579;
//   @ffi.Int8()
//   external int _unique___opaque_item_7580;
//   @ffi.Int8()
//   external int _unique___opaque_item_7581;
//   @ffi.Int8()
//   external int _unique___opaque_item_7582;
//   @ffi.Int8()
//   external int _unique___opaque_item_7583;
//   @ffi.Int8()
//   external int _unique___opaque_item_7584;
//   @ffi.Int8()
//   external int _unique___opaque_item_7585;
//   @ffi.Int8()
//   external int _unique___opaque_item_7586;
//   @ffi.Int8()
//   external int _unique___opaque_item_7587;
//   @ffi.Int8()
//   external int _unique___opaque_item_7588;
//   @ffi.Int8()
//   external int _unique___opaque_item_7589;
//   @ffi.Int8()
//   external int _unique___opaque_item_7590;
//   @ffi.Int8()
//   external int _unique___opaque_item_7591;
//   @ffi.Int8()
//   external int _unique___opaque_item_7592;
//   @ffi.Int8()
//   external int _unique___opaque_item_7593;
//   @ffi.Int8()
//   external int _unique___opaque_item_7594;
//   @ffi.Int8()
//   external int _unique___opaque_item_7595;
//   @ffi.Int8()
//   external int _unique___opaque_item_7596;
//   @ffi.Int8()
//   external int _unique___opaque_item_7597;
//   @ffi.Int8()
//   external int _unique___opaque_item_7598;
//   @ffi.Int8()
//   external int _unique___opaque_item_7599;
//   @ffi.Int8()
//   external int _unique___opaque_item_7600;
//   @ffi.Int8()
//   external int _unique___opaque_item_7601;
//   @ffi.Int8()
//   external int _unique___opaque_item_7602;
//   @ffi.Int8()
//   external int _unique___opaque_item_7603;
//   @ffi.Int8()
//   external int _unique___opaque_item_7604;
//   @ffi.Int8()
//   external int _unique___opaque_item_7605;
//   @ffi.Int8()
//   external int _unique___opaque_item_7606;
//   @ffi.Int8()
//   external int _unique___opaque_item_7607;
//   @ffi.Int8()
//   external int _unique___opaque_item_7608;
//   @ffi.Int8()
//   external int _unique___opaque_item_7609;
//   @ffi.Int8()
//   external int _unique___opaque_item_7610;
//   @ffi.Int8()
//   external int _unique___opaque_item_7611;
//   @ffi.Int8()
//   external int _unique___opaque_item_7612;
//   @ffi.Int8()
//   external int _unique___opaque_item_7613;
//   @ffi.Int8()
//   external int _unique___opaque_item_7614;
//   @ffi.Int8()
//   external int _unique___opaque_item_7615;
//   @ffi.Int8()
//   external int _unique___opaque_item_7616;
//   @ffi.Int8()
//   external int _unique___opaque_item_7617;
//   @ffi.Int8()
//   external int _unique___opaque_item_7618;
//   @ffi.Int8()
//   external int _unique___opaque_item_7619;
//   @ffi.Int8()
//   external int _unique___opaque_item_7620;
//   @ffi.Int8()
//   external int _unique___opaque_item_7621;
//   @ffi.Int8()
//   external int _unique___opaque_item_7622;
//   @ffi.Int8()
//   external int _unique___opaque_item_7623;
//   @ffi.Int8()
//   external int _unique___opaque_item_7624;
//   @ffi.Int8()
//   external int _unique___opaque_item_7625;
//   @ffi.Int8()
//   external int _unique___opaque_item_7626;
//   @ffi.Int8()
//   external int _unique___opaque_item_7627;
//   @ffi.Int8()
//   external int _unique___opaque_item_7628;
//   @ffi.Int8()
//   external int _unique___opaque_item_7629;
//   @ffi.Int8()
//   external int _unique___opaque_item_7630;
//   @ffi.Int8()
//   external int _unique___opaque_item_7631;
//   @ffi.Int8()
//   external int _unique___opaque_item_7632;
//   @ffi.Int8()
//   external int _unique___opaque_item_7633;
//   @ffi.Int8()
//   external int _unique___opaque_item_7634;
//   @ffi.Int8()
//   external int _unique___opaque_item_7635;
//   @ffi.Int8()
//   external int _unique___opaque_item_7636;
//   @ffi.Int8()
//   external int _unique___opaque_item_7637;
//   @ffi.Int8()
//   external int _unique___opaque_item_7638;
//   @ffi.Int8()
//   external int _unique___opaque_item_7639;
//   @ffi.Int8()
//   external int _unique___opaque_item_7640;
//   @ffi.Int8()
//   external int _unique___opaque_item_7641;
//   @ffi.Int8()
//   external int _unique___opaque_item_7642;
//   @ffi.Int8()
//   external int _unique___opaque_item_7643;
//   @ffi.Int8()
//   external int _unique___opaque_item_7644;
//   @ffi.Int8()
//   external int _unique___opaque_item_7645;
//   @ffi.Int8()
//   external int _unique___opaque_item_7646;
//   @ffi.Int8()
//   external int _unique___opaque_item_7647;
//   @ffi.Int8()
//   external int _unique___opaque_item_7648;
//   @ffi.Int8()
//   external int _unique___opaque_item_7649;
//   @ffi.Int8()
//   external int _unique___opaque_item_7650;
//   @ffi.Int8()
//   external int _unique___opaque_item_7651;
//   @ffi.Int8()
//   external int _unique___opaque_item_7652;
//   @ffi.Int8()
//   external int _unique___opaque_item_7653;
//   @ffi.Int8()
//   external int _unique___opaque_item_7654;
//   @ffi.Int8()
//   external int _unique___opaque_item_7655;
//   @ffi.Int8()
//   external int _unique___opaque_item_7656;
//   @ffi.Int8()
//   external int _unique___opaque_item_7657;
//   @ffi.Int8()
//   external int _unique___opaque_item_7658;
//   @ffi.Int8()
//   external int _unique___opaque_item_7659;
//   @ffi.Int8()
//   external int _unique___opaque_item_7660;
//   @ffi.Int8()
//   external int _unique___opaque_item_7661;
//   @ffi.Int8()
//   external int _unique___opaque_item_7662;
//   @ffi.Int8()
//   external int _unique___opaque_item_7663;
//   @ffi.Int8()
//   external int _unique___opaque_item_7664;
//   @ffi.Int8()
//   external int _unique___opaque_item_7665;
//   @ffi.Int8()
//   external int _unique___opaque_item_7666;
//   @ffi.Int8()
//   external int _unique___opaque_item_7667;
//   @ffi.Int8()
//   external int _unique___opaque_item_7668;
//   @ffi.Int8()
//   external int _unique___opaque_item_7669;
//   @ffi.Int8()
//   external int _unique___opaque_item_7670;
//   @ffi.Int8()
//   external int _unique___opaque_item_7671;
//   @ffi.Int8()
//   external int _unique___opaque_item_7672;
//   @ffi.Int8()
//   external int _unique___opaque_item_7673;
//   @ffi.Int8()
//   external int _unique___opaque_item_7674;
//   @ffi.Int8()
//   external int _unique___opaque_item_7675;
//   @ffi.Int8()
//   external int _unique___opaque_item_7676;
//   @ffi.Int8()
//   external int _unique___opaque_item_7677;
//   @ffi.Int8()
//   external int _unique___opaque_item_7678;
//   @ffi.Int8()
//   external int _unique___opaque_item_7679;
//   @ffi.Int8()
//   external int _unique___opaque_item_7680;
//   @ffi.Int8()
//   external int _unique___opaque_item_7681;
//   @ffi.Int8()
//   external int _unique___opaque_item_7682;
//   @ffi.Int8()
//   external int _unique___opaque_item_7683;
//   @ffi.Int8()
//   external int _unique___opaque_item_7684;
//   @ffi.Int8()
//   external int _unique___opaque_item_7685;
//   @ffi.Int8()
//   external int _unique___opaque_item_7686;
//   @ffi.Int8()
//   external int _unique___opaque_item_7687;
//   @ffi.Int8()
//   external int _unique___opaque_item_7688;
//   @ffi.Int8()
//   external int _unique___opaque_item_7689;
//   @ffi.Int8()
//   external int _unique___opaque_item_7690;
//   @ffi.Int8()
//   external int _unique___opaque_item_7691;
//   @ffi.Int8()
//   external int _unique___opaque_item_7692;
//   @ffi.Int8()
//   external int _unique___opaque_item_7693;
//   @ffi.Int8()
//   external int _unique___opaque_item_7694;
//   @ffi.Int8()
//   external int _unique___opaque_item_7695;
//   @ffi.Int8()
//   external int _unique___opaque_item_7696;
//   @ffi.Int8()
//   external int _unique___opaque_item_7697;
//   @ffi.Int8()
//   external int _unique___opaque_item_7698;
//   @ffi.Int8()
//   external int _unique___opaque_item_7699;
//   @ffi.Int8()
//   external int _unique___opaque_item_7700;
//   @ffi.Int8()
//   external int _unique___opaque_item_7701;
//   @ffi.Int8()
//   external int _unique___opaque_item_7702;
//   @ffi.Int8()
//   external int _unique___opaque_item_7703;
//   @ffi.Int8()
//   external int _unique___opaque_item_7704;
//   @ffi.Int8()
//   external int _unique___opaque_item_7705;
//   @ffi.Int8()
//   external int _unique___opaque_item_7706;
//   @ffi.Int8()
//   external int _unique___opaque_item_7707;
//   @ffi.Int8()
//   external int _unique___opaque_item_7708;
//   @ffi.Int8()
//   external int _unique___opaque_item_7709;
//   @ffi.Int8()
//   external int _unique___opaque_item_7710;
//   @ffi.Int8()
//   external int _unique___opaque_item_7711;
//   @ffi.Int8()
//   external int _unique___opaque_item_7712;
//   @ffi.Int8()
//   external int _unique___opaque_item_7713;
//   @ffi.Int8()
//   external int _unique___opaque_item_7714;
//   @ffi.Int8()
//   external int _unique___opaque_item_7715;
//   @ffi.Int8()
//   external int _unique___opaque_item_7716;
//   @ffi.Int8()
//   external int _unique___opaque_item_7717;
//   @ffi.Int8()
//   external int _unique___opaque_item_7718;
//   @ffi.Int8()
//   external int _unique___opaque_item_7719;
//   @ffi.Int8()
//   external int _unique___opaque_item_7720;
//   @ffi.Int8()
//   external int _unique___opaque_item_7721;
//   @ffi.Int8()
//   external int _unique___opaque_item_7722;
//   @ffi.Int8()
//   external int _unique___opaque_item_7723;
//   @ffi.Int8()
//   external int _unique___opaque_item_7724;
//   @ffi.Int8()
//   external int _unique___opaque_item_7725;
//   @ffi.Int8()
//   external int _unique___opaque_item_7726;
//   @ffi.Int8()
//   external int _unique___opaque_item_7727;
//   @ffi.Int8()
//   external int _unique___opaque_item_7728;
//   @ffi.Int8()
//   external int _unique___opaque_item_7729;
//   @ffi.Int8()
//   external int _unique___opaque_item_7730;
//   @ffi.Int8()
//   external int _unique___opaque_item_7731;
//   @ffi.Int8()
//   external int _unique___opaque_item_7732;
//   @ffi.Int8()
//   external int _unique___opaque_item_7733;
//   @ffi.Int8()
//   external int _unique___opaque_item_7734;
//   @ffi.Int8()
//   external int _unique___opaque_item_7735;
//   @ffi.Int8()
//   external int _unique___opaque_item_7736;
//   @ffi.Int8()
//   external int _unique___opaque_item_7737;
//   @ffi.Int8()
//   external int _unique___opaque_item_7738;
//   @ffi.Int8()
//   external int _unique___opaque_item_7739;
//   @ffi.Int8()
//   external int _unique___opaque_item_7740;
//   @ffi.Int8()
//   external int _unique___opaque_item_7741;
//   @ffi.Int8()
//   external int _unique___opaque_item_7742;
//   @ffi.Int8()
//   external int _unique___opaque_item_7743;
//   @ffi.Int8()
//   external int _unique___opaque_item_7744;
//   @ffi.Int8()
//   external int _unique___opaque_item_7745;
//   @ffi.Int8()
//   external int _unique___opaque_item_7746;
//   @ffi.Int8()
//   external int _unique___opaque_item_7747;
//   @ffi.Int8()
//   external int _unique___opaque_item_7748;
//   @ffi.Int8()
//   external int _unique___opaque_item_7749;
//   @ffi.Int8()
//   external int _unique___opaque_item_7750;
//   @ffi.Int8()
//   external int _unique___opaque_item_7751;
//   @ffi.Int8()
//   external int _unique___opaque_item_7752;
//   @ffi.Int8()
//   external int _unique___opaque_item_7753;
//   @ffi.Int8()
//   external int _unique___opaque_item_7754;
//   @ffi.Int8()
//   external int _unique___opaque_item_7755;
//   @ffi.Int8()
//   external int _unique___opaque_item_7756;
//   @ffi.Int8()
//   external int _unique___opaque_item_7757;
//   @ffi.Int8()
//   external int _unique___opaque_item_7758;
//   @ffi.Int8()
//   external int _unique___opaque_item_7759;
//   @ffi.Int8()
//   external int _unique___opaque_item_7760;
//   @ffi.Int8()
//   external int _unique___opaque_item_7761;
//   @ffi.Int8()
//   external int _unique___opaque_item_7762;
//   @ffi.Int8()
//   external int _unique___opaque_item_7763;
//   @ffi.Int8()
//   external int _unique___opaque_item_7764;
//   @ffi.Int8()
//   external int _unique___opaque_item_7765;
//   @ffi.Int8()
//   external int _unique___opaque_item_7766;
//   @ffi.Int8()
//   external int _unique___opaque_item_7767;
//   @ffi.Int8()
//   external int _unique___opaque_item_7768;
//   @ffi.Int8()
//   external int _unique___opaque_item_7769;
//   @ffi.Int8()
//   external int _unique___opaque_item_7770;
//   @ffi.Int8()
//   external int _unique___opaque_item_7771;
//   @ffi.Int8()
//   external int _unique___opaque_item_7772;
//   @ffi.Int8()
//   external int _unique___opaque_item_7773;
//   @ffi.Int8()
//   external int _unique___opaque_item_7774;
//   @ffi.Int8()
//   external int _unique___opaque_item_7775;
//   @ffi.Int8()
//   external int _unique___opaque_item_7776;
//   @ffi.Int8()
//   external int _unique___opaque_item_7777;
//   @ffi.Int8()
//   external int _unique___opaque_item_7778;
//   @ffi.Int8()
//   external int _unique___opaque_item_7779;
//   @ffi.Int8()
//   external int _unique___opaque_item_7780;
//   @ffi.Int8()
//   external int _unique___opaque_item_7781;
//   @ffi.Int8()
//   external int _unique___opaque_item_7782;
//   @ffi.Int8()
//   external int _unique___opaque_item_7783;
//   @ffi.Int8()
//   external int _unique___opaque_item_7784;
//   @ffi.Int8()
//   external int _unique___opaque_item_7785;
//   @ffi.Int8()
//   external int _unique___opaque_item_7786;
//   @ffi.Int8()
//   external int _unique___opaque_item_7787;
//   @ffi.Int8()
//   external int _unique___opaque_item_7788;
//   @ffi.Int8()
//   external int _unique___opaque_item_7789;
//   @ffi.Int8()
//   external int _unique___opaque_item_7790;
//   @ffi.Int8()
//   external int _unique___opaque_item_7791;
//   @ffi.Int8()
//   external int _unique___opaque_item_7792;
//   @ffi.Int8()
//   external int _unique___opaque_item_7793;
//   @ffi.Int8()
//   external int _unique___opaque_item_7794;
//   @ffi.Int8()
//   external int _unique___opaque_item_7795;
//   @ffi.Int8()
//   external int _unique___opaque_item_7796;
//   @ffi.Int8()
//   external int _unique___opaque_item_7797;
//   @ffi.Int8()
//   external int _unique___opaque_item_7798;
//   @ffi.Int8()
//   external int _unique___opaque_item_7799;
//   @ffi.Int8()
//   external int _unique___opaque_item_7800;
//   @ffi.Int8()
//   external int _unique___opaque_item_7801;
//   @ffi.Int8()
//   external int _unique___opaque_item_7802;
//   @ffi.Int8()
//   external int _unique___opaque_item_7803;
//   @ffi.Int8()
//   external int _unique___opaque_item_7804;
//   @ffi.Int8()
//   external int _unique___opaque_item_7805;
//   @ffi.Int8()
//   external int _unique___opaque_item_7806;
//   @ffi.Int8()
//   external int _unique___opaque_item_7807;
//   @ffi.Int8()
//   external int _unique___opaque_item_7808;
//   @ffi.Int8()
//   external int _unique___opaque_item_7809;
//   @ffi.Int8()
//   external int _unique___opaque_item_7810;
//   @ffi.Int8()
//   external int _unique___opaque_item_7811;
//   @ffi.Int8()
//   external int _unique___opaque_item_7812;
//   @ffi.Int8()
//   external int _unique___opaque_item_7813;
//   @ffi.Int8()
//   external int _unique___opaque_item_7814;
//   @ffi.Int8()
//   external int _unique___opaque_item_7815;
//   @ffi.Int8()
//   external int _unique___opaque_item_7816;
//   @ffi.Int8()
//   external int _unique___opaque_item_7817;
//   @ffi.Int8()
//   external int _unique___opaque_item_7818;
//   @ffi.Int8()
//   external int _unique___opaque_item_7819;
//   @ffi.Int8()
//   external int _unique___opaque_item_7820;
//   @ffi.Int8()
//   external int _unique___opaque_item_7821;
//   @ffi.Int8()
//   external int _unique___opaque_item_7822;
//   @ffi.Int8()
//   external int _unique___opaque_item_7823;
//   @ffi.Int8()
//   external int _unique___opaque_item_7824;
//   @ffi.Int8()
//   external int _unique___opaque_item_7825;
//   @ffi.Int8()
//   external int _unique___opaque_item_7826;
//   @ffi.Int8()
//   external int _unique___opaque_item_7827;
//   @ffi.Int8()
//   external int _unique___opaque_item_7828;
//   @ffi.Int8()
//   external int _unique___opaque_item_7829;
//   @ffi.Int8()
//   external int _unique___opaque_item_7830;
//   @ffi.Int8()
//   external int _unique___opaque_item_7831;
//   @ffi.Int8()
//   external int _unique___opaque_item_7832;
//   @ffi.Int8()
//   external int _unique___opaque_item_7833;
//   @ffi.Int8()
//   external int _unique___opaque_item_7834;
//   @ffi.Int8()
//   external int _unique___opaque_item_7835;
//   @ffi.Int8()
//   external int _unique___opaque_item_7836;
//   @ffi.Int8()
//   external int _unique___opaque_item_7837;
//   @ffi.Int8()
//   external int _unique___opaque_item_7838;
//   @ffi.Int8()
//   external int _unique___opaque_item_7839;
//   @ffi.Int8()
//   external int _unique___opaque_item_7840;
//   @ffi.Int8()
//   external int _unique___opaque_item_7841;
//   @ffi.Int8()
//   external int _unique___opaque_item_7842;
//   @ffi.Int8()
//   external int _unique___opaque_item_7843;
//   @ffi.Int8()
//   external int _unique___opaque_item_7844;
//   @ffi.Int8()
//   external int _unique___opaque_item_7845;
//   @ffi.Int8()
//   external int _unique___opaque_item_7846;
//   @ffi.Int8()
//   external int _unique___opaque_item_7847;
//   @ffi.Int8()
//   external int _unique___opaque_item_7848;
//   @ffi.Int8()
//   external int _unique___opaque_item_7849;
//   @ffi.Int8()
//   external int _unique___opaque_item_7850;
//   @ffi.Int8()
//   external int _unique___opaque_item_7851;
//   @ffi.Int8()
//   external int _unique___opaque_item_7852;
//   @ffi.Int8()
//   external int _unique___opaque_item_7853;
//   @ffi.Int8()
//   external int _unique___opaque_item_7854;
//   @ffi.Int8()
//   external int _unique___opaque_item_7855;
//   @ffi.Int8()
//   external int _unique___opaque_item_7856;
//   @ffi.Int8()
//   external int _unique___opaque_item_7857;
//   @ffi.Int8()
//   external int _unique___opaque_item_7858;
//   @ffi.Int8()
//   external int _unique___opaque_item_7859;
//   @ffi.Int8()
//   external int _unique___opaque_item_7860;
//   @ffi.Int8()
//   external int _unique___opaque_item_7861;
//   @ffi.Int8()
//   external int _unique___opaque_item_7862;
//   @ffi.Int8()
//   external int _unique___opaque_item_7863;
//   @ffi.Int8()
//   external int _unique___opaque_item_7864;
//   @ffi.Int8()
//   external int _unique___opaque_item_7865;
//   @ffi.Int8()
//   external int _unique___opaque_item_7866;
//   @ffi.Int8()
//   external int _unique___opaque_item_7867;
//   @ffi.Int8()
//   external int _unique___opaque_item_7868;
//   @ffi.Int8()
//   external int _unique___opaque_item_7869;
//   @ffi.Int8()
//   external int _unique___opaque_item_7870;
//   @ffi.Int8()
//   external int _unique___opaque_item_7871;
//   @ffi.Int8()
//   external int _unique___opaque_item_7872;
//   @ffi.Int8()
//   external int _unique___opaque_item_7873;
//   @ffi.Int8()
//   external int _unique___opaque_item_7874;
//   @ffi.Int8()
//   external int _unique___opaque_item_7875;
//   @ffi.Int8()
//   external int _unique___opaque_item_7876;
//   @ffi.Int8()
//   external int _unique___opaque_item_7877;
//   @ffi.Int8()
//   external int _unique___opaque_item_7878;
//   @ffi.Int8()
//   external int _unique___opaque_item_7879;
//   @ffi.Int8()
//   external int _unique___opaque_item_7880;
//   @ffi.Int8()
//   external int _unique___opaque_item_7881;
//   @ffi.Int8()
//   external int _unique___opaque_item_7882;
//   @ffi.Int8()
//   external int _unique___opaque_item_7883;
//   @ffi.Int8()
//   external int _unique___opaque_item_7884;
//   @ffi.Int8()
//   external int _unique___opaque_item_7885;
//   @ffi.Int8()
//   external int _unique___opaque_item_7886;
//   @ffi.Int8()
//   external int _unique___opaque_item_7887;
//   @ffi.Int8()
//   external int _unique___opaque_item_7888;
//   @ffi.Int8()
//   external int _unique___opaque_item_7889;
//   @ffi.Int8()
//   external int _unique___opaque_item_7890;
//   @ffi.Int8()
//   external int _unique___opaque_item_7891;
//   @ffi.Int8()
//   external int _unique___opaque_item_7892;
//   @ffi.Int8()
//   external int _unique___opaque_item_7893;
//   @ffi.Int8()
//   external int _unique___opaque_item_7894;
//   @ffi.Int8()
//   external int _unique___opaque_item_7895;
//   @ffi.Int8()
//   external int _unique___opaque_item_7896;
//   @ffi.Int8()
//   external int _unique___opaque_item_7897;
//   @ffi.Int8()
//   external int _unique___opaque_item_7898;
//   @ffi.Int8()
//   external int _unique___opaque_item_7899;
//   @ffi.Int8()
//   external int _unique___opaque_item_7900;
//   @ffi.Int8()
//   external int _unique___opaque_item_7901;
//   @ffi.Int8()
//   external int _unique___opaque_item_7902;
//   @ffi.Int8()
//   external int _unique___opaque_item_7903;
//   @ffi.Int8()
//   external int _unique___opaque_item_7904;
//   @ffi.Int8()
//   external int _unique___opaque_item_7905;
//   @ffi.Int8()
//   external int _unique___opaque_item_7906;
//   @ffi.Int8()
//   external int _unique___opaque_item_7907;
//   @ffi.Int8()
//   external int _unique___opaque_item_7908;
//   @ffi.Int8()
//   external int _unique___opaque_item_7909;
//   @ffi.Int8()
//   external int _unique___opaque_item_7910;
//   @ffi.Int8()
//   external int _unique___opaque_item_7911;
//   @ffi.Int8()
//   external int _unique___opaque_item_7912;
//   @ffi.Int8()
//   external int _unique___opaque_item_7913;
//   @ffi.Int8()
//   external int _unique___opaque_item_7914;
//   @ffi.Int8()
//   external int _unique___opaque_item_7915;
//   @ffi.Int8()
//   external int _unique___opaque_item_7916;
//   @ffi.Int8()
//   external int _unique___opaque_item_7917;
//   @ffi.Int8()
//   external int _unique___opaque_item_7918;
//   @ffi.Int8()
//   external int _unique___opaque_item_7919;
//   @ffi.Int8()
//   external int _unique___opaque_item_7920;
//   @ffi.Int8()
//   external int _unique___opaque_item_7921;
//   @ffi.Int8()
//   external int _unique___opaque_item_7922;
//   @ffi.Int8()
//   external int _unique___opaque_item_7923;
//   @ffi.Int8()
//   external int _unique___opaque_item_7924;
//   @ffi.Int8()
//   external int _unique___opaque_item_7925;
//   @ffi.Int8()
//   external int _unique___opaque_item_7926;
//   @ffi.Int8()
//   external int _unique___opaque_item_7927;
//   @ffi.Int8()
//   external int _unique___opaque_item_7928;
//   @ffi.Int8()
//   external int _unique___opaque_item_7929;
//   @ffi.Int8()
//   external int _unique___opaque_item_7930;
//   @ffi.Int8()
//   external int _unique___opaque_item_7931;
//   @ffi.Int8()
//   external int _unique___opaque_item_7932;
//   @ffi.Int8()
//   external int _unique___opaque_item_7933;
//   @ffi.Int8()
//   external int _unique___opaque_item_7934;
//   @ffi.Int8()
//   external int _unique___opaque_item_7935;
//   @ffi.Int8()
//   external int _unique___opaque_item_7936;
//   @ffi.Int8()
//   external int _unique___opaque_item_7937;
//   @ffi.Int8()
//   external int _unique___opaque_item_7938;
//   @ffi.Int8()
//   external int _unique___opaque_item_7939;
//   @ffi.Int8()
//   external int _unique___opaque_item_7940;
//   @ffi.Int8()
//   external int _unique___opaque_item_7941;
//   @ffi.Int8()
//   external int _unique___opaque_item_7942;
//   @ffi.Int8()
//   external int _unique___opaque_item_7943;
//   @ffi.Int8()
//   external int _unique___opaque_item_7944;
//   @ffi.Int8()
//   external int _unique___opaque_item_7945;
//   @ffi.Int8()
//   external int _unique___opaque_item_7946;
//   @ffi.Int8()
//   external int _unique___opaque_item_7947;
//   @ffi.Int8()
//   external int _unique___opaque_item_7948;
//   @ffi.Int8()
//   external int _unique___opaque_item_7949;
//   @ffi.Int8()
//   external int _unique___opaque_item_7950;
//   @ffi.Int8()
//   external int _unique___opaque_item_7951;
//   @ffi.Int8()
//   external int _unique___opaque_item_7952;
//   @ffi.Int8()
//   external int _unique___opaque_item_7953;
//   @ffi.Int8()
//   external int _unique___opaque_item_7954;
//   @ffi.Int8()
//   external int _unique___opaque_item_7955;
//   @ffi.Int8()
//   external int _unique___opaque_item_7956;
//   @ffi.Int8()
//   external int _unique___opaque_item_7957;
//   @ffi.Int8()
//   external int _unique___opaque_item_7958;
//   @ffi.Int8()
//   external int _unique___opaque_item_7959;
//   @ffi.Int8()
//   external int _unique___opaque_item_7960;
//   @ffi.Int8()
//   external int _unique___opaque_item_7961;
//   @ffi.Int8()
//   external int _unique___opaque_item_7962;
//   @ffi.Int8()
//   external int _unique___opaque_item_7963;
//   @ffi.Int8()
//   external int _unique___opaque_item_7964;
//   @ffi.Int8()
//   external int _unique___opaque_item_7965;
//   @ffi.Int8()
//   external int _unique___opaque_item_7966;
//   @ffi.Int8()
//   external int _unique___opaque_item_7967;
//   @ffi.Int8()
//   external int _unique___opaque_item_7968;
//   @ffi.Int8()
//   external int _unique___opaque_item_7969;
//   @ffi.Int8()
//   external int _unique___opaque_item_7970;
//   @ffi.Int8()
//   external int _unique___opaque_item_7971;
//   @ffi.Int8()
//   external int _unique___opaque_item_7972;
//   @ffi.Int8()
//   external int _unique___opaque_item_7973;
//   @ffi.Int8()
//   external int _unique___opaque_item_7974;
//   @ffi.Int8()
//   external int _unique___opaque_item_7975;
//   @ffi.Int8()
//   external int _unique___opaque_item_7976;
//   @ffi.Int8()
//   external int _unique___opaque_item_7977;
//   @ffi.Int8()
//   external int _unique___opaque_item_7978;
//   @ffi.Int8()
//   external int _unique___opaque_item_7979;
//   @ffi.Int8()
//   external int _unique___opaque_item_7980;
//   @ffi.Int8()
//   external int _unique___opaque_item_7981;
//   @ffi.Int8()
//   external int _unique___opaque_item_7982;
//   @ffi.Int8()
//   external int _unique___opaque_item_7983;
//   @ffi.Int8()
//   external int _unique___opaque_item_7984;
//   @ffi.Int8()
//   external int _unique___opaque_item_7985;
//   @ffi.Int8()
//   external int _unique___opaque_item_7986;
//   @ffi.Int8()
//   external int _unique___opaque_item_7987;
//   @ffi.Int8()
//   external int _unique___opaque_item_7988;
//   @ffi.Int8()
//   external int _unique___opaque_item_7989;
//   @ffi.Int8()
//   external int _unique___opaque_item_7990;
//   @ffi.Int8()
//   external int _unique___opaque_item_7991;
//   @ffi.Int8()
//   external int _unique___opaque_item_7992;
//   @ffi.Int8()
//   external int _unique___opaque_item_7993;
//   @ffi.Int8()
//   external int _unique___opaque_item_7994;
//   @ffi.Int8()
//   external int _unique___opaque_item_7995;
//   @ffi.Int8()
//   external int _unique___opaque_item_7996;
//   @ffi.Int8()
//   external int _unique___opaque_item_7997;
//   @ffi.Int8()
//   external int _unique___opaque_item_7998;
//   @ffi.Int8()
//   external int _unique___opaque_item_7999;
//   @ffi.Int8()
//   external int _unique___opaque_item_8000;
//   @ffi.Int8()
//   external int _unique___opaque_item_8001;
//   @ffi.Int8()
//   external int _unique___opaque_item_8002;
//   @ffi.Int8()
//   external int _unique___opaque_item_8003;
//   @ffi.Int8()
//   external int _unique___opaque_item_8004;
//   @ffi.Int8()
//   external int _unique___opaque_item_8005;
//   @ffi.Int8()
//   external int _unique___opaque_item_8006;
//   @ffi.Int8()
//   external int _unique___opaque_item_8007;
//   @ffi.Int8()
//   external int _unique___opaque_item_8008;
//   @ffi.Int8()
//   external int _unique___opaque_item_8009;
//   @ffi.Int8()
//   external int _unique___opaque_item_8010;
//   @ffi.Int8()
//   external int _unique___opaque_item_8011;
//   @ffi.Int8()
//   external int _unique___opaque_item_8012;
//   @ffi.Int8()
//   external int _unique___opaque_item_8013;
//   @ffi.Int8()
//   external int _unique___opaque_item_8014;
//   @ffi.Int8()
//   external int _unique___opaque_item_8015;
//   @ffi.Int8()
//   external int _unique___opaque_item_8016;
//   @ffi.Int8()
//   external int _unique___opaque_item_8017;
//   @ffi.Int8()
//   external int _unique___opaque_item_8018;
//   @ffi.Int8()
//   external int _unique___opaque_item_8019;
//   @ffi.Int8()
//   external int _unique___opaque_item_8020;
//   @ffi.Int8()
//   external int _unique___opaque_item_8021;
//   @ffi.Int8()
//   external int _unique___opaque_item_8022;
//   @ffi.Int8()
//   external int _unique___opaque_item_8023;
//   @ffi.Int8()
//   external int _unique___opaque_item_8024;
//   @ffi.Int8()
//   external int _unique___opaque_item_8025;
//   @ffi.Int8()
//   external int _unique___opaque_item_8026;
//   @ffi.Int8()
//   external int _unique___opaque_item_8027;
//   @ffi.Int8()
//   external int _unique___opaque_item_8028;
//   @ffi.Int8()
//   external int _unique___opaque_item_8029;
//   @ffi.Int8()
//   external int _unique___opaque_item_8030;
//   @ffi.Int8()
//   external int _unique___opaque_item_8031;
//   @ffi.Int8()
//   external int _unique___opaque_item_8032;
//   @ffi.Int8()
//   external int _unique___opaque_item_8033;
//   @ffi.Int8()
//   external int _unique___opaque_item_8034;
//   @ffi.Int8()
//   external int _unique___opaque_item_8035;
//   @ffi.Int8()
//   external int _unique___opaque_item_8036;
//   @ffi.Int8()
//   external int _unique___opaque_item_8037;
//   @ffi.Int8()
//   external int _unique___opaque_item_8038;
//   @ffi.Int8()
//   external int _unique___opaque_item_8039;
//   @ffi.Int8()
//   external int _unique___opaque_item_8040;
//   @ffi.Int8()
//   external int _unique___opaque_item_8041;
//   @ffi.Int8()
//   external int _unique___opaque_item_8042;
//   @ffi.Int8()
//   external int _unique___opaque_item_8043;
//   @ffi.Int8()
//   external int _unique___opaque_item_8044;
//   @ffi.Int8()
//   external int _unique___opaque_item_8045;
//   @ffi.Int8()
//   external int _unique___opaque_item_8046;
//   @ffi.Int8()
//   external int _unique___opaque_item_8047;
//   @ffi.Int8()
//   external int _unique___opaque_item_8048;
//   @ffi.Int8()
//   external int _unique___opaque_item_8049;
//   @ffi.Int8()
//   external int _unique___opaque_item_8050;
//   @ffi.Int8()
//   external int _unique___opaque_item_8051;
//   @ffi.Int8()
//   external int _unique___opaque_item_8052;
//   @ffi.Int8()
//   external int _unique___opaque_item_8053;
//   @ffi.Int8()
//   external int _unique___opaque_item_8054;
//   @ffi.Int8()
//   external int _unique___opaque_item_8055;
//   @ffi.Int8()
//   external int _unique___opaque_item_8056;
//   @ffi.Int8()
//   external int _unique___opaque_item_8057;
//   @ffi.Int8()
//   external int _unique___opaque_item_8058;
//   @ffi.Int8()
//   external int _unique___opaque_item_8059;
//   @ffi.Int8()
//   external int _unique___opaque_item_8060;
//   @ffi.Int8()
//   external int _unique___opaque_item_8061;
//   @ffi.Int8()
//   external int _unique___opaque_item_8062;
//   @ffi.Int8()
//   external int _unique___opaque_item_8063;
//   @ffi.Int8()
//   external int _unique___opaque_item_8064;
//   @ffi.Int8()
//   external int _unique___opaque_item_8065;
//   @ffi.Int8()
//   external int _unique___opaque_item_8066;
//   @ffi.Int8()
//   external int _unique___opaque_item_8067;
//   @ffi.Int8()
//   external int _unique___opaque_item_8068;
//   @ffi.Int8()
//   external int _unique___opaque_item_8069;
//   @ffi.Int8()
//   external int _unique___opaque_item_8070;
//   @ffi.Int8()
//   external int _unique___opaque_item_8071;
//   @ffi.Int8()
//   external int _unique___opaque_item_8072;
//   @ffi.Int8()
//   external int _unique___opaque_item_8073;
//   @ffi.Int8()
//   external int _unique___opaque_item_8074;
//   @ffi.Int8()
//   external int _unique___opaque_item_8075;
//   @ffi.Int8()
//   external int _unique___opaque_item_8076;
//   @ffi.Int8()
//   external int _unique___opaque_item_8077;
//   @ffi.Int8()
//   external int _unique___opaque_item_8078;
//   @ffi.Int8()
//   external int _unique___opaque_item_8079;
//   @ffi.Int8()
//   external int _unique___opaque_item_8080;
//   @ffi.Int8()
//   external int _unique___opaque_item_8081;
//   @ffi.Int8()
//   external int _unique___opaque_item_8082;
//   @ffi.Int8()
//   external int _unique___opaque_item_8083;
//   @ffi.Int8()
//   external int _unique___opaque_item_8084;
//   @ffi.Int8()
//   external int _unique___opaque_item_8085;
//   @ffi.Int8()
//   external int _unique___opaque_item_8086;
//   @ffi.Int8()
//   external int _unique___opaque_item_8087;
//   @ffi.Int8()
//   external int _unique___opaque_item_8088;
//   @ffi.Int8()
//   external int _unique___opaque_item_8089;
//   @ffi.Int8()
//   external int _unique___opaque_item_8090;
//   @ffi.Int8()
//   external int _unique___opaque_item_8091;
//   @ffi.Int8()
//   external int _unique___opaque_item_8092;
//   @ffi.Int8()
//   external int _unique___opaque_item_8093;
//   @ffi.Int8()
//   external int _unique___opaque_item_8094;
//   @ffi.Int8()
//   external int _unique___opaque_item_8095;
//   @ffi.Int8()
//   external int _unique___opaque_item_8096;
//   @ffi.Int8()
//   external int _unique___opaque_item_8097;
//   @ffi.Int8()
//   external int _unique___opaque_item_8098;
//   @ffi.Int8()
//   external int _unique___opaque_item_8099;
//   @ffi.Int8()
//   external int _unique___opaque_item_8100;
//   @ffi.Int8()
//   external int _unique___opaque_item_8101;
//   @ffi.Int8()
//   external int _unique___opaque_item_8102;
//   @ffi.Int8()
//   external int _unique___opaque_item_8103;
//   @ffi.Int8()
//   external int _unique___opaque_item_8104;
//   @ffi.Int8()
//   external int _unique___opaque_item_8105;
//   @ffi.Int8()
//   external int _unique___opaque_item_8106;
//   @ffi.Int8()
//   external int _unique___opaque_item_8107;
//   @ffi.Int8()
//   external int _unique___opaque_item_8108;
//   @ffi.Int8()
//   external int _unique___opaque_item_8109;
//   @ffi.Int8()
//   external int _unique___opaque_item_8110;
//   @ffi.Int8()
//   external int _unique___opaque_item_8111;
//   @ffi.Int8()
//   external int _unique___opaque_item_8112;
//   @ffi.Int8()
//   external int _unique___opaque_item_8113;
//   @ffi.Int8()
//   external int _unique___opaque_item_8114;
//   @ffi.Int8()
//   external int _unique___opaque_item_8115;
//   @ffi.Int8()
//   external int _unique___opaque_item_8116;
//   @ffi.Int8()
//   external int _unique___opaque_item_8117;
//   @ffi.Int8()
//   external int _unique___opaque_item_8118;
//   @ffi.Int8()
//   external int _unique___opaque_item_8119;
//   @ffi.Int8()
//   external int _unique___opaque_item_8120;
//   @ffi.Int8()
//   external int _unique___opaque_item_8121;
//   @ffi.Int8()
//   external int _unique___opaque_item_8122;
//   @ffi.Int8()
//   external int _unique___opaque_item_8123;
//   @ffi.Int8()
//   external int _unique___opaque_item_8124;
//   @ffi.Int8()
//   external int _unique___opaque_item_8125;
//   @ffi.Int8()
//   external int _unique___opaque_item_8126;
//   @ffi.Int8()
//   external int _unique___opaque_item_8127;
//   @ffi.Int8()
//   external int _unique___opaque_item_8128;
//   @ffi.Int8()
//   external int _unique___opaque_item_8129;
//   @ffi.Int8()
//   external int _unique___opaque_item_8130;
//   @ffi.Int8()
//   external int _unique___opaque_item_8131;
//   @ffi.Int8()
//   external int _unique___opaque_item_8132;
//   @ffi.Int8()
//   external int _unique___opaque_item_8133;
//   @ffi.Int8()
//   external int _unique___opaque_item_8134;
//   @ffi.Int8()
//   external int _unique___opaque_item_8135;
//   @ffi.Int8()
//   external int _unique___opaque_item_8136;
//   @ffi.Int8()
//   external int _unique___opaque_item_8137;
//   @ffi.Int8()
//   external int _unique___opaque_item_8138;
//   @ffi.Int8()
//   external int _unique___opaque_item_8139;
//   @ffi.Int8()
//   external int _unique___opaque_item_8140;
//   @ffi.Int8()
//   external int _unique___opaque_item_8141;
//   @ffi.Int8()
//   external int _unique___opaque_item_8142;
//   @ffi.Int8()
//   external int _unique___opaque_item_8143;
//   @ffi.Int8()
//   external int _unique___opaque_item_8144;
//   @ffi.Int8()
//   external int _unique___opaque_item_8145;
//   @ffi.Int8()
//   external int _unique___opaque_item_8146;
//   @ffi.Int8()
//   external int _unique___opaque_item_8147;
//   @ffi.Int8()
//   external int _unique___opaque_item_8148;
//   @ffi.Int8()
//   external int _unique___opaque_item_8149;
//   @ffi.Int8()
//   external int _unique___opaque_item_8150;
//   @ffi.Int8()
//   external int _unique___opaque_item_8151;
//   @ffi.Int8()
//   external int _unique___opaque_item_8152;
//   @ffi.Int8()
//   external int _unique___opaque_item_8153;
//   @ffi.Int8()
//   external int _unique___opaque_item_8154;
//   @ffi.Int8()
//   external int _unique___opaque_item_8155;
//   @ffi.Int8()
//   external int _unique___opaque_item_8156;
//   @ffi.Int8()
//   external int _unique___opaque_item_8157;
//   @ffi.Int8()
//   external int _unique___opaque_item_8158;
//   @ffi.Int8()
//   external int _unique___opaque_item_8159;
//   @ffi.Int8()
//   external int _unique___opaque_item_8160;
//   @ffi.Int8()
//   external int _unique___opaque_item_8161;
//   @ffi.Int8()
//   external int _unique___opaque_item_8162;
//   @ffi.Int8()
//   external int _unique___opaque_item_8163;
//   @ffi.Int8()
//   external int _unique___opaque_item_8164;
//   @ffi.Int8()
//   external int _unique___opaque_item_8165;
//   @ffi.Int8()
//   external int _unique___opaque_item_8166;
//   @ffi.Int8()
//   external int _unique___opaque_item_8167;
//   @ffi.Int8()
//   external int _unique___opaque_item_8168;
//   @ffi.Int8()
//   external int _unique___opaque_item_8169;
//   @ffi.Int8()
//   external int _unique___opaque_item_8170;
//   @ffi.Int8()
//   external int _unique___opaque_item_8171;
//   @ffi.Int8()
//   external int _unique___opaque_item_8172;
//   @ffi.Int8()
//   external int _unique___opaque_item_8173;
//   @ffi.Int8()
//   external int _unique___opaque_item_8174;
//   @ffi.Int8()
//   external int _unique___opaque_item_8175;

//   /// Helper for array `__opaque`.
//   // ignore: unused_field, unused_element
//   ArrayHelper__opaque_pthread_t___opaque_level0 get __opaque =>
//       ArrayHelper__opaque_pthread_t___opaque_level0(this, [8176], 0, 0);
// }
