//
//  Coin.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import Foundation
import SwiftUI

struct Coin: Codable, Identifiable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCapRank: Int
    let marketCap, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double
    let marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    
    var priceChangePercentage24HWithSign: String {
        let sign = priceChangePercentage24H > 0 ? "+" : ""
        return sign + String(format: "%.2f", priceChangePercentage24H) + "%"
    }

    var priceChangePercentage24HColour: Color {
        return priceChangePercentage24H > 0 ? .green : .red
    }
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
    let price: [Double]?
}

extension Coin {
    static func sampleCoin() -> Coin {
        return Coin(id: "1", symbol: "BTC", name: "Bitcoin", image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", currentPrice: 123456, marketCapRank: 1, marketCap: 123456, fullyDilutedValuation: 123456, totalVolume: 123456, high24H: 123456, low24H: 123456, priceChange24H: 123456, priceChangePercentage24H: 123456, marketCapChange24H: 123456, marketCapChangePercentage24H: 123456, circulatingSupply: 123456, totalSupply: 123456, maxSupply: 123456, ath: 123456, athChangePercentage: 123456, athDate: "2024-07-03T00:00:00.000Z", atl: 123456, atlChangePercentage: 123456, atlDate: "2024-07-03T00:00:00.000Z", lastUpdated: "2024-07-03T00:00:00.000Z", sparklineIn7D: SparklineIn7D(price: [123456]), priceChangePercentage24HInCurrency: 123456)
    }
}
