//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Alexander Kovzhut on 29.08.2023.
//

import Foundation

extension Array where Element: Identifiable {
    
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
