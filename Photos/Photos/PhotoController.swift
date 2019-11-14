//
//  PhotoController.swift
//  Photos
//
//  Created by Lambda_School_Loaner_219 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import Foundation
class PhotoController {
    var photos: [Photo] = []
    
    
    func Create(newPhotoData:Data, newPhotoTitle:String){
        let newPhoto = Photo(imageData:newPhotoData, title:newPhotoTitle)
        photos.append(newPhoto)
    }
    
    func Update(updatePhoto:Photo, updateData:Data, updateTitle: String ){
       
        
    }
    
}
