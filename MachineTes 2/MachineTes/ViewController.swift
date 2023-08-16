//
//  ViewController.swift
//  MachineTes
//
//  Created by Rajeshwari Sharma on 10/08/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var mTableView: UITableView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableviewSetup()
        print("Helloworld ")
        
    }
    
    //TableView SetUp
    func tableviewSetup(){
        mTableView.delegate=self
        mTableView.dataSource=self
        mTableView.register(UINib(nibName:"TableCell" , bundle: Bundle.main), forCellReuseIdentifier: "TableCell")
    }
    
    
//    Tableview Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        switch section{
        
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell") as! TableCell
            
            return cell
    
        default:
            break
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = indexPath.section
        
        switch section{
            
            
        case 0 :
            return 900
        default:
            break
            
        }
        
        return 0
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let nextVC = storyboard.instantiateViewController(identifier: "NewVC") as! NewVC
            nextVC.hidesBottomBarWhenPushed = true
        nextVC.modalPresentationStyle = .custom
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
