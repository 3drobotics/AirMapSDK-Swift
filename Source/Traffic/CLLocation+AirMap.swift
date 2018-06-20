//
//  CLLocation+AirMap.swift
//  AirMapSDK
//
//  Created by Rocky Demoff on 6/2/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

import CoreLocation
import AirMapInternal

extension CLLocation {
	
	func initialDirectionToLocation(_ location: CLLocation) -> String {
		
		let bearing = initialBearing(to: location)
		let directions = AirMapTrafficServiceUtils.compassDirections()
		let index = Int((bearing/22.5) + 0.5) % 16
		return directions[index]
	}
	
}
