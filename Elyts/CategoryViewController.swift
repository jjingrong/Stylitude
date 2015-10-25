//
//  CategoryViewController.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit
import ZLSwipeableViewSwift
import MDCSwipeToChoose


class CategoryViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate, MDCSwipeToChooseDelegate {
    
    /* Attributes */
    
    // Storyboard outlets
    @IBOutlet weak var allCategoryTiles: UICollectionView!
    
    @IBOutlet weak var topPanelLabel: UILabel!
    
    let customer = CustomerModel.sharedInstance
    var cartModel = CartModel.sharedInstance
    
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
        
        topPanelLabel.text = "Dresses";
        populateCards()
    }
    
    func populateCards() {
        for i in 0...9 {
            let options = MDCSwipeToChooseViewOptions()
            options.delegate = self
            options.likedText = "Added!"
            options.nopeText = "Nope"
            options.onPan = { state -> Void in
                if state.thresholdRatio == 1 && state.direction == MDCSwipeDirection.Left {
//                    print("Photo deleted!")
                }
                if state.thresholdRatio == 1 && state.direction == MDCSwipeDirection.Right {
//                    print("Photo saved!")
                }
            }
            
            let frameForPicture = CGRect(x: 30, y: 50 , width: 312, height: 454)
            
            let view = MDCSwipeToChooseView(frame: frameForPicture, options: options)
            view.imageView.image = UIImage(named: "photo.jpg")
            self.view.addSubview(view)
            view.tag = i
        }
    }
    
    // This is called when a user didn't fully swipe left or right.
    func viewDidCancelSwipe(view: UIView) -> Void{
        print("Couldn't decide, huh?")
    }
    
    var count = 0
    // Sent before a choice is made. Cancel the choice by returning `false`. Otherwise return `true`.
    func view(view: UIView, shouldBeChosenWithDirection: MDCSwipeDirection) -> Bool{
        if (shouldBeChosenWithDirection == MDCSwipeDirection.Left) {
            count += 1
            if (count == 10) {
                topPanelLabel.text = "Category";
                print (cartModel.getCartItems())
            }
            return true;
        } else if (shouldBeChosenWithDirection == MDCSwipeDirection.Right) {
            cartModel.addItemToCart(view.tag)
            count += 1
            if (count == 10) {
                topPanelLabel.text = "Category";
                print (cartModel.getCartItems())                
            }
            
            return true;
        } else {
            // Snap the view back and cancel the choice.
            UIView.animateWithDuration(0.16, animations: { () -> Void in
                view.transform = CGAffineTransformIdentity
                view.center = view.superview!.center
            })
            return false;
        }
    }
    
    // This is called then a user swipes the view fully left or right.
    func view(view: UIView, wasChosenWithDirection: MDCSwipeDirection) -> Void{
        if wasChosenWithDirection == MDCSwipeDirection.Left {
            print("Photo deleted!")
        }else{
            print("Photo saved!")
        }
    }
    
    
    
    /* Bottom Nav Bar Action */
    @IBAction func buttonOnePressed(sender: AnyObject) {
    }
    
    @IBAction func buttonTwoPressed(sender: AnyObject) {
    }
    
    @IBAction func buttonThreePressed(sender: AnyObject) {
    }
    
    
    
}
