//
//  lastLessonsTableViewCell.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 25.03.2022.
//

import UIKit
import SDWebImage

class lastLessonsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lastLessonsViewCell: UIView!
    @IBOutlet weak var lastLessonsLabel: UILabel!
    @IBOutlet weak var lastLessonsIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayoutDesign()
    }
    
    func lastLessonsDataUpdate(data: Datum){
        self.lastLessonsLabel.text = data.baslik
        self.lastLessonsIcon.sd_setImage(with: URL(string: data.icon))
    }

    func setLayoutDesign(){
        lastLessonsViewCell.clipsToBounds = true
        lastLessonsViewCell.layer.cornerRadius = 30
        lastLessonsViewCell.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
