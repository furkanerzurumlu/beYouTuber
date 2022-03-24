//
//  lessonsTableViewCell.swift
//  Pods
//
//  Created by Furkan Erzurumlu on 24.03.2022.
//

import UIKit

class lessonsTableViewCell: UITableViewCell {

    @IBOutlet weak var lessonsViewCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        lessonsViewCell.clipsToBounds = true
        lessonsViewCell.layer.cornerRadius = 30
        lessonsViewCell.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
