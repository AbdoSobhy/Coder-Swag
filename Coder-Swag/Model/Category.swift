//
//  File.swift
//  Coder-Swag
//
//  Created by Abdelrahman Sobhy on 4/27/20.
//  Copyright © 2020 Macbook pro. All rights reserved.
//

import Foundation
struct Category{
   private(set) public var title : String
   private(set) public var imageName : String
    init(title : String, imageName:String) {
        self.title = title
        self.imageName = imageName
    }
}
