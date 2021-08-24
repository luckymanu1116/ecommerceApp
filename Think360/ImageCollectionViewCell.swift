//
//  ImageCollectionViewCell.swift
//  Think360
//
//  Created by MANOJ REDDY on 24/08/21.
//  Copyright © 2021 MANOJ REDDY. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewField: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(with image: Image) {
        imageViewField.image = image.image
        titleLabel.text = image.title
        
    }
}
