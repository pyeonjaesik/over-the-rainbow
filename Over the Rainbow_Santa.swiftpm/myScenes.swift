//
//  scenes.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/29.
//

import Foundation

// aarray of struct
var myScenes: [MyScene] = [
    MyScene(imageName: "#1_1", subtitle: [("#1_1_s", nil)],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#1_2", subtitle: [("#1_2_s1", nil), ("#1_2_s2", "#1_2_a1")],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#1_3", subtitle: [("#1_3_s1", "#1_3_a1"), ("#1_3_s2", "#1_3_a2")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#1_4", subtitle: [("#1_4_s1", nil), ("#1_4_s2", "#1_4_a1")],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#2_1_1", subtitle: [("#2_1_1_s", "#2_1_1_a1")],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#2_1_2", subtitle: [(nil, nil)],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#2_2", subtitle: [(nil, "#2_2_a")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_3_1", subtitle: [("#2_3_1_s1", "#2_3_1_a1"), ("#2_3_1_s2", "#2_3_1_a2")],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#2_3_2", subtitle: [(nil, nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_4", subtitle: [("#2_4_s", "#2_4_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_5_1", subtitle: [("#2_5_1_s", "#2_5_1_a1")],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#2_5_2", subtitle: [("#2_5_2_s", "#2_5_2_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_1", subtitle: [("#2_6_1_s", "#2_6_1_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_2", subtitle: [("#2_6_2_s", "#2_6_2_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_3", subtitle: [("#2_6_3_s1", "#2_6_3_a1"), ("#2_6_3_s2", "#2_6_3_a2")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_1", subtitle: [("#3_1_s1", nil),("#3_1_s2", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_2", subtitle: [("#3_2_s1", nil), ("#3_2_s2", "#3_2_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_3", subtitle: [("#3_3_s1", "#3_3_a1"), ("#3_3_s2", "#3_3_a2")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_4", subtitle: [("#3_4_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_5", subtitle: [("#3_5_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_1", subtitle: [("#4_1_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_2", subtitle: [("#4_2_s", "#4_2_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_3", subtitle: [("#4_3_s", "#4_3_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_4", subtitle: [("#4_4_s1", "#4_4_a1"), ("#4_4_s2", "#4_4_a2")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_5", subtitle: [("#4_5_s1", "#4_5_a1"), ("#4_5_s2", "#4_5_a2")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_1", subtitle: [("#4_6_1_s", "#4_6_1_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_2", subtitle: [("#4_6_2_s", "#4_6_2_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_3", subtitle: [("#4_6_3_s", "#4_6_3_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_7_1", subtitle: [("#4_7_1_s", nil)],bgm: nil,type: MyScene.SceneType.image),
    MyScene(imageName: "#4_7_2", subtitle: [("#4_7_2_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_8", subtitle: [("#4_8_s", "#4_8_a1")],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_1", subtitle: [("#5_1_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_2", subtitle: [("#5_2_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_3", subtitle: [("#5_3_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_4", subtitle: [("#5_4_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "theEnd", subtitle: [],bgm: nil,type: MyScene.SceneType.animation),
]
