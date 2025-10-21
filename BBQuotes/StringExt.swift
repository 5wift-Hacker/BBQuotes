//
//  StringExt.swift
//  BBQuotes
//
//  Created by John Newman on 17/9/2025.
//

import Foundation
extension String {
    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }
    
    func removeCaseAndSpace() -> String {
        self.removeSpaces().lowercased()
    }
}
