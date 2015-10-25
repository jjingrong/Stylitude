//
//  CategoryViewCell.swift
//  Elyts
//
//  Created by Jingrong (: on 25/10/15.
//  Copyright © 2015 Lim Jing Rong. All rights reserved.
//

import UIKit

class CategoryViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    func setUpCell(name: String, imageFile: String) {
        self.nameLabel.text = name
        self.backgroundImage = UIImageView(image: UIImage(named: imageFile))
    }
}
