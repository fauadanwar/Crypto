//
//  CoinListView.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import SwiftUI

struct CoinListView: View {
    @StateObject var homeviewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
           Text("All Coins")
                .font(.headline)
                .padding()
            HStack{
                Text("Coins")
                Spacer()
                Text("Price")
            }
            .foregroundStyle(.gray)
            .font(.caption)
            .padding(.horizontal)
            ScrollView() {
                ForEach(homeviewModel.coins) { coin in
                    CoinListRowView(coin: coin)
                }
            }
       }
    }
}

#Preview {
    CoinListView(homeviewModel: HomeViewModel(coins: [Coin.sampleCoin()]))
}
