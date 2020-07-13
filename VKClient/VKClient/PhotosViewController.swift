//
//  PhotosViewController.swift
//  VKClient
//
//  Created by Михаил on 10.07.2020.
//  Copyright © 2020 Михаил. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var photos = [
        UIImage(named: "image0"),
        UIImage(named: "image1")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        }
    }

extension PhotosViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as! PhotoCell
        
        let image = photos[indexPath.item]
        cell.photoView.image = image
        
        return cell
    }
    
    
}
