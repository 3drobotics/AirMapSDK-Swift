//
//  AirMapStatus+Color.swift
//  AirMapSDK
//
//  Created by Adolfo Martinelli on 11/2/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

import UIKit

extension AirMapAdvisory.Color {
	
	// UIColor or NSColor representation of status
	public var colorRepresentation: Color {
		switch self {
		case .red:      return .airMapRed
		case .orange:   return .airMapOrange
		case .yellow:   return .airMapYellow
		case .green:    return .airMapGreen
		}
	}
}
