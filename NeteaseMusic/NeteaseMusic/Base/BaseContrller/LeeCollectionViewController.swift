//
//  LeeCollectionViewController.swift
//  NeteaseMusic
//
//  Created by quansheng li on 2019/7/17.
//  Copyright © 2019 quansheng. All rights reserved.
//

import UIKit

class LeeCollectionViewController: LeeBaseViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func initCollectionView() {
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
        collectionViewCell.backgroundColor = UIColor.orange
        return collectionViewCell
    }
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: self.flowLayout);
        self.view .addSubview(collectionView);
        collectionView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(0)
        }
        collectionView.alwaysBounceVertical = true
        collectionView.delegate = self;
        collectionView.dataSource = self;
        collectionView.backgroundColor = kWhiteColor
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier:"UICollectionViewCell")
        return collectionView
    }()
    lazy var flowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout.init()
        flowLayout.itemSize = CGSize(width: kScreenW, height: 100)
        return flowLayout
    }()
    
}
