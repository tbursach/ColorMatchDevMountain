//
//  UIColorExtension.swift
//  ColorMatch
//
//  Created by Shean Bjoralt on 10/15/20.
//

import UIKit

extension UIColor {
    
    static func getRandomColor() -> UIColor {
        let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.black, UIColor.white, UIColor.green, UIColor.purple, UIColor.brown, UIColor.orange]
        let randomNumber = arc4random_uniform(UInt32(colors.count))
        
        return colors[Int(randomNumber)]
    }
}
