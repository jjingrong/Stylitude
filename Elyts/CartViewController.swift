//
//  CartViewController.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit
import TAOverlay

class CartViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    /* Attributes */
    
    // Storyboard outlets
    @IBOutlet weak var allCheckoutItemTiles: UICollectionView!

    @IBOutlet weak var deleteButton: UIButton!
    let customer = CustomerModel.sharedInstance
    var cartModel = CartModel.sharedInstance
    
    override func viewDidLoad() {
        //        self.view.backgroundColor = UIColor.clearColor()
        //        allCategoryTiles.backgroundColor = UIColor.clearColor()
        allCheckoutItemTiles.delegate = self
        allCheckoutItemTiles.dataSource = self
        
    }
    
    // Collection View Stuff
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // Total categories
        return cartModel.getTotalItems()
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let arrayOfItems = cartModel.getCartItems()
        let productID = arrayOfItems[indexPath.item]
        
        let cell = allCheckoutItemTiles.dequeueReusableCellWithReuseIdentifier("CartViewCell", forIndexPath: indexPath) as! CartViewCell
        cell.setUpCell(arrayOfProducts[productID], brand: arrayOfProductsBrands[productID], price: arrayOfProductPrice[productID], imageFile: arrayOfProductImages[productID])
        print (arrayOfProductImages[productID])
        cell.parent = allCheckoutItemTiles
        return cell
    }
    
    @IBAction func checkoutButtonPressed(sender: AnyObject) {
        TAOverlay.showOverlayWithLabel("Payment with MasterPass Completed!", options: [TAOverlayOptions.OverlayTypeSuccess, TAOverlayOptions.AutoHide,TAOverlayOptions.OverlaySizeRoundedRect])
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
