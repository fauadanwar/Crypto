//
//  HomeView.swift
//  Cripto-Swift
//
//  Created by Fouad Mohammed Rafique Anwar on 03/07/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeviewModel = HomeViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //Top moves view
                TopMoversView(homeviewModel: homeviewModel)
                Divider()
                //All coins view
                CoinListView(homeviewModel: homeviewModel)
            }
            .navigationTitle("Live Prices")
        }
        .onAppear {
            homeviewModel.fetchCoins()
        }
    }
}

#Preview {
    HomeView()
}
