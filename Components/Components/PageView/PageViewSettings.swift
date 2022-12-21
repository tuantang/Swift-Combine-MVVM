//
//  PageViewSettings.swift
//  Components
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit

public struct PageViewSettings {
    public struct Font {
        public lazy var selectedFont: UIFont = .boldSystemFont(ofSize: 14)
        public lazy var unselectedFont: UIFont = .systemFont(ofSize: 14)
    }
    
    public struct Color {
        public lazy var selectedFont: UIColor = .black
        public lazy var unselectedFont: UIColor = .gray
    }
    
    public lazy var showMenu: Bool = true
}

public struct PageViewItem {
    let title: String
    let viewController: UIViewController
}
