//
//  ViewController.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var namestableview: UITableView!
    //var arabicfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var names = ["Arabic","English","Turky","Frensh","Hendy","brazelian","Russian","American"]
    var images = ["m","e","t","f","i","b","r","Macbook-Mockup-Freebie.jpg"]
    
    override func viewDidLoad() {
        namestableview.dataSource = self
        namestableview.delegate = self
        namestableview.reloadData()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = namestableview.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.nameslable.text = "\(names[indexPath.row])"
        cell.imageView!.image = UIImage(named : "\(images[indexPath.row])")
        
        if(indexPath.row % 2 == 0)
        {
            cell.nameslable.backgroundColor = UIColor.orange
        }
        else
        {
            cell.nameslable.backgroundColor = UIColor.yellow
        }
        if(indexPath.row % 2 == 0)
        {
            cell.backgroundColor = UIColor.orange
        }
        else
        {
            cell.backgroundColor = UIColor.yellow
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard (name : "Main",bundle : nil)
        let next1VC = storyBoard.instantiateViewController(withIdentifier: "arabicfilmsVC") as! arabicfilmsVC
        next1VC.selected = indexPath.row
        self.present(next1VC, animated : true , completion : nil)
        
        
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

