//
//  MySceneVO.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/29.
//

import Foundation

// struct to have scene
struct MyScene {
    var imageNames: String
    var subtitle: String
    
    init(_imageNames: String, _subtitle: String) {
        imageNames = _imageNames
        subtitle = _subtitle
    }
}
