//
//  FirstPageViewController.swift
//  HYMBSwift
//
//  Created by 863Soft on 2019/4/4.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView:UITableView?
    var dataArr:NSArray?
    static let cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArr = [
            [
                "title":"其它",
                "content":["hello world", "测试"],
                ],
        ]
        
        self.setUI()
    }
    
    func setUI() {
        
        // 添加tableView
        tableView = UITableView(frame: self.view.bounds, style: UITableView.Style.plain)
        tableView!.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        tableView!.register(UITableViewCell.self, forCellReuseIdentifier: FirstPageViewController.cellId)
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(tableView!)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArr!.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((dataArr![section] as AnyObject)["content"] as AnyObject).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 定义一个cell
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: FirstPageViewController.cellId, for: indexPath)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        cell.textLabel?.text = ((dataArr![indexPath.section] as AnyObject)["content"] as! NSArray)[indexPath.row] as? String
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        
        return view;
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        
        return view;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell:UITableViewCell = tableView.cellForRow(at: indexPath)!;
        
        if (cell.textLabel?.text == "hello world") {
            
        }
        
        if (cell.textLabel?.text == "测试") {
            let VC = TestViewController()
            self.navigationController?.pushViewController(VC, animated: true)
        }
        
    }
    
    
    
}

