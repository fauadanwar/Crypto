//
//  HomeViewModel.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var coins: [Coin]
    @Published var topMovers: [Coin] = []
    
    init(coins: [Coin] = []) {
        self.coins = coins
    }
    
    func fetchCoins() {
        guard let url = URL(string: Constants.urlString) else { return }
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async{
                    [weak self] in
                    guard let strongSelf = self else { return }
                    strongSelf.coins = coins
                    strongSelf.getTopMovingCoins()
                }
               
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
    func getTopMovingCoins() {
        let sortedCoins = coins.sorted { $0.priceChangePercentage24H > $1.priceChangePercentage24H }
        self.topMovers = Array(sortedCoins.prefix(10))
    }
}
