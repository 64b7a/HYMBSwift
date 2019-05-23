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
        firstPageVC.title = "首页"
        let mineVC = MineViewController()
        mineVC.title = "我的"
        
        let firstPageNav = RootNavViewController.init(rootViewController: firstPageVC)
        let mineNav = RootNavViewController.init(rootViewController: mineVC)
    
        self.addChild(firstPageNav)
        self.addChild(mineNav)
    }


}
