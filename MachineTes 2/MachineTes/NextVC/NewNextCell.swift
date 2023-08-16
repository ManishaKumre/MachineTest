//
//  NewCell.swift
//  MachineTes
//
//  Created by Mac on 10/08/23.
//

import UIKit

class NewNextCell: UITableViewCell {

    
    var ButtonAccess=ButtonProgressBar()
    @IBOutlet weak var downloadbutton: UIButton!
    @IBOutlet weak var mCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    collectionViewSetup()

    }

    @IBAction func DownloadButtonAction(_ sender: ButtonProgressBar) {
        ButtonAccess.startIndeterminate()
       
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
              
    }
    
    
    
    
    
    
    
    private func collectionViewSetup(){
        mCollectionView.delegate=self
        mCollectionView.dataSource=self
        mCollectionView.isScrollEnabled = true
        mCollectionView.register(UINib(nibName: "NewnextCollectionCell", bundle: Bundle.main), forCellWithReuseIdentifier: "NewnextCollectionCell")
    setCollectionViewLayouts()
    }
    func setCollectionViewLayouts(){
            let flowLayout=UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .horizontal
            
   flowLayout.itemSize=CGSize(width: 240, height: 440)
            flowLayout.minimumLineSpacing = 5
         flowLayout.minimumInteritemSpacing = 5
            mCollectionView.setCollectionViewLayout(flowLayout, animated: true)
           /// CollectiobView1.setCollectionViewLayout(flowLayout, animated: true)
          
        }

}


extension NewNextCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewnextCollectionCell", for: indexPath) as? NewnextCollectionCell else { return UICollectionViewCell() }
        
        
        return cell
    }
    
}
