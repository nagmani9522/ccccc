//
//  secondViewController.swift
//  CustomTableViewWithDataPassing
//
//  Created by mac on 31/10/21.
//

import UIKit

class secondViewController: UIViewController{
    
    var arr1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var arr2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]
     var imaArr = [#imageLiteral(resourceName: "twitter"),#imageLiteral(resourceName: "call"),#imageLiteral(resourceName: "skype"),#imageLiteral(resourceName: "instagram"),#imageLiteral(resourceName: "26"),#imageLiteral(resourceName: "message"),#imageLiteral(resourceName: "whatsapp"),#imageLiteral(resourceName: "outlook")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
}
extension secondViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return arr1.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:secondTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! secondTableViewCell
        cell.lbl1.text = arr1[indexPath.row]
        cell.lbl2.text = arr2[indexPath.row]
        cell.img.image = imaArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc:ThirdViewController = self.storyboard?.instantiateViewController(identifier: "ThirdViewController")as! ThirdViewController
        vc.strlbl1 = arr1[indexPath.row]
        vc.strlbl2 = arr2[indexPath.row]
        vc.strimg = imaArr[indexPath.row]
        ThirdViewController.self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arr1.remove(at: indexPath.row)
            arr2.remove(at: indexPath.row)
            imaArr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        //let cell = tableView.cellForRow(at: indexPath)
//        return 120
//
//    }
    
}
