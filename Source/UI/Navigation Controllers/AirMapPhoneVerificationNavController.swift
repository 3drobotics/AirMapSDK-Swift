//
//  AirMapPhoneVerificationNavController.swift
//  AirMapSDK
//
//  Created by Adolfo Martinelli on 8/23/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

protocol AirMapPhoneVerificationDelegate: class {
	
	func phoneVerificationDidVerifyPhoneNumber()
}

class AirMapPhoneVerificationNavController: UINavigationController {
	
	weak var phoneVerificationDelegate: AirMapPhoneVerificationDelegate?
}