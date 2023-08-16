//
//  CollectionCell.swift
//  MachineTes
//
//  Created by Rajeshwari Sharma on 10/08/23.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    @IBOutlet weak var download: UIButton!
    
    @IBOutlet weak var cellview: UIView!
    @IBOutlet weak var img: UIImageView!
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        download.layer.cornerRadius = 25
        img.layer.cornerRadius = 10
       
    }

}
