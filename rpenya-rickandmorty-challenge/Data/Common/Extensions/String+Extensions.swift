//
//  String+Extensions.swift
//  Data
//
//  Created by raulbot on 16/3/23.
//

import Foundation

extension String {
    func getURLLastComponent() -> String? {
        if let url = URL(string: self) {
            return url.lastPathComponent
        } else {
            return nil
        }
    }
}
