//
//  RootTabBarViewController.swift
//  HYMBSwift
//
//  Created by 863Soft on 2019/5/22.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class RootTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setTabBar()
    }

    func setTabBar() {
        
        let firstPageVC = FirstPageViewController()
        let mineVC = MineViewController()
        
        firstPageVC.title = "首页"
        mineVC.title = "我的"
        
        let firstPageNav = RootNavViewController.init(rootViewController: firstPageVC)
        let mineNav = RootNavViewController.init(rootViewController: mineVC)
    
        
        self.addChild(firstPageNav)
        self.addChild(mineNav)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
