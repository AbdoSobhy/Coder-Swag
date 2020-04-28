//
//  ProductVC.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/28/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    @IBOutlet weak var productsCollection : UICollectionView!
    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 
}
extension ProductVC : UICollectionViewDelegate {
    
}
extension ProductVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let newProducts = products[indexPath.row]
        cell.updateProducts(products: newProducts)
        return cell
    }
    
    
}
