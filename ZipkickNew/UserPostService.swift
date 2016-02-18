//
//  UserPostService.swift
//  ZipkickNew
//
//  Created by Duong Viet Cuong on 2/19/16.
//  Copyright © 2016 Lexnology. All rights reserved.
//

import Foundation

class UserPostSerivce{
    
    
    
    static func getStats(userid :Int) -> NSDictionary{
        let usetStats = ["followers":"1.2K","posts":"320","photos":"512"]
        // This Dictionaries load from server or cache
        return usetStats
    }
    
    static func getBlogPosts(userid :Int, total:Int)->NSMutableArray{
        var data = NSMutableArray()
        for _ in 0...total{
            data.addObject([
                "imgavatar":"sample_postowner.png",
                "imgpost":"sample_restaurant.png",
                "title":"5 Star Restaurant Serving Corn Dogs?"
            ])
        }
        return data
    }
    
}