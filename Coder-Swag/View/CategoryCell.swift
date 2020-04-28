//
//  CategoryCell.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/27/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryTitle : UILabel!
    @IBOutlet weak var categoryImage : UIImageView!
    
    func updateViews(catigories : Category){
        categoryTitle.text = catigories.title
        categoryImage.image = UIImage(named: catigories.imageName)
    }


}
