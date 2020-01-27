//
//  ViewController.swift
//  NewApp
//
//  Created by apple on 1/27/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var imagename:[String] = ["A1","A2","A3","A4","A5"]
    var imagedetails:[String] = ["This photo is taken by:  1 Jan, 2020","This photo is taken by:  2 Jan, 2020", "This photo is taken by:  3 Jan, 2020","This photo is taken by:  4 Jan, 2020","This photo is taken by:  5 Jan, 2020"]
    var authorname:[String] = ["Rasel","Shishir","Ria","Murad","Afreen"]
    
    @IBOutlet weak var array2: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        array2.delegate = self
        array2.dataSource = self
        
        self.array2.rowHeight = 250.0
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return imagename.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "show") as! MyTableViewCell
        cell.Nameshow.text = authorname[indexPath.row]
        cell.detailsshow1.text = imagedetails[indexPath.row]
        cell.imageshow.image = UIImage(named: imagename[indexPath.row])
        
        cell.accessoryType = .disclosureIndicator
        
        return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "story") as! ScrollViewController
        
        vc.getname = authorname[indexPath.row]
        vc.getdetails = imagedetails[indexPath.row]
        vc.getimg = UIImage(named: imagename[indexPath.row])!
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

