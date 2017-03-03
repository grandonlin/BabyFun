//
//  CategoryCell.swift
//  Baby Fun
//
//  Created by Grandon Lin on 2017-02-28.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var categoryLbl: UILabel!
    
    func configureCell(category: Category) {
        thumbImg.image = UIImage(named: "\(category.name)")
        categoryLbl.text = category.name.capitalized
    }
    
}
