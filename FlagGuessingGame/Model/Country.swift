//
//  Country.swift
//  FlagGuessingGame
//
//  Created by Elyanil Liranzo Castro on 2/5/20.
//  Copyright © 2020 Elyanil Liranzo Castro. All rights reserved.
//

import Foundation

struct Country {
    let name: String
    static func createCountries() -> [Country] {
        var path = Bundle.main.resourceURL!
        path.appendPathComponent("countries.txt")
        let countryNames = try! String(contentsOf: path).components(separatedBy: "\n").filter{!$0.isEmpty}
        let countries = countryNames.map{ name in
            return Country(name: name)
        }
        return countries
    }
}
