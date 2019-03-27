//
//  MainCustomCell.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit

class MainCustomCell: UITableViewCell {

    @IBOutlet weak var lblHeaderTitle: UILabel!
    @IBOutlet weak var lblAuthorVal: UILabel!
    @IBOutlet weak var lblSubTitleVal: UILabel!
    @IBOutlet weak var lblDateBublishedVal: UILabel!
    @IBOutlet weak var btnShownavigate: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
