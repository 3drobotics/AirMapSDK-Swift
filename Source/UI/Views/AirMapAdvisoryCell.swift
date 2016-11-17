//
//  AirMapAdvisoryCell.swift
//  AirMapSDK
//
//  Created by Adolfo Martinelli on 10/25/16.
//  Copyright © 2016 AirMap, Inc. All rights reserved.
//

import UIKit

class AirMapAdvisoryCell: UITableViewCell, Dequeueable, ObjectAssignable {

	typealias ObjectType = AirMapStatusAdvisory
	
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var type: UILabel!
	@IBOutlet weak var colorView: UIView!
	
	func setObject(object: ObjectType?) {
		advisory = object
		configure()
	}

	private var advisory: AirMapStatusAdvisory!
	
	private func configure() {
        
        if let organization = advisory.organization {
            name.text = organization.name
        } else {
            name.text = advisory.name
        }

        type.text = advisory.type?.title
		colorView.backgroundColor = advisory.color.colorRepresentation
	}
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
