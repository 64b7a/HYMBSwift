//
//  MineViewController.swift
//  HYMBSwift
//
//  Created by 863Soft on 2019/5/22.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class MineViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var collectionView:UICollectionView?
    static let cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
    }
    
    func setUI() {

        //创建集合视图布局类
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize.init(width: 150, height: 100)
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10
        flowLayout.headerReferenceSize = CGSize.init(width: self.view.bounds.size.width, height: 0)
        flowLayout.footerReferenceSize = CGSize.init(width: self.view.bounds.size.width, height: 10)

        collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height), collectionViewLayout: flowLayout)
        collectionView!.backgroundColor = UIColor.white
        collectionView!.delegate = self
        collectionView!.dataSource = self
        collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: MineViewController.cellId)
        collectionView!.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId")
        collectionView!.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "footerId")
        self.view.addSubview(collectionView!)


    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        // 定义一个cell
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: MineViewController.cellId, for: indexPath)
        
        cell.backgroundColor = UIColor.gray

        return cell
    }


    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionHeader) {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId", for: indexPath)

            return view

        }else{

            let view = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "footerId", for: indexPath)

            return view

        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
    
    
}

