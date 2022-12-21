//
//  PageMenuView.swift
//  Components
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit

public class PageMenuView: UIView {
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        adjustUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

fileprivate extension PageMenuView {
    private func adjustUI() {
        /// add collection view to menu view
        addSubview(collectionView)
        /// autolayout for collection view
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(snp.top)
            make.bottom.equalTo(snp.bottom)
            make.leading.equalTo(snp.leading)
            make.trailing.equalTo(snp.trailing)
        }
        /// set delegate for collection view
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension PageMenuView: UICollectionViewDelegate, UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
}
