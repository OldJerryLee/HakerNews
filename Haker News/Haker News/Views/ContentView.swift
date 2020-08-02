//
//  ContentView.swift
//  Haker News
//
//  Created by Fabricio Pujol on 28/07/20.
//  Copyright © 2020 Fabricio Pujol. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("Haker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
