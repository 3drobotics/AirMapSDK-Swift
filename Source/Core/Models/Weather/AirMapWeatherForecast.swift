//
//  AirMapWeatherForecast.swift
//  AirMapSDK
//
//  Created by Adolfo Martinelli on 6/20/17.
//  Copyright 2018 AirMap, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

/// A summary of past and future weather observations for a given location and time window
public struct AirMapWeather {
	
	/// A collection of hourly past or future weather observations/forecasts
	public let observations: [Observation]
	
	/// An object representative of historical or forecast observation
	public struct Observation {

		/// The start time of the observation
		public let time: Date
		
		/// A textual description of the conditions. e.g. "Sunny"
		public let condition: String
		
		/// An icon name constant that can be used to display a client-created image representative of the conditions
		public let icon: String
		
		/// The dew point in degrees celcius
		public let dewPoint: Celcius
		
		/// The atmospheric pressue in hPa
		public let pressure: HPa
		
		/// The percentage of relative humidity
		public let humidity: Double
		
		/// The minimum visibilty in kilometers
		public let visibility: Kilometers?
		
		/// Precipitation probability 0.0-1.0
		public let precipitation: Double
		
		/// The tempetrature in Celcius
		public let temperature: Celcius
		
		/// The bearing of the wind in degrees
		public let windBearing: Double?
		
		/// The speed of the wind in meters per second
		public let windSpeed: MetersPerSecond
		
		/// The peak gust speed of the wind in meters per second
		public let windGusting: MetersPerSecond?
	}
	
	/// The source of the weather observations
	public let attribution: String

	/// A url for the attribution source
	public let attributionUrl: URL
}
