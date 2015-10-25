//
//  CategoryViewController.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit


class CategoryViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    /* Attributes */
    
    // Storyboard outlets
    @IBOutlet weak var allCategoryTiles: UICollectionView!
    let customer = CustomerModel.sharedInstance
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.clearColor()
        allCategoryTiles.backgroundColor = UIColor.clearColor()
        allCategoryTiles.delegate = self
        allCategoryTiles.dataSource = self
        
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    // Collection View Stuff
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Total categories
        return 10
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = allCategoryTiles.dequeueReusableCellWithReuseIdentifier("CategoryViewCell", forIndexPath: indexPath) as! CategoryViewCell
        cell.setUpCell(categoryArray[indexPath], imageFile: categoryImageArray[indexPath])
        return cell
    }
    
    
    
}
