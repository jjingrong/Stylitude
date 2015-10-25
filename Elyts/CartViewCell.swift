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
    
    
    func setUpCell(name: String, brand: String, price: Int, imageFile: String) {
        self.nameLabel.text = name
        self.brandLabel.text = brand
        self.priceLabel.text = "$" + String(price)
        self.itemImage = UIImageView(image: UIImage(named: imageFile))
    }
    @IBAction func deleteButtonPressed(sender: AnyObject) {
        self.removeFromSuperview()
    }
}

