//
//  TopMoversView.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var homeviewModel = HomeViewModel()

    var body: some View {
        VStack(alignment: .leading)
        {
            Text("Top Movers")
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(homeviewModel.topMovers) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMoversView(homeviewModel: HomeViewModel(coins: [Coin.sampleCoin()]))
}
