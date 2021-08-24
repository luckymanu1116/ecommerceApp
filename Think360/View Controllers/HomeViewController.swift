//
//  HomeViewController.swift
//  Think360
//
//  Created by MANOJ REDDY on 23/08/21.
//  Copyright © 2021 MANOJ REDDY. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
  
    @IBOutlet weak var CollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
        CollectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
   
   

}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.setup(with: images[indexPath.row])
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
}
