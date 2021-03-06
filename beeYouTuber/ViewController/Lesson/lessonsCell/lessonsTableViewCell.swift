//
//  lessonsTableViewCell.swift
//  Pods
//
//  Created by Furkan Erzurumlu on 24.03.2022.
//

import UIKit
import SDWebImage

class lessonsTableViewCell: UITableViewCell {

    @IBOutlet weak var lessonsViewCell: UIView!
    @IBOutlet weak var lessonsNameLabel: UILabel!
    @IBOutlet weak var lessonsIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayoutDesign()
    }
        
    func lessonsDataUpdate(data: Datum) {
        self.lessonsNameLabel.text = data.baslik
        self.lessonsIcon.sd_setImage(with: URL(string: data.icon))
    }
    
    func setLayoutDesign(){
        lessonsViewCell.clipsToBounds = true
        lessonsViewCell.layer.cornerRadius = 30
        lessonsViewCell.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMinYCorner, .layerMaxXMaxYCorner)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension UITableViewCell {
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nibName: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}

extension UIView {
func roundCorners(corners:UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    let rect = self.bounds
    mask.frame = rect
    mask.path = path.cgPath
    self.layer.mask = mask
}
}
