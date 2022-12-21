//
//  MainTabbarController.swift
//  Swift-Combine-MVVM-iOS
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit
import SnapKit
import Components

class MainViewController: UIViewController {
    
    private let pageView: PageView = {
        let view = PageView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjustUI()
    }
}

fileprivate extension MainViewController {
    private func adjustUI() {
        /// set backgroundColor for Main View
        view.backgroundColor = .white
        /// Add page menu view to Main View
        view.addSubview(pageView)
        /// Auto layout with SnapKit
        pageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
        }
    }
}
