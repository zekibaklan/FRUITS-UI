//
//  FruitsModel.swift
//  Fructus
//
//  Created by Zeki Baklan on 6.09.2023.
//

import SwiftUI

//MARK: -  FRUITS DATA MODEL

struct Fruit : Identifiable {
    var id =  UUID()
    
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
    
    
}
