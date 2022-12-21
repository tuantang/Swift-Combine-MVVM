//
//  ApplicationComponentsFactory.swift
//  Swift-Combine-MVVM-iOS
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit

class ApplicationComponentsFactory {
    
}

extension ApplicationComponentsFactory: ApplicationFlowCoordinatorDependencyProvider {
    func mainNavigationController() -> UINavigationController {
        let mainTabbarController = MainViewController()
        let navigationViewController = UINavigationController(rootViewController: mainTabbarController)
        return navigationViewController
    }
}

