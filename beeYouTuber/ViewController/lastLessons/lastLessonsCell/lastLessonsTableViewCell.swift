//
//  lastLessonsTableViewCell.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 25.03.2022.
//

import UIKit

class lastLessonsTableViewCell: UITableViewCell {
    @IBOutlet weak var lastLessonsViewCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lastLessonsViewCell.clipsToBounds = true
        lastLessonsViewCell.layer.cornerRadius = 30
        lastLessonsViewCell.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
