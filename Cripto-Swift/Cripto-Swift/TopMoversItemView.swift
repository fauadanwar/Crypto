//
//  TopMoversItemView.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    var coin: Coin

    var body: some View {
        VStack(alignment: .center, spacing: 10){
            //Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.yellow)
             //Coin info
            HStack {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurruncy())
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
             //Coin percent change
            Text(coin.priceChangePercentage24HWithSign)
                .font(.title2)
                .foregroundStyle(coin.priceChangePercentage24HColour)
        }
        .frame(width: 150, height: 150)
        .background(.topMoverBgColour)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray3), lineWidth: 2)
        )
    }
}

#Preview {
    TopMoversItemView(coin: Coin.sampleCoin())
}
