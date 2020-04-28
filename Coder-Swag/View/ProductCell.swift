//
//  ProductCell.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func updateProducts(products: Product) {
        productTitle.text = products.title
        productPrice.text = products.price
        productImage.image = UIImage(named: products.imageName)
    }
    
}
