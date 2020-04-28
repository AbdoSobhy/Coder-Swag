//
//  DataService.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/27/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import Foundation
class DataServices {
    static let instance = DataServices()
    
    private let categories = [Category.init(title: "SHIRTS", imageName: "shirts.png"),
                              Category.init(title: "HOODIES", imageName: "hoodies.png"),
                              Category.init(title: "HATS", imageName: "hats.png"),
                              Category.init(title: "DIGITALS", imageName: "digital.png")]
    
    func getCategories() -> [Category] {
        
        return categories
    }
    
    private let hats = [Product.init(title: "hat1", price: "$4", imageName: "hat01.png"),
                        Product.init(title: "hat2", price: "$3", imageName: "hat02.png"),
                        Product.init(title: "hat3", price: "$5", imageName: "hat03.png"),
                        Product.init(title: "hat4", price: "$2", imageName: "hat04.png"),]
    
    private let shirts  = [Product.init(title: "shirt1", price: "$4", imageName: "shirt01.png"),
                           Product.init(title: "shirt2", price: "$6", imageName: "shirt02.png"),
                           Product.init(title: "shirt3", price: "$8", imageName: "shirt03.png"),
                           Product.init(title: "shirt4", price: "$3", imageName: "shirt04.png"),
                           Product.init(title: "shirt5", price: "$19", imageName: "shirt05.png")]
    
    private let hoodies = [Product.init(title: "hoodie1", price: "$23", imageName: "hoodie01.png"),
                           Product.init(title: "hoodie2", price: "$24", imageName: "hoodie02.png"),
                           Product.init(title: "hoodie3", price: "$29", imageName: "hoodie03.png"),
                           Product.init(title: "hoodie4", price: "$27", imageName: "hoodie04.png"),]
    
    private let degital = [Product]()
    func getProduct (title : String)-> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITALS":
            return getDigitals()
        default:
            return getShirts()
        }
    }
   func getShirts()->[Product]{
        return shirts
    }
    func getHats()->[Product]{
         return hats
     }
    func getHoodies()->[Product]{
         return hoodies
     }
    func getDigitals()->[Product]{
         return degital
     }
    
    
    
    
}


