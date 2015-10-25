//
//  CategoryViewController.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit
import ZLSwipeableViewSwift


class CategoryViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    /* Attributes */
    
    // Storyboard outlets
    @IBOutlet weak var allCategoryTiles: UICollectionView!
    
    let customer = CustomerModel.sharedInstance
    
    override func viewDidLoad() {
//        self.view.backgroundColor = UIColor.clearColor()
//        allCategoryTiles.backgroundColor = UIColor.clearColor()
        allCategoryTiles.delegate = self
        allCategoryTiles.dataSource = self
        
    }
    
    // Collection View Stuff
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Total categories
        return 10
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = allCategoryTiles.dequeueReusableCellWithReuseIdentifier("CategoryViewCell", forIndexPath: indexPath) as! CategoryViewCell
        cell.setUpCell(categoryArray[indexPath.item], imageFile: categoryImageArray[indexPath.item])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        if indexPath.item == 0 {
//            self.performSegueWithIdentifier("ViewUserToneAnalyzerSegue", sender: self)
//            
//        }
        populateCards()
    }
    
    func populateCards() {
        
    }
    
    /* Bottom Nav Bar Action */
    @IBAction func buttonOnePressed(sender: AnyObject) {
    }
    
    @IBAction func buttonTwoPressed(sender: AnyObject) {
    }
    
    @IBAction func buttonThreePressed(sender: AnyObject) {
    }
    
    
    
}
