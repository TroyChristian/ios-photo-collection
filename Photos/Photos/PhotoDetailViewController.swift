//
//  PhotoDetailViewController.swift
//  Photos
//
//  Created by Lambda_School_Loaner_219 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    @IBAction func savePhoto(_ sender: Any) {
        
        guard let image = imageViewOutlet.image,
            let imageData = image.pngData(),
            let title = textFieldOutlet.text else { return }
        
        
        if let photo = photo {
            photoController?.Update(updatePhoto: photo, updateData: imageData, updateTitle: title)
        } else {
            photoController?.Create(newPhotoData: imageData, newPhotoTitle: title)
        }
        
        navigationController?.popViewController(animated: true)
    }
    @IBAction func addPhoto(_ sender: Any) {
        
    }
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    var photoController: PhotoController?
    var photo: Photo?
   var themeHelper:ThemeHelper? 
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 
      
    }
    


