//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [  //"G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong"
           Restaurant(name: "四八高地", type: "海邊", location: "970花蓮縣花蓮市海岸路華東路", phone: "09-88087517", summary: "風太強，不推薦拍學士服。電話為在地嚮導：朱先生", image: "四八高地.jpg", isVisited: false),
           Restaurant(name: "七星潭", type: "海邊", location: "七星潭", phone: "0987654321", summary: "適合散步，看日出，看海，拍學士服照的好景點，還有淨灘。", image: "七星潭.jpg", isVisited: false),
           Restaurant(name: "曼波海灘", type: "海邊", location: "曼波海灘", phone: "354-243523", summary: "疊石聖地，距離市區遙遠，相當少人前往，從太魯閣返程的好去處。", image: "曼波海灘.jpg", isVisited: false),
           Restaurant(name: "遠雄飯店", type: "夜景", location: "23.908127, 121.596788", phone: "453-333423", summary: "夜景好看，但是溜進花園可以看到更好的景致。", image: "遠雄飯店.jpg", isVisited: false),
           Restaurant(name: "花蓮石門洞", type: "海邊", location: "23°31'26.6N 121°30'14.4E", phone: "983-284334", summary: "拍照好去處，但是要小心海浪會潑到身上。", image: "花蓮石門洞.jpg", isVisited: false),
           Restaurant(name: "燕子口", type: "步道", location: "24.172898110913188, 121.56444904018448", phone: "232-434222", summary: "看不到燕子的燕子口，但是可以拍剪影。", image: "燕子口.jpg", isVisited: false),
           Restaurant(name: "白楊步道水濂洞", type: "步道", location: "24.178466, 121.474257", phone: "234-834322", summary: "先走一段長長的步道，沿路要記得收集雨衣，然後玩水，接著再把雨衣給沿路有緣人。", image: "白楊步道水濂洞.jpg", isVisited: false),
           Restaurant(name: "武嶺", type: "山頂", location: "24.1369956854606, 121.27585995551625", phone: "982-434343", summary: "騎車很冷，沿路會下雨要穿雨衣，到山頂要擔心機車會不會熄火，但我是沒有啦，因為我開車。（笑", image: "武嶺.jpg", isVisited: false),
           Restaurant(name: "翡翠谷秘境", type: "玩水", location: "23.97512208622748, 121.50023497217353", phone: "734-232323", summary: "繼續往上走有一個跳水點，但是這個密境需要有人帶領，沿路草很多。", image: "翡翠谷.jpg", isVisited: false),
           Restaurant(name: "雲山水", type: "看🐻的地方", location: "23.827074057936706, 121.51091960429216", phone: "872-734343", summary: "東華學生可以免費進去一個咖啡店，裡面的風景也不錯棒。", image: "雲山水.jpg", isVisited: false),
           Restaurant(name: "慕谷慕魚", type: "不能進去的地方", location: "23.976357, 121.471270", phone: "872-734343", summary: "原住民都在這裡玩水，一個需要機緣才進得去的地方", image: "慕谷慕魚.jpg", isVisited: false),
           

       ]
    }
       
}

