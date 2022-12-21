//
//  MainFlowCoordinator.swift
//  Swift-Combine-MVVM-iOS
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit

class MainFlowCoordinator: FlowCoordinator {
    
    fileprivate let window: UIWindow
    fileprivate let dependencyProvider: MainFlowCoordinatorDependencyProvider
    fileprivate var navigationController: UINavigationController?
    
    init(window: UIWindow, dependencyProvider: MainFlowCoordinatorDependencyProvider) {
        self.window = window
        self.dependencyProvider = dependencyProvider
    }
     
    func start() {
        let mainNavigationController = dependencyProvider.mainNavigationController()
        window.rootViewController = mainNavigationController
        self.navigationController = mainNavigationController
    }
}
