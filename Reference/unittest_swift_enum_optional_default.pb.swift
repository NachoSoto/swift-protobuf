/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_enum_optional_default.proto
 *
 */

//  Protos/unittest_swift_enum_optional_default.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Test handling of enum fields with specified defaults
// /
//  -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

struct ProtobufUnittest_Extend_EnumOptionalDefault: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  public var protoMessageName: String {return "EnumOptionalDefault"}
  public var protoPackageName: String {return "protobuf_unittest.extend"}
  public static let _protobuf_fieldNames = FieldNameMap()

  public var unknown = SwiftProtobuf.UnknownStorage()

  struct NestedMessage: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var protoMessageName: String {return "NestedMessage"}
    public var protoPackageName: String {return "protobuf_unittest.extend"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      1: .same(proto: "message"),
      17: .unique(proto: "optional_enum", json: "optionalEnum"),
    ]

    private class _StorageClass {
      typealias ExtendedMessage = ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage
      var unknown = SwiftProtobuf.UnknownStorage()
      var _message: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage? = nil
      var _optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum? = nil

      init() {}

      func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
          try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
        }
      }

      func decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_message)
        case 17: try decoder.decodeSingularEnumField(value: &_optionalEnum)
        default: break
        }
      }

      func traverse(visitor: SwiftProtobuf.Visitor) throws {
        if let v = _message {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _optionalEnum {
          try visitor.visitSingularEnumField(value: v, fieldNumber: 17)
        }
        unknown.traverse(visitor: visitor)
      }

      func isEqualTo(other: _StorageClass) -> Bool {
        if _message != other._message {return false}
        if _optionalEnum != other._optionalEnum {return false}
        if unknown != other.unknown {return false}
        return true
      }

      func copy() -> _StorageClass {
        let clone = _StorageClass()
        clone.unknown = unknown
        clone._message = _message
        clone._optionalEnum = _optionalEnum
        return clone
      }
    }

    private var _storage = _StorageClass()

    public var unknown: SwiftProtobuf.UnknownStorage {
      get {return _storage.unknown}
      set {_storage.unknown = newValue}
    }

    enum Enum: SwiftProtobuf.Enum {
      typealias RawValue = Int
      case foo // = 0

      init() {
        self = .foo
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .foo
        default: return nil
        }
      }

      init?(jsonName: String) {
        switch jsonName {
        case "FOO": self = .foo
        default: return nil
        }
      }

      init?(protoName: String) {
        switch protoName {
        case "FOO": self = .foo
        default: return nil
        }
      }

      var rawValue: Int {
        get {
          switch self {
          case .foo: return 0
          }
        }
      }

      var _protobuf_jsonName: String? {
        get {
          switch self {
          case .foo: return "FOO"
          }
        }
      }

      var hashValue: Int { return rawValue }

    }

    ///   The circular reference here forces the generator to
    ///   implement heap-backed storage.
    var message: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage {
      get {return _storage._message ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage()}
      set {_uniqueStorage()._message = newValue}
    }
    var hasMessage: Bool {
      return _storage._message != nil
    }
    mutating func clearMessage() {
      return _storage._message = nil
    }

    var optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum {
      get {return _storage._optionalEnum ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage.Enum.foo}
      set {_uniqueStorage()._optionalEnum = newValue}
    }
    var hasOptionalEnum: Bool {
      return _storage._optionalEnum != nil
    }
    mutating func clearOptionalEnum() {
      return _storage._optionalEnum = nil
    }

    init() {}

    public mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      try _uniqueStorage().decodeMessage(decoder: &decoder)
    }

    public mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
      try _uniqueStorage().decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      try _storage.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage) -> Bool {
      return _storage === other._storage || _storage.isEqualTo(other: other._storage)
    }

    private mutating func _uniqueStorage() -> _StorageClass {
      if !isKnownUniquelyReferenced(&_storage) {
        _storage = _storage.copy()
      }
      return _storage
    }
  }

  struct NestedMessage2: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    public var protoMessageName: String {return "NestedMessage2"}
    public var protoPackageName: String {return "protobuf_unittest.extend"}
    public static let _protobuf_fieldNames: FieldNameMap = [
      17: .unique(proto: "optional_enum", json: "optionalEnum"),
    ]

    public var unknown = SwiftProtobuf.UnknownStorage()

    enum Enum: SwiftProtobuf.Enum {
      typealias RawValue = Int
      case foo // = 0

      init() {
        self = .foo
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .foo
        default: return nil
        }
      }

      init?(jsonName: String) {
        switch jsonName {
        case "FOO": self = .foo
        default: return nil
        }
      }

      init?(protoName: String) {
        switch protoName {
        case "FOO": self = .foo
        default: return nil
        }
      }

      var rawValue: Int {
        get {
          switch self {
          case .foo: return 0
          }
        }
      }

      var _protobuf_jsonName: String? {
        get {
          switch self {
          case .foo: return "FOO"
          }
        }
      }

      var hashValue: Int { return rawValue }

    }

    private var _optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum? = nil
    var optionalEnum: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum {
      get {return _optionalEnum ?? ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2.Enum.foo}
      set {_optionalEnum = newValue}
    }
    var hasOptionalEnum: Bool {
      return _optionalEnum != nil
    }
    mutating func clearOptionalEnum() {
      return _optionalEnum = nil
    }

    init() {}

    public mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    public mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
      switch fieldNumber {
      case 17: try decoder.decodeSingularEnumField(value: &_optionalEnum)
      default: break
      }
    }

    public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      if let v = _optionalEnum {
        try visitor.visitSingularEnumField(value: v, fieldNumber: 17)
      }
      unknown.traverse(visitor: visitor)
    }

    public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault.NestedMessage2) -> Bool {
      if _optionalEnum != other._optionalEnum {return false}
      if unknown != other.unknown {return false}
      return true
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  public mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
  }

  public func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    unknown.traverse(visitor: visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_EnumOptionalDefault) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}
