//
//  PageView.swift
//  Components
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit
import SnapKit

public class PageView: UIView {
    
    private let pageMenuView: PageMenuView = {
        let view = PageMenuView()
        return view
    }()
    
    public var settings: PageViewSettings = PageViewSettings()
    public var items: [PageViewItem] = [] {
        didSet {
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        adjustUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

fileprivate extension PageView {
    private func adjustUI() {
        /// set backgroundColor for Main View
        backgroundColor = .white
        /// Add page menu view to Main View
        addSubview(pageMenuView)
        /// Auto layout with SnapKit
        pageMenuView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.height.equalTo(50)
        }
    }
}
