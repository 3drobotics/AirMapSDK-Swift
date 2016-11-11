//
//  AirMapPermit.swift
//  AirMapSDK
//
//  Created by Rocky Demoff on 7/19/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

import ObjectMapper

@objc public class AirMapPilotPermit: NSObject {

	public enum PermitStatus: String {
		case Accepted	= "accepted"
		case Rejected	= "rejected"
		case Pending	= "pending"
		case Unknown	= "unknown"		
	}

	public var id = ""
	public var permitId = ""
	public var flightId = ""
	public var status: PermitStatus = .Unknown
	public var createdAt: NSDate = NSDate()
	public var updatedAt: NSDate!
	public var expiresAt: NSDate!
	public var customProperties = [AirMapPilotPermitCustomProperty]()
	public var permitDetails: AirMapPilotPermitShortDetails!
	public var issuer: AirMapPilotPermitIssuer!

	public required init?(_ map: Map) {}

	internal override init() {
		super.init()
	}
}

public func ==(lhs: AirMapPilotPermit, rhs: AirMapPilotPermit) -> Bool {
	if lhs.id.isEmpty || rhs.id.isEmpty {
		return lhs.permitId == rhs.permitId
	} else {
		return lhs.id == rhs.id
	}
}

public func ==(lhs: AirMapAvailablePermit, rhs: AirMapPilotPermit) -> Bool {
	return lhs.id == rhs.permitId
}

extension AirMapPilotPermit: Mappable {

	public func mapping(map: Map) {

		let dateTransform = CustomDateFormatTransform(formatString: Config.AirMapApi.dateFormat)

		id					<-  map["id"]
		permitId			<-  map["permit_id"]
		flightId			<-  map["flight_id"]
		issuer				<-  map["issuer"]
		createdAt			<- (map["created_at"], dateTransform)
		updatedAt			<- (map["updated_at"], dateTransform)
		expiresAt			<- (map["expiration"], dateTransform)
		customProperties	<- map["custom_properties"]
		permitDetails		<- map["permit"]

		var permitStatus = ""
		permitStatus		<-	map["status"]
		status = permitStatusFromStatusString(permitStatus)
	}

	/**
	Returns key value parameters

	- returns: [String: AnyObject]
	*/

	func params() -> [String: AnyObject] {

		var params = [String: AnyObject]()
		params["id"] = id
		params["custom_properties"] = customProperties.toJSON()

		return params
	}

	func permitStatusFromStatusString(status: String) -> PermitStatus {
		return PermitStatus(rawValue: status) ?? .Unknown
	}
}
