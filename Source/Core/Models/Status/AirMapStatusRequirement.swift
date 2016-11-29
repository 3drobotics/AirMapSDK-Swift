//
//  AirMapStatusRequirements.swift
//  AirMapSDK
//
//  Created by Rocky Demoff on 6/13/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

import ObjectMapper

@objc public class AirMapStatusRequirements: NSObject {
	
	public var id: String!
	public var notice: AirMapStatusRequirementNotice?

	public required init?(_ map: Map) {}
}

extension AirMapStatusRequirements: Mappable {
	
	public func mapping(map: Map) {
		notice              <-  map["notice"]
	}
}
