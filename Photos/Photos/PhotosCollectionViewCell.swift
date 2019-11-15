//
//  PhotosCollectionViewCell.swift
//  Photos
//
//  Created by Lambda_School_Loaner_219 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var photo: Photo? {
    didSet {
        updateViews()
        } }

func updateViews() {
   guard let photo = photo else { return }
   
   imageViewOutlet.image = UIImage(data: photo.imageData)
   labelOutlet.text = photo.title
   
    
    
}
}
