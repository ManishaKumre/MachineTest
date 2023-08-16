//
//  NewViewwCell.swift
//  MachineTes
//
//  Created by Rajeshwari Sharma on 11/08/23.
//

import UIKit

class NewViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var View: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var image: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        UIView.animate(withDuration: 2.0, animations: {
                  // Change the label's properties here
                  self.label1.alpha = 0.0 // Fade out
                 
            self.label2.alpha = 0.0 // Fade out
            
            self.image.alpha = 0.0 // Fade out
           
              }) { (completed) in
                  if completed {
                      self.label1.alpha = 1 // Fade out
                  
                self.label2.alpha = 1 // Fade out
         
                self.image.alpha = 1// Fade out
            
                  }
              }
    
    }
    
    
}
