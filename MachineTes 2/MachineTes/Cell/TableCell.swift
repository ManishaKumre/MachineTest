//
//  TableCell.swift
//  MachineTes
//
//  Created by Rajeshwari Sharma on 10/08/23.
//

import UIKit

class TableCell: UITableViewCell {

  
    
    
    @IBOutlet weak var mCollectionView: UICollectionView!
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    collectionViewSetup()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
              
    }
    
    
    private func collectionViewSetup(){
        mCollectionView.delegate=self
        mCollectionView.dataSource=self
        mCollectionView.isScrollEnabled = true
        mCollectionView.register(UINib(nibName: "CollectionCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CollectionCell")
    setCollectionViewLayouts()
    }
    func setCollectionViewLayouts(){
            let flowLayout=UICollectionViewFlowLayout()
            flowLayout.scrollDirection = .vertical
            
        flowLayout.itemSize=CGSize(width: 300, height: 460)
            flowLayout.minimumLineSpacing = 5
         flowLayout.minimumInteritemSpacing = 5
            mCollectionView.setCollectionViewLayout(flowLayout, animated: true)
           /// CollectiobView1.setCollectionViewLayout(flowLayout, animated: true)
          
        }

}


extension TableCell:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionCell else { return UICollectionViewCell() }
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let nextVC = storyboard.instantiateViewController(identifier: "NewVC") as! NewVC
            nextVC.hidesBottomBarWhenPushed = true
        if let avc = self.next(ofType: UIViewController.self) {
            avc.present(nextVC, animated: true, completion: nil)
        }
        
    }
    
}
extension UIResponder {
    func next<T:UIResponder>(ofType: T.Type) -> T? {
        let r = self.next
        if let r = r as? T ?? r?.next(ofType: T.self) {
            return r
        } else {
            return nil
        }
    }
}
