//
//  PhotosCollectionViewController.swift
//  Photos
//
//  Created by Lambda_School_Loaner_219 on 11/14/19.
//  Copyright © 2019 Lambda_School_Loaner_219. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotosCollectionViewController: UICollectionViewController {
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }



    // MARK: UICollectionViewDataSource
    
    func setTheme(){
        guard let   currentPreference = themeHelper.themePreference else {return}
        
        if currentPreference == "Dark"{
            view.backgroundColor = .systemGray
        }
        
        if currentPreference == "Green"{
            view.backgroundColor = .systemGreen
        }
        
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoController.photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotosCollectionViewCell else {return UICollectionViewCell()}
        let photo = photoController.photos[indexPath.row]
    
        // Configure the cell
        cell.photo = photo
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       switch segue.identifier{
             case "selectThemeSegue":
             
                 guard let destinationVC = segue.destination as? ThemeSelectionViewController else {return}
                 
                 destinationVC.themeHelper = themeHelper
                 
             case "AddButtonSegue":
                 guard let destinationVC = segue.destination as? PhotoDetailViewController else {return}
                 destinationVC.photoController = photoController
                 destinationVC.themeHelper = themeHelper
        
            
       case "fromCollectionCellSegue":
        guard let destinationVC = segue.destination as? PhotoDetailViewController, let indexPath = collectionView?.indexPathsForSelectedItems?.first else {return}
        destinationVC.photo = photoController.photos[indexPath.row]
        destinationVC.photoController = photoController
        destinationVC.themeHelper = themeHelper
        
       default:
        break
        
        
                 
                 
                 
             }
        
    }
    

}
