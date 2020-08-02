//
//  DetailView.swift
//  Haker News
//
//  Created by Fabricio Pujol on 02/08/20.
//  Copyright © 2020 Fabricio Pujol. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
