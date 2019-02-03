//
//  img_videoViewController.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class img_videoViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    @IBOutlet weak var collectionofimg: UICollectionView!
    
    let cellSpacing:CGFloat = 10
    
    var arabicfilms = ["ahmed","mohamed","yassen","zien","abuelregal","mehedy","essam","menna","fatemma","gehan"]
    var names3 = ["Arabic","arabic_Song","English","English_Song","Turky","Turky_Song","Frensh","Frensh_Song","Hendy","Hendy_Song"]
    var photos: [UIImage] = [
        UIImage(named: "m")!,
        UIImage(named: "e")!,
        UIImage(named: "t")!,
        UIImage(named: "f")!,
        UIImage(named: "i")!,
        UIImage(named: "b")!,
        UIImage(named: "r")!,
        UIImage(named: "Macbook-Mockup-Freebie.jpg")!
        ]
    
    
    
    override func viewDidLoad() {
        collectionofimg.dataSource = self
        collectionofimg.delegate = self
        collectionofimg.reloadData()
        let layout = self.collectionofimg.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset =  UIEdgeInsets(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
        layout.minimumInteritemSpacing = 5
        layout.itemSize = CGSize(width: (self.collectionofimg.frame.size.width - 3 * 10 ) / 2, height: (self.collectionofimg.frame.size.height - 4 * 10) / 3)
        layout.scrollDirection = .vertical
        //layout.scrollDirection = .horizontal

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionofimg.dequeueReusableCell(withReuseIdentifier: "img_videoCollectionVC", for: indexPath) as! img_videoCollectionVC
        cell.namescollection.text = "\(names3[indexPath.row])"
        cell.imagecollection.image = photos[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
