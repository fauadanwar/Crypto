//
//  CoinListRow.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import SwiftUI
import Kingfisher

struct CoinListRowView: View {
    
    var coin: Coin
    
    var body: some View {
        HStack {
            //Market cap rank
            Text("\(coin.marketCapRank)")
                .font(.caption)
                .foregroundColor(.gray)
            //Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 35, height: 35)
                .foregroundColor(.yellow)
            //Coin name info
            VStack(alignment: .leading) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 5)
            }
            .padding(2)
            Spacer()
            //Coin price info
            VStack(alignment: .trailing) {
                Text(coin.currentPrice.toCurruncy())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text(coin.priceChangePercentage24HWithSign)
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coin.priceChangePercentage24HColour)
            }
            .padding(2)
        }
        .padding()
    }
}

#Preview {
    CoinListRowView(coin: Coin.sampleCoin())
}
