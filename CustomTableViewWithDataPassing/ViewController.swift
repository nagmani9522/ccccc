//  ViewController.swift
//  CustomTableViewWithDataPassing
//
//  Created by mac on 31/10/21.
//

import UIKit

class ViewController: UIViewController {
    var arr1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var arr2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr1[indexPath.row]
        cell?.detailTextLabel?.text = arr2[indexPath.row]
        return cell!
    }
    
    
}
