//
//  ScrollViewController.swift
//  NewApp
//
//  Created by apple on 1/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollname: UILabel!
    @IBOutlet weak var scrolldetails: UILabel!
    @IBOutlet weak var scrollimg: UIImageView!
    
    var getimg = UIImage()
    var getname = String()
    var getdetails = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollname.text = getname
        scrollimg.image = getimg
        scrolldetails.text = getdetails
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backbutton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
