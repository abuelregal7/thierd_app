//
//  arabicfilmsVC.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class arabicfilmsVC: UIViewController,UITableViewDataSource ,UITableViewDelegate {
    
    var selected : Int!
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    @IBOutlet weak var tableoffilms: UITableView!
    
    var arabicfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var arabic_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Englishfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var English_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Turkyfilms = ["ahmed","1","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var Turky_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Frenshfilms = ["2","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var Frensh_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Hendyfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var Hendy_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var brazelianfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var brazelian_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Russianfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var Russian_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var Americanfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var American_image = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    
    var link = ["","","","","","","","","",""]

    override func viewDidLoad() {
        tableoffilms.dataSource = self
        tableoffilms.delegate = self
        tableoffilms.reloadData()
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (selected == 0)
        {
            return arabicfilms.count
        }else if (selected == 1)
        {
            return Englishfilms.count
        }else if (selected == 2)
        {
            return Turkyfilms.count
        }else if (selected == 3)
        {
            return Frenshfilms.count
        }else if (selected == 4)
        {
            return Hendyfilms.count
        }else if (selected == 5)
        {
            return brazelianfilms.count
        }else if (selected == 6)
        {
            return Russianfilms.count
        }else
        {
            return Americanfilms.count
        }
    }
        

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableoffilms.dequeueReusableCell(withIdentifier: "arabicfilmsTVC") as! arabicfilmsTVC
        
        if(indexPath.row % 2 == 0)
        {
            cell.namesoffilms.backgroundColor = UIColor.orange
        }
        else
        {
            cell.namesoffilms.backgroundColor = UIColor.yellow
        }
        if(indexPath.row % 2 == 0)
        {
            cell.backgroundColor = UIColor.orange
        }
        else
        {
            cell.backgroundColor = UIColor.yellow
        }
        if(indexPath.row % 2 == 0)
        {
            cell.link.backgroundColor = UIColor.orange
        }
        else
        {
            cell.link.backgroundColor = UIColor.yellow
        }
        
        if (selected == 0)
        {
            cell.namesoffilms.text = "\(arabicfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(arabic_image[indexPath.row])")
        }else if (selected == 1)
        {
            cell.namesoffilms.text = "\(Englishfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(English_image[indexPath.row])")
        }else if (selected == 2)
        {
            cell.namesoffilms.text = "\(Turkyfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(Turky_image[indexPath.row])")
        }else if (selected == 3)
        {
            cell.namesoffilms.text = "\(Frenshfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(Frensh_image[indexPath.row])")
        }else if (selected == 4)
        {
            cell.namesoffilms.text = "\(Hendyfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(Hendy_image[indexPath.row])")
        }else if(selected == 5)
        {
            cell.namesoffilms.text = "\(brazelianfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(brazelian_image[indexPath.row])")
        }else if (selected == 6)
        {
            cell.namesoffilms.text = "\(Russianfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(Russian_image[indexPath.row])")
        }else
        {
            cell.namesoffilms.text = "\(Americanfilms[indexPath.row])"
            cell.imageView!.image = UIImage(named : "\(American_image[indexPath.row])")
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
       let storyBoard : UIStoryboard = UIStoryboard (name : "Main",bundle : nil)
       let next2VC = storyBoard.instantiateViewController(withIdentifier: "img_videoViewController") as! img_videoViewController
        next2VC.arabicfilms = ["\(arabicfilms)"]
        self.present(next2VC, animated : true , completion : nil)
        print("\(arabicfilms[indexPath.row])")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
