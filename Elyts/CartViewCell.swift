//
//  CartViewCell.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//


import UIKit

class CartViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    weak var parent: UICollectionView?
    var cartModel = CartModel.sharedInstance
    
    func setUpCell(name: String, brand: String, price: Int, imageFile: String) {
        self.nameLabel.text = name
        self.brandLabel.text = brand
        self.priceLabel.text = "$" + String(price)

        self.itemImage.image = UIImage(named: imageFile)
    }
    @IBAction func deleteButtonPressed(sender: AnyObject) {
        self.removeFromSuperview()
        cartModel.deleteItemFromCart( self.parent!.indexPathForCell(self)!.item )
        self.parent!.reloadData()
    }
}

