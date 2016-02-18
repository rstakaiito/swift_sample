//
//  HomeTabbarViewController.swift
//  ZipkickNew
//
//  Created by Duong Viet Cuong on 2/18/16.
//  Copyright © 2016 Lexnology. All rights reserved.
//

import UIKit

class HomeTabbarViewController: UITabBarController {
    
    // Define default color on tabbar
    let UIDefaultColor = UIColor.whiteColor()
    let UITouchColor = UIColor.whiteColor()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        // Sets the default color of the icon of the selected UITabBarItem and Title
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: self.UIDefaultColor], forState:.Normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: self.UITouchColor], forState:.Selected)
        
        for item in self.tabBar.items! as [UITabBarItem] {
            if let image = item.image {
                item.image = image.imageWithRenderingMode(.AlwaysOriginal)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
