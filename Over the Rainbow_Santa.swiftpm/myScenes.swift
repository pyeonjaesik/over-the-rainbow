//
//  scenes.swift
//  Over the Rainbow
//
//  Created by jaesik pyeon on 2023/03/29.
//

import Foundation

// aarray of struct
var myScenes: [MyScene] = [
    MyScene(imageName: "#1_1", subtitle: [("#1_1_s", nil)],bgm: "#1_1_b.mp3",type: MyScene.SceneType.image),
    MyScene(imageName: "#1_2", subtitle: [("#1_2_s1", nil), ("#1_2_s2", nil)],bgm: "#1_2_b.mp3",type: MyScene.SceneType.image),
    MyScene(imageName: "#1_3", subtitle: [("#1_3_s1", nil), ("#1_3_s2", nil)],bgm: "#1_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#1_4", subtitle: [("#1_4_s1", nil), ("#1_4_s2", nil)],bgm: "#1_4_b.wav",type: MyScene.SceneType.image),
    MyScene(imageName: "#2_1_1", subtitle: [("#2_1_1_s", nil)],bgm: "#2_1_1_b.wav",type: MyScene.SceneType.image),
    MyScene(imageName: "#2_1_2", subtitle: [(nil, nil)],bgm: "#2_1_2_b.mp3",type: MyScene.SceneType.image),
    MyScene(imageName: "#2_2", subtitle: [(nil, nil)],bgm: "#2_2_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_3_1", subtitle: [("#2_3_1_s1", nil), ("#2_3_1_s2", nil)],bgm: "#2_3_1_b.mp3",type: MyScene.SceneType.image),
    MyScene(imageName: "#2_3_2", subtitle: [(nil, nil)],bgm: "#2_3_2_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_4", subtitle: [("#2_4_s", nil)],bgm: "#2_4_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_5_1", subtitle: [("#2_5_1_s", nil)],bgm: "#2_5_1_b.wav",type: MyScene.SceneType.image),
    MyScene(imageName: "#2_5_2", subtitle: [("#2_5_2_s", nil)],bgm: "#2_5_2_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_1", subtitle: [("#2_6_1_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_2", subtitle: [("#2_6_2_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#2_6_3", subtitle: [("#2_6_3_s1", nil), ("#2_6_3_s2", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_1", subtitle: [("#3_1_s1", nil),("#3_1_s2", nil)],bgm: "#3_1_b.wav",type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_2", subtitle: [("#3_2_s1", nil), ("#3_2_s2", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_3", subtitle: [("#3_3_s1", nil), ("#3_3_s2", nil)],bgm: "#3_3_b.wav",type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_4", subtitle: [("#3_4_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#3_5", subtitle: [("#3_5_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_1", subtitle: [("#4_1_s", nil)],bgm: nil,type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_2", subtitle: [("#4_2_s", nil)],bgm: "#4_2_b.wav",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_3", subtitle: [("#4_3_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_4", subtitle: [("#4_4_s1", nil), ("#4_4_s2", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_5", subtitle: [("#4_5_s1", nil), ("#4_5_s2", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_1", subtitle: [("#4_6_1_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_2", subtitle: [("#4_6_2_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_6_3", subtitle: [("#4_6_3_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_7_1", subtitle: [("#4_7_1_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.image),
    MyScene(imageName: "#4_7_2", subtitle: [("#4_7_2_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#4_8", subtitle: [("#4_8_s", nil)],bgm: "#4_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_1", subtitle: [("#5_1_s", nil)],bgm: "#5_1_b.m4a",type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_2", subtitle: [("#5_2_s", nil)],bgm: "#5_2_b.wav",type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_3", subtitle: [("#5_3_s", nil)],bgm: "#5_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "#5_4", subtitle: [("#5_4_s", nil)],bgm: "#5_3_b.mp3",type: MyScene.SceneType.gif),
    MyScene(imageName: "theEnd", subtitle: [],bgm: nil,type: MyScene.SceneType.animation),
]
