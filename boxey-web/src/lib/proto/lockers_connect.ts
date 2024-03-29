// @generated by protoc-gen-connect-es v0.11.0 with parameter "target=ts"
// @generated from file lockers.proto (package boxey.lockers, syntax proto3)
/* eslint-disable */
// @ts-nocheck

import { LockersListerReply, LockersListRequest } from "./lockers_pb.js";
import { MethodKind } from "@bufbuild/protobuf";

/**
 * @generated from service boxey.lockers.Lockers
 */
export const Lockers = {
  typeName: "boxey.lockers.Lockers",
  methods: {
    /**
     * @generated from rpc boxey.lockers.Lockers.LockersList
     */
    lockersList: {
      name: "LockersList",
      I: LockersListRequest,
      O: LockersListerReply,
      kind: MethodKind.Unary,
    },
  }
} as const;

