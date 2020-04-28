//
//  ViewController.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/27/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {
    @IBOutlet weak var categoryTable : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
}
}

extension CategoriesVC : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let prouductVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ProductVC") as! ProductVC
        let title = DataServices.instance.getCategories()[indexPath.row].title
        prouductVC.products = DataServices.instance.getProduct(title: title)
        self.navigationController?.pushViewController(prouductVC, animated: true)
    }
    
}
extension CategoriesVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as!
        CategoryCell
        let categories = DataServices.instance.getCategories()[indexPath.row]
        cell.updateViews(catigories: categories)
        return cell
        }
        }

    
    

