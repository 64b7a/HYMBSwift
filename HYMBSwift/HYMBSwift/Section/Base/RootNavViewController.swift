//
//  RootNavViewController.swift
//  HYMBSwift
//
//  Created by 863Soft on 2019/5/22.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class RootNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.barStyle = UIBarStyle.default
        let atrr = NSMutableDictionary.init()
        atrr[NSAttributedString.Key.foregroundColor] = UIColor.black
        atrr[NSAttributedString.Key.font] = UIFont.systemFont(ofSize: 20);
        self.navigationBar.titleTextAttributes = atrr as? [NSAttributedString.Key : Any]
        self.navigationBar.barTintColor = UIColor.white
        self.navigationBar.isTranslucent = true//半透明效果

    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count > 0 {
            // 隐藏tabbar
            viewController.hidesBottomBarWhenPushed = true
        }
       
        
        super.pushViewController(viewController, animated: animated)
        
    }


}
