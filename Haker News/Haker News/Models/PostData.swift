//
//  PostData.swift
//  Haker News
//
//  Created by Fabricio Pujol on 29/07/20.
//  Copyright © 2020 Fabricio Pujol. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url:String?
    let objectID: String
}
