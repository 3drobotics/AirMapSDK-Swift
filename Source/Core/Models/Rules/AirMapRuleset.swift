//
//  AirMapRuleset.swift
//  AirMapSDK
//
//  Created by Adolfo Martinelli on 3/24/17.
//  Copyright © 2017 AirMap, Inc. All rights reserved.
//

/// A logical grouping of rules under a give jurisdiction
public struct AirMapRuleset {
	
	/// An unique identifier
	public let id: String
	
	/// A descriptive title
	public let name: String
	
	/// A short descriptive title
	public let shortName: String
	
	/// A type that denotes the selection requirement
	public let type: SelectionType
	
	/// The identifiers for the airspace types represented by the ruleset
	public let airspaceTypeIds: [String]
	
	/// True if this ruleset is of type pick-one, and it should be selected by default
	public let isDefault: Bool
	
	/// The rules grouped under this ruleset
	public let rules: [AirMapRule]

	/// A long-form textual description
	public let description: String
	
	/// The identifier for the jurisdiction the ruleset belongs to
	public internal(set) var jurisdictionId: Int!

	/// The name of the jurisdiction the ruleset belongs to
	public internal(set) var jurisdictionName: String!

	/// The region type of the jurisdiction the ruleset belongs to
	public internal(set) var jurisdictionRegion: AirMapJurisdiction.Region!

	/// A type that dictates how the ruleset should be used
	///
	/// - optional: Selection is optional and at the operator's discretion
	/// - pickOne: The ruleset is part of a group of rulesets within a jurisdiction where the operator must select one and only one ruleset from the group. e.g. Part 107, Fly for Fun, and Part 333: these are all pickOne rulesets within the USA jurisdiction; only one can be selected for the given jurisdiction.
	/// - required: The ruleset must always be selected
	public enum SelectionType: String {
		case optional
		case pickOne = "pick1"
		case required

		/// A descriptive title
		public var name: String {
			switch self {
			// TODO: Localize
			case .optional:  return "Optional"
			case .pickOne:   return "Pick One"
			case .required:  return "Required"
			}
		}
	}
}

// MARK: - Convenience

extension Collection where Iterator.Element == AirMapRuleset {
	
	/// A comma-separated list of ruleset identifiers
	public var identifiers: String {
		return self.map { $0.id }.csv
	}
	
	/// A filtered list of all required rulesets
	public var requiredRulesets: [AirMapRuleset] {
		return filter { $0.type == .required }
	}
	
	/// A filtered list of all pick-one rulesets
	public var pickOneRulesets: [AirMapRuleset] {
		return filter { $0.type == .pickOne }
	}
	
	/// A filtered list of all default rulesets
	public var defaultPickOneRuleset: AirMapRuleset? {
		return pickOneRulesets.first(where: { $0.isDefault }) ?? pickOneRulesets.first
	}
	
	/// A filtered list of all optional rulesets
	public var optionalRulesets: [AirMapRuleset] {
		return filter { $0.type == .optional }
	}
	
	/// A list of jurisdictions derived from a list of rulesets
	public var jurisdictions: [AirMapJurisdiction] {
		return self
			.grouped(by: { $0.jurisdictionId }).keys
			.flatMap { (id) -> AirMapJurisdiction? in
				let rulesets = filter({ $0.jurisdictionId == id })
				guard let ruleset = rulesets.first else { return nil }
				return AirMapJurisdiction(
					id: ruleset.jurisdictionId,
					name: ruleset.jurisdictionName,
					region: ruleset.jurisdictionRegion,
					rulesets: rulesets
				)
		}
	}
}