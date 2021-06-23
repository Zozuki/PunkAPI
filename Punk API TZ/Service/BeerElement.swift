//
//  Beer.swift
//  Punk API TZ
//
//  Created by user on 22.06.2021.

import Foundation

// MARK: - BeerElement
//class BeerElement: Codable {
//    let imageURL: String
//    let targetOg: Double
//    let foodPairing: [String]
//    let attenuationLevel: Double
//    let volume: BoilVolume
//    let brewersTips: String
//    let ingredients: Ingredients
//    let tagline: String
//    let srm: Double?
//    let targetFg: Int
//    let method: Method
//    let name: String
//    let abv: Double
//    let ph: Double?
//    let boilVolume: BoilVolume
//    let ebc: Int?
//    let id: Int
//    let contributedBy: ContributedBy
//    let ibu: Double?
//    let firstBrewed, beerDescription: String
//
//    enum CodingKeys: String, CodingKey {
//        case imageURL = "image_url"
//        case targetOg = "target_og"
//        case foodPairing = "food_pairing"
//        case attenuationLevel = "attenuation_level"
//        case volume
//        case brewersTips = "brewers_tips"
//        case ingredients, tagline, srm
//        case targetFg = "target_fg"
//        case method, name, abv, ph
//        case boilVolume = "boil_volume"
//        case ebc, id
//        case contributedBy = "contributed_by"
//        case ibu
//        case firstBrewed = "first_brewed"
//        case beerDescription = "description"
//    }
//
//    init(imageURL: String, targetOg: Double, foodPairing: [String], attenuationLevel: Double, volume: BoilVolume, brewersTips: String, ingredients: Ingredients, tagline: String, srm: Double?, targetFg: Int, method: Method, name: String, abv: Double, ph: Double?, boilVolume: BoilVolume, ebc: Int?, id: Int, contributedBy: ContributedBy, ibu: Double?, firstBrewed: String, beerDescription: String) {
//        self.imageURL = imageURL
//        self.targetOg = targetOg
//        self.foodPairing = foodPairing
//        self.attenuationLevel = attenuationLevel
//        self.volume = volume
//        self.brewersTips = brewersTips
//        self.ingredients = ingredients
//        self.tagline = tagline
//        self.srm = srm
//        self.targetFg = targetFg
//        self.method = method
//        self.name = name
//        self.abv = abv
//        self.ph = ph
//        self.boilVolume = boilVolume
//        self.ebc = ebc
//        self.id = id
//        self.contributedBy = contributedBy
//        self.ibu = ibu
//        self.firstBrewed = firstBrewed
//        self.beerDescription = beerDescription
//    }
//}
//
//// MARK: - BoilVolume
//class BoilVolume: Codable {
//    let value: Double
//    let unit: Unit
//
//    init(value: Double, unit: Unit) {
//        self.value = value
//        self.unit = unit
//    }
//}
//
//enum Unit: String, Codable {
//    case celsius = "celsius"
//    case grams = "grams"
//    case kilograms = "kilograms"
//    case litres = "litres"
//}
//
//enum ContributedBy: String, Codable {
//    case aliSkinnerAliSkinner = "Ali Skinner <AliSkinner>"
//    case samMasonSamjbmason = "Sam Mason <samjbmason>"
//}
//
//// MARK: - Ingredients
//class Ingredients: Codable {
//    let yeast: String
//    let malt: [Malt]
//    let hops: [Hop]
//
//    init(yeast: String, malt: [Malt], hops: [Hop]) {
//        self.yeast = yeast
//        self.malt = malt
//        self.hops = hops
//    }
//}
//
//// MARK: - Hop
//class Hop: Codable {
//    let amount: BoilVolume
//    let add: Add
//    let name: String
//    let attribute: Attribute
//
//    init(amount: BoilVolume, add: Add, name: String, attribute: Attribute) {
//        self.amount = amount
//        self.add = add
//        self.name = name
//        self.attribute = attribute
//    }
//}
//
//enum Add: String, Codable {
//    case dryHop = "dry hop"
//    case end = "end"
//    case middle = "middle"
//    case start = "start"
//}
//
//enum Attribute: String, Codable {
//    case aroma = "aroma"
//    case attributeFlavour = "Flavour"
//    case bitter = "bitter"
//    case flavour = "flavour"
//}
//
//// MARK: - Malt
//class Malt: Codable {
//    let name: String
//    let amount: BoilVolume
//
//    init(name: String, amount: BoilVolume) {
//        self.name = name
//        self.amount = amount
//    }
//}
//
//// MARK: - Method
//class Method: Codable {
//    let mashTemp: [MashTemp]
//    let twist: String?
//    let fermentation: Fermentation
//
//    enum CodingKeys: String, CodingKey {
//        case mashTemp = "mash_temp"
//        case twist, fermentation
//    }
//
//    init(mashTemp: [MashTemp], twist: String?, fermentation: Fermentation) {
//        self.mashTemp = mashTemp
//        self.twist = twist
//        self.fermentation = fermentation
//    }
//}
//
//// MARK: - Fermentation
//class Fermentation: Codable {
//    let temp: BoilVolume
//
//    init(temp: BoilVolume) {
//        self.temp = temp
//    }
//}
//
//// MARK: - MashTemp
//class MashTemp: Codable {
//    let temp: BoilVolume
//    let duration: Int?
//
//    init(temp: BoilVolume, duration: Int?) {
//        self.temp = temp
//        self.duration = duration
//    }
//}
//
//typealias Beer = [BeerElement]


// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let beer = try? newJSONDecoder().decode(Beer.self, from: jsonData)



// MARK: - BeerElement
class BeerElement: Codable {
    
    let imageURL: String
    let name: String
    let beerDescription: String

    enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case name
        case beerDescription = "description"
    }

    init(imageURL: String,  name: String, beerDescription: String) {
        self.imageURL = imageURL
        self.name = name
        self.beerDescription = beerDescription
    }
}

typealias Beer = [BeerElement]
