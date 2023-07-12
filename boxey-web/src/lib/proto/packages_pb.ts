// @generated by protoc-gen-es v1.2.1 with parameter "target=ts"
// @generated from file packages.proto (package boxey.packages, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import type { BinaryReadOptions, FieldList, JsonReadOptions, JsonValue, PartialMessage, PlainMessage } from "@bufbuild/protobuf";
import { Message, proto3 } from "@bufbuild/protobuf";
import { Timestamp } from "./google/protobuf/timestamp_pb.js";

/**
 * @generated from enum boxey.packages.StatusTypeUser
 */
export enum StatusTypeUser {
  /**
   * @generated from enum value: PREPARED = 0;
   */
  PREPARED = 0,

  /**
   * @generated from enum value: HANDED_OVER = 1;
   */
  HANDED_OVER = 1,

  /**
   * @generated from enum value: IN_TRANSIT = 2;
   */
  IN_TRANSIT = 2,

  /**
   * @generated from enum value: READY = 3;
   */
  READY = 3,

  /**
   * @generated from enum value: RECEIVED = 4;
   */
  RECEIVED = 4,
}
// Retrieve enum metadata with: proto3.getEnumType(StatusTypeUser)
proto3.util.setEnumType(StatusTypeUser, "boxey.packages.StatusTypeUser", [
  { no: 0, name: "PREPARED" },
  { no: 1, name: "HANDED_OVER" },
  { no: 2, name: "IN_TRANSIT" },
  { no: 3, name: "READY" },
  { no: 4, name: "RECEIVED" },
]);

/**
 * @generated from message boxey.packages.PackageListRequest
 */
export class PackageListRequest extends Message<PackageListRequest> {
  constructor(data?: PartialMessage<PackageListRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PackageListRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PackageListRequest {
    return new PackageListRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PackageListRequest {
    return new PackageListRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PackageListRequest {
    return new PackageListRequest().fromJsonString(jsonString, options);
  }

  static equals(a: PackageListRequest | PlainMessage<PackageListRequest> | undefined, b: PackageListRequest | PlainMessage<PackageListRequest> | undefined): boolean {
    return proto3.util.equals(PackageListRequest, a, b);
  }
}

/**
 * @generated from message boxey.packages.PackageListReply
 */
export class PackageListReply extends Message<PackageListReply> {
  /**
   * @generated from field: repeated boxey.packages.PackageHeader packages = 1;
   */
  packages: PackageHeader[] = [];

  constructor(data?: PartialMessage<PackageListReply>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PackageListReply";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "packages", kind: "message", T: PackageHeader, repeated: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PackageListReply {
    return new PackageListReply().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PackageListReply {
    return new PackageListReply().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PackageListReply {
    return new PackageListReply().fromJsonString(jsonString, options);
  }

  static equals(a: PackageListReply | PlainMessage<PackageListReply> | undefined, b: PackageListReply | PlainMessage<PackageListReply> | undefined): boolean {
    return proto3.util.equals(PackageListReply, a, b);
  }
}

/**
 * @generated from message boxey.packages.PackageDetailsRequest
 */
export class PackageDetailsRequest extends Message<PackageDetailsRequest> {
  /**
   * @generated from field: string uid = 1;
   */
  uid = "";

  constructor(data?: PartialMessage<PackageDetailsRequest>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PackageDetailsRequest";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "uid", kind: "scalar", T: 9 /* ScalarType.STRING */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PackageDetailsRequest {
    return new PackageDetailsRequest().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PackageDetailsRequest {
    return new PackageDetailsRequest().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PackageDetailsRequest {
    return new PackageDetailsRequest().fromJsonString(jsonString, options);
  }

  static equals(a: PackageDetailsRequest | PlainMessage<PackageDetailsRequest> | undefined, b: PackageDetailsRequest | PlainMessage<PackageDetailsRequest> | undefined): boolean {
    return proto3.util.equals(PackageDetailsRequest, a, b);
  }
}

/**
 * @generated from message boxey.packages.PackageDetailsReply
 */
export class PackageDetailsReply extends Message<PackageDetailsReply> {
  /**
   * @generated from field: boxey.packages.PackageHeader header = 1;
   */
  header?: PackageHeader;

  /**
   * @generated from field: repeated boxey.packages.StatusDetails status = 2;
   */
  status: StatusDetails[] = [];

  /**
   * @generated from field: optional boxey.packages.PickupDetails pickup = 3;
   */
  pickup?: PickupDetails;

  constructor(data?: PartialMessage<PackageDetailsReply>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PackageDetailsReply";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "header", kind: "message", T: PackageHeader },
    { no: 2, name: "status", kind: "message", T: StatusDetails, repeated: true },
    { no: 3, name: "pickup", kind: "message", T: PickupDetails, opt: true },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PackageDetailsReply {
    return new PackageDetailsReply().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PackageDetailsReply {
    return new PackageDetailsReply().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PackageDetailsReply {
    return new PackageDetailsReply().fromJsonString(jsonString, options);
  }

  static equals(a: PackageDetailsReply | PlainMessage<PackageDetailsReply> | undefined, b: PackageDetailsReply | PlainMessage<PackageDetailsReply> | undefined): boolean {
    return proto3.util.equals(PackageDetailsReply, a, b);
  }
}

/**
 * @generated from message boxey.packages.PackageHeader
 */
export class PackageHeader extends Message<PackageHeader> {
  /**
   * @generated from field: string uid = 1;
   */
  uid = "";

  /**
   * @generated from field: string sender = 2;
   */
  sender = "";

  /**
   * @generated from field: boxey.packages.StatusTypeUser status = 3;
   */
  status = StatusTypeUser.PREPARED;

  constructor(data?: PartialMessage<PackageHeader>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PackageHeader";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "uid", kind: "scalar", T: 9 /* ScalarType.STRING */ },
    { no: 2, name: "sender", kind: "scalar", T: 9 /* ScalarType.STRING */ },
    { no: 3, name: "status", kind: "enum", T: proto3.getEnumType(StatusTypeUser) },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PackageHeader {
    return new PackageHeader().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PackageHeader {
    return new PackageHeader().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PackageHeader {
    return new PackageHeader().fromJsonString(jsonString, options);
  }

  static equals(a: PackageHeader | PlainMessage<PackageHeader> | undefined, b: PackageHeader | PlainMessage<PackageHeader> | undefined): boolean {
    return proto3.util.equals(PackageHeader, a, b);
  }
}

/**
 * @generated from message boxey.packages.StatusDetails
 */
export class StatusDetails extends Message<StatusDetails> {
  /**
   * @generated from field: boxey.packages.StatusTypeUser type = 1;
   */
  type = StatusTypeUser.PREPARED;

  /**
   * @generated from field: google.protobuf.Timestamp time = 2;
   */
  time?: Timestamp;

  constructor(data?: PartialMessage<StatusDetails>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.StatusDetails";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "type", kind: "enum", T: proto3.getEnumType(StatusTypeUser) },
    { no: 2, name: "time", kind: "message", T: Timestamp },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): StatusDetails {
    return new StatusDetails().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): StatusDetails {
    return new StatusDetails().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): StatusDetails {
    return new StatusDetails().fromJsonString(jsonString, options);
  }

  static equals(a: StatusDetails | PlainMessage<StatusDetails> | undefined, b: StatusDetails | PlainMessage<StatusDetails> | undefined): boolean {
    return proto3.util.equals(StatusDetails, a, b);
  }
}

/**
 * @generated from message boxey.packages.PickupDetails
 */
export class PickupDetails extends Message<PickupDetails> {
  /**
   * @generated from field: string code = 1;
   */
  code = "";

  constructor(data?: PartialMessage<PickupDetails>) {
    super();
    proto3.util.initPartial(data, this);
  }

  static readonly runtime: typeof proto3 = proto3;
  static readonly typeName = "boxey.packages.PickupDetails";
  static readonly fields: FieldList = proto3.util.newFieldList(() => [
    { no: 1, name: "code", kind: "scalar", T: 9 /* ScalarType.STRING */ },
  ]);

  static fromBinary(bytes: Uint8Array, options?: Partial<BinaryReadOptions>): PickupDetails {
    return new PickupDetails().fromBinary(bytes, options);
  }

  static fromJson(jsonValue: JsonValue, options?: Partial<JsonReadOptions>): PickupDetails {
    return new PickupDetails().fromJson(jsonValue, options);
  }

  static fromJsonString(jsonString: string, options?: Partial<JsonReadOptions>): PickupDetails {
    return new PickupDetails().fromJsonString(jsonString, options);
  }

  static equals(a: PickupDetails | PlainMessage<PickupDetails> | undefined, b: PickupDetails | PlainMessage<PickupDetails> | undefined): boolean {
    return proto3.util.equals(PickupDetails, a, b);
  }
}

