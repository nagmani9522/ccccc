//
//  ThirdViewController.swift
//  CustomTableViewWithDataPassing
//
//  Created by mac on 31/10/21.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var lbltxt31: UILabel!
    @IBOutlet weak var lbltxt32: UILabel!
    @IBOutlet weak var img33: UIImageView!
    var strlbl1: String!
    var strlbl2: String!
    var strimg: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbltxt31.text = strlbl1
        lbltxt32.text = strlbl2
        img33.image = strimg
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
