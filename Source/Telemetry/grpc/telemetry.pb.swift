// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: telemetry.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 AirMap, Inc.  All rights reserved.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Telemetry bundles up types used for reporting telematic data.
struct Airmap_Telemetry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Report models a measurement at a given point in time.
  struct Report {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The timestamp of the report.
    var observed: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _storage._observed ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_uniqueStorage()._observed = newValue}
    }
    /// Returns true if `observed` has been explicitly set.
    var hasObserved: Bool {return _storage._observed != nil}
    /// Clears the value of `observed`. Subsequent reads from it will return its default value.
    mutating func clearObserved() {_uniqueStorage()._observed = nil}

    /// details is a discriminated union of all measurement types.
    var details: OneOf_Details? {
      get {return _storage._details}
      set {_uniqueStorage()._details = newValue}
    }

    var spatial: Airmap_Telemetry.Report.Spatial {
      get {
        if case .spatial(let v)? = _storage._details {return v}
        return Airmap_Telemetry.Report.Spatial()
      }
      set {_uniqueStorage()._details = .spatial(newValue)}
    }

    var atmospheric: Airmap_Telemetry.Report.Atmospheric {
      get {
        if case .atmospheric(let v)? = _storage._details {return v}
        return Airmap_Telemetry.Report.Atmospheric()
      }
      set {_uniqueStorage()._details = .atmospheric(newValue)}
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    /// details is a discriminated union of all measurement types.
    enum OneOf_Details: Equatable {
      case spatial(Airmap_Telemetry.Report.Spatial)
      case atmospheric(Airmap_Telemetry.Report.Atmospheric)

    #if !swift(>=4.1)
      static func ==(lhs: Airmap_Telemetry.Report.OneOf_Details, rhs: Airmap_Telemetry.Report.OneOf_Details) -> Bool {
        switch (lhs, rhs) {
        case (.spatial(let l), .spatial(let r)): return l == r
        case (.atmospheric(let l), .atmospheric(let r)): return l == r
        default: return false
        }
      }
    #endif
    }

    /// Spatial bundles geospatial measurements.
    struct Spatial {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// A positional measurement.
      var position: Airmap_Position {
        get {return _storage._position ?? Airmap_Position()}
        set {_uniqueStorage()._position = newValue}
      }
      /// Returns true if `position` has been explicitly set.
      var hasPosition: Bool {return _storage._position != nil}
      /// Clears the value of `position`. Subsequent reads from it will return its default value.
      mutating func clearPosition() {_uniqueStorage()._position = nil}

      /// A velocity measurement.
      var velocity: Airmap_Velocity {
        get {return _storage._velocity ?? Airmap_Velocity()}
        set {_uniqueStorage()._velocity = newValue}
      }
      /// Returns true if `velocity` has been explicitly set.
      var hasVelocity: Bool {return _storage._velocity != nil}
      /// Clears the value of `velocity`. Subsequent reads from it will return its default value.
      mutating func clearVelocity() {_uniqueStorage()._velocity = nil}

      /// An orientation/attitude measurement.
      var orientation: Airmap_Orientation {
        get {return _storage._orientation ?? Airmap_Orientation()}
        set {_uniqueStorage()._orientation = newValue}
      }
      /// Returns true if `orientation` has been explicitly set.
      var hasOrientation: Bool {return _storage._orientation != nil}
      /// Clears the value of `orientation`. Subsequent reads from it will return its default value.
      mutating func clearOrientation() {_uniqueStorage()._orientation = nil}

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      fileprivate var _storage = _StorageClass.defaultInstance
    }

    /// Atmospheric bundles atmospheric measurements at a given position.
    struct Atmospheric {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// The position for the atmospheric measurement.
      var position: Airmap_Position {
        get {return _storage._position ?? Airmap_Position()}
        set {_uniqueStorage()._position = newValue}
      }
      /// Returns true if `position` has been explicitly set.
      var hasPosition: Bool {return _storage._position != nil}
      /// Clears the value of `position`. Subsequent reads from it will return its default value.
      mutating func clearPosition() {_uniqueStorage()._position = nil}

      /// An atmospheric pressure measurement.
      var pressure: Airmap_Pressure {
        get {return _storage._pressure ?? Airmap_Pressure()}
        set {_uniqueStorage()._pressure = newValue}
      }
      /// Returns true if `pressure` has been explicitly set.
      var hasPressure: Bool {return _storage._pressure != nil}
      /// Clears the value of `pressure`. Subsequent reads from it will return its default value.
      mutating func clearPressure() {_uniqueStorage()._pressure = nil}

      /// A temperature measurement
      var temperature: Airmap_Temperature {
        get {return _storage._temperature ?? Airmap_Temperature()}
        set {_uniqueStorage()._temperature = newValue}
      }
      /// Returns true if `temperature` has been explicitly set.
      var hasTemperature: Bool {return _storage._temperature != nil}
      /// Clears the value of `temperature`. Subsequent reads from it will return its default value.
      mutating func clearTemperature() {_uniqueStorage()._temperature = nil}

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      fileprivate var _storage = _StorageClass.defaultInstance
    }

    init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  /// Update bundles types used in the exchange of telemetry reports.
  struct Update {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var unknownFields = SwiftProtobuf.UnknownStorage()

    /// FromClient models a batch of reports observed and sent to a telemetry service.
    struct FromClient {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// The identifier of the flight for which the update is for.
      var flight: Airmap_FlightId {
        get {return _storage._flight ?? Airmap_FlightId()}
        set {_uniqueStorage()._flight = newValue}
      }
      /// Returns true if `flight` has been explicitly set.
      var hasFlight: Bool {return _storage._flight != nil}
      /// Clears the value of `flight`. Subsequent reads from it will return its default value.
      mutating func clearFlight() {_uniqueStorage()._flight = nil}

      /// The timestamp of when the update was submitted by the client.
      var submitted: SwiftProtobuf.Google_Protobuf_Timestamp {
        get {return _storage._submitted ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
        set {_uniqueStorage()._submitted = newValue}
      }
      /// Returns true if `submitted` has been explicitly set.
      var hasSubmitted: Bool {return _storage._submitted != nil}
      /// Clears the value of `submitted`. Subsequent reads from it will return its default value.
      mutating func clearSubmitted() {_uniqueStorage()._submitted = nil}

      var reports: [Airmap_Telemetry.Report] {
        get {return _storage._reports}
        set {_uniqueStorage()._reports = newValue}
      }

      var unknownFields = SwiftProtobuf.UnknownStorage()

      init() {}

      fileprivate var _storage = _StorageClass.defaultInstance
    }

    /// FromService models communication back to a telemetry client.
    struct FromService {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// Ack for received update.
      var ack: Airmap_Telemetry.Update.FromService.Ack {
        get {return _storage._ack ?? Airmap_Telemetry.Update.FromService.Ack()}
        set {_uniqueStorage()._ack = newValue}
      }
      /// Returns true if `ack` has been explicitly set.
      var hasAck: Bool {return _storage._ack != nil}
      /// Clears the value of `ack`. Subsequent reads from it will return its default value.
      mutating func clearAck() {_uniqueStorage()._ack = nil}

      var unknownFields = SwiftProtobuf.UnknownStorage()

      /// Ack models an acknowledgement of updates received by the service.
      struct Ack {
        // SwiftProtobuf.Message conformance is added in an extension below. See the
        // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
        // methods supported on all messages.

        /// Number of updates received.
        var count: UInt64 {
          get {return _storage._count}
          set {_uniqueStorage()._count = newValue}
        }

        /// The time when the message was sent to the client by the service.
        var submitted: SwiftProtobuf.Google_Protobuf_Timestamp {
          get {return _storage._submitted ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
          set {_uniqueStorage()._submitted = newValue}
        }
        /// Returns true if `submitted` has been explicitly set.
        var hasSubmitted: Bool {return _storage._submitted != nil}
        /// Clears the value of `submitted`. Subsequent reads from it will return its default value.
        mutating func clearSubmitted() {_uniqueStorage()._submitted = nil}

        var unknownFields = SwiftProtobuf.UnknownStorage()

        init() {}

        fileprivate var _storage = _StorageClass.defaultInstance
      }

      init() {}

      fileprivate var _storage = _StorageClass.defaultInstance
    }

    init() {}
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "airmap"

extension Airmap_Telemetry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Telemetry"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry, rhs: Airmap_Telemetry) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Report: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.protoMessageName + ".Report"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "observed"),
    2: .same(proto: "spatial"),
    3: .same(proto: "atmospheric"),
  ]

  fileprivate class _StorageClass {
    var _observed: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _details: Airmap_Telemetry.Report.OneOf_Details?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _observed = source._observed
      _details = source._details
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._observed)
        case 2:
          var v: Airmap_Telemetry.Report.Spatial?
          if let current = _storage._details {
            try decoder.handleConflictingOneOf()
            if case .spatial(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._details = .spatial(v)}
        case 3:
          var v: Airmap_Telemetry.Report.Atmospheric?
          if let current = _storage._details {
            try decoder.handleConflictingOneOf()
            if case .atmospheric(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._details = .atmospheric(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._observed {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      switch _storage._details {
      case .spatial(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .atmospheric(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Report, rhs: Airmap_Telemetry.Report) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._observed != rhs_storage._observed {return false}
        if _storage._details != rhs_storage._details {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Report.Spatial: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.Report.protoMessageName + ".Spatial"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "position"),
    2: .same(proto: "velocity"),
    3: .same(proto: "orientation"),
  ]

  fileprivate class _StorageClass {
    var _position: Airmap_Position? = nil
    var _velocity: Airmap_Velocity? = nil
    var _orientation: Airmap_Orientation? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _position = source._position
      _velocity = source._velocity
      _orientation = source._orientation
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._position)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._velocity)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._orientation)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._position {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._velocity {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._orientation {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Report.Spatial, rhs: Airmap_Telemetry.Report.Spatial) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._position != rhs_storage._position {return false}
        if _storage._velocity != rhs_storage._velocity {return false}
        if _storage._orientation != rhs_storage._orientation {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Report.Atmospheric: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.Report.protoMessageName + ".Atmospheric"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "position"),
    2: .same(proto: "pressure"),
    3: .same(proto: "temperature"),
  ]

  fileprivate class _StorageClass {
    var _position: Airmap_Position? = nil
    var _pressure: Airmap_Pressure? = nil
    var _temperature: Airmap_Temperature? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _position = source._position
      _pressure = source._pressure
      _temperature = source._temperature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._position)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._pressure)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._temperature)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._position {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._pressure {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._temperature {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Report.Atmospheric, rhs: Airmap_Telemetry.Report.Atmospheric) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._position != rhs_storage._position {return false}
        if _storage._pressure != rhs_storage._pressure {return false}
        if _storage._temperature != rhs_storage._temperature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Update: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.protoMessageName + ".Update"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Update, rhs: Airmap_Telemetry.Update) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Update.FromClient: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.Update.protoMessageName + ".FromClient"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "flight"),
    2: .same(proto: "submitted"),
    3: .same(proto: "reports"),
  ]

  fileprivate class _StorageClass {
    var _flight: Airmap_FlightId? = nil
    var _submitted: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _reports: [Airmap_Telemetry.Report] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _flight = source._flight
      _submitted = source._submitted
      _reports = source._reports
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._flight)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._submitted)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._reports)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._flight {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._submitted {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._reports.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._reports, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Update.FromClient, rhs: Airmap_Telemetry.Update.FromClient) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._flight != rhs_storage._flight {return false}
        if _storage._submitted != rhs_storage._submitted {return false}
        if _storage._reports != rhs_storage._reports {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Update.FromService: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.Update.protoMessageName + ".FromService"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ack"),
  ]

  fileprivate class _StorageClass {
    var _ack: Airmap_Telemetry.Update.FromService.Ack? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _ack = source._ack
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._ack)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._ack {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Update.FromService, rhs: Airmap_Telemetry.Update.FromService) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._ack != rhs_storage._ack {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Airmap_Telemetry.Update.FromService.Ack: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Airmap_Telemetry.Update.FromService.protoMessageName + ".Ack"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "count"),
    2: .same(proto: "submitted"),
  ]

  fileprivate class _StorageClass {
    var _count: UInt64 = 0
    var _submitted: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _count = source._count
      _submitted = source._submitted
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularUInt64Field(value: &_storage._count)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._submitted)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._count != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._count, fieldNumber: 1)
      }
      if let v = _storage._submitted {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Airmap_Telemetry.Update.FromService.Ack, rhs: Airmap_Telemetry.Update.FromService.Ack) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._count != rhs_storage._count {return false}
        if _storage._submitted != rhs_storage._submitted {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
