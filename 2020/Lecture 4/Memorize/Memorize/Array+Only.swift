//
//  Array+Only.swift
//  Memorize
//
//  Created by Alexander Kovzhut on 11.09.2023.
//

import Foundation

extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
}
