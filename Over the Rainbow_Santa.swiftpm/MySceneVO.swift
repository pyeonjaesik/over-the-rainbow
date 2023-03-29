//
//  MySceneVO.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/29.
//

import Foundation

// struct to have scene
struct MyScene {
    var imageName: String
    var subtitle: String
    var type:SceneType
    
    enum SceneType:String{
        case image = "only Image"
        case gif = "only Gif"
        case animation = "added Animation"
    }
}
