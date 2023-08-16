//
//  NewTableCell.swift
//  MachineTes
//
//  Created by Mac on 10/08/23.
//

import UIKit

class NextCell: UITableViewCell {

    
    @IBOutlet weak var cellview: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var Cancel: UIButton!
    @IBOutlet weak var headerlbl: UILabel!
    @IBOutlet weak var readmoreview: UITextView!
    
    @IBOutlet weak var readmorebutton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        UIView.animate(withDuration: 1.0, animations: {
                  // Change the label's properties here
                  self.headerlbl.alpha = 0.0 // Fade out
                  self.headerlbl.transform = CGAffineTransform(scaleX: 1.5, y: 1.5) // Scale up
             //     self.headerlbl.center = self.view.center // Move to center
              }) { (completed) in
                  if completed {
                      self.headerlbl.alpha = 1 // Fade out
                      self.headerlbl.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                    
                  }
              }
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
