//
//  MainViewController.swift
//  thierd_app
//
//  Created by Ahmed abu elregal on 10/27/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBAction func back2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
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
    
    
    @IBOutlet weak var Collectionview: UICollectionView!
    
    var collectionview: UICollectionView?
    let cellId = "cellid"
    let cellSpacing:CGFloat = 10
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout())
        collectionview?.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionview!)
        collectionview?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionview?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionview?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionview?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionview?.backgroundColor = .white
        //collection view sitting
        let collectionVewFlowlayout = UICollectionViewFlowLayout()
        collectionview?.setCollectionViewLayout(collectionVewFlowlayout, animated: true)
        collectionVewFlowlayout.scrollDirection = .vertical
        //collectionVewFlowlayout.scrollDirection = .horizontal
        collectionVewFlowlayout.sectionInset = UIEdgeInsets(top: 0, left: cellSpacing, bottom: 0, right: cellSpacing)
        collectionVewFlowlayout.minimumInteritemSpacing = 10
        collectionVewFlowlayout.minimumLineSpacing = 10
        collectionview?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionview?.delegate = self
        collectionview?.dataSource = self
        

        
        

        // Do any additional setup after loading the view.
    }
    //UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = indexPath.row % 2 == 0 ? .cyan: .orange
        cell.selectedBackgroundView = UIView()
        cell.selectedBackgroundView?.backgroundColor = UIColor.red
        return cell
    }
    //UICollectionViewDelegateFlowLayout
    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath: IndexPath) ->CGSize
    {
       
       // let width = (UIScreen.main.bounds.size.width - 3 * cellSpacing) / 2
       // let height = (UIScreen.main.bounds.size.height - 4 * cellSpacing) / 3
        return CGSize(width: 50, height: 240)
        //let height = width
         //return CGSize(width: 100, height: 100)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
