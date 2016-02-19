//
//  UserProfileViewController.swift
//  ZipkickNew
//
//  Created by Duong Viet Cuong on 2/19/16.
//  Copyright © 2016 Lexnology. All rights reserved.
//

import UIKit


class UserProfileViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    private var screenWidth:CGFloat = 0;
    private let userid = 1;
    private var arrPosts:NSMutableArray = [];
    
    @IBOutlet var lblFollowers: UILabel!
    @IBOutlet var lblPosts: UILabel!
    @IBOutlet var lblPhotos: UILabel!
    @IBOutlet var clView: UICollectionView!
    @IBOutlet var mainScrv: UIScrollView!
    
    // MARK: - Services
    
    func getUserStats(){
        
        let statsData = UserPostSerivce.getStats(userid)
        
        lblFollowers.text = statsData["followers"] as? String
        lblPhotos.text = statsData["photos"] as? String
        lblPosts.text = statsData["posts"] as? String
        
        arrPosts = UserPostSerivce.getBlogPosts(userid,total: 3)
    }
    
    
    
    
    // MARK: - Init
    
    private let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        screenWidth = screenSize.width
        getUserStats() 
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
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return
        return arrPosts.count
        //return 300
    }
    
    
    // MARK: - UI Delegate
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("UserPostCell", forIndexPath: indexPath) as! UserPostCell
        /*
        cell.imgAvatar.image = UIImage(named: "sample_postowner.png")
        cell.imgPost.image = UIImage(named: "sample_restaurant.png")
        cell.lblTitle.text = "5 Star Restaurant Serving Corn Dogs?"
        */
        cell.imgAvatar.image = UIImage(named: arrPosts.objectAtIndex(indexPath.row).valueForKey("imgavatar") as! String)
        cell.imgPost.image = UIImage(named: arrPosts.objectAtIndex(indexPath.row).valueForKey("imgpost") as! String)
        cell.lblTitle.text = arrPosts.objectAtIndex(indexPath.row).valueForKey("title") as? String
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            /*
            let itemPhoto =  photoForIndexPath(indexPath)
            if var size = flickrPhoto.thumbnail?.size {
                size.width += 10
                size.height += 10
                return size
            }*/
            return CGSize(width: screenWidth/2 - 15, height: 178)
    }
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }

    
 }
 