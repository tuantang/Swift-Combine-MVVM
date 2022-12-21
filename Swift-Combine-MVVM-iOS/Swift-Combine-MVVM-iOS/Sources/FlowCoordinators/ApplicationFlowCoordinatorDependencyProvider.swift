//
//  ApplicationFlowCoordinatorDependencyProvider.swift
//  Swift-Combine-MVVM-iOS
//
//  Created by Tuan Tang on 21/12/2022.
//

import UIKit

protocol ApplicationFlowCoordinatorDependencyProvider: MainFlowCoordinatorDependencyProvider {}

protocol MainFlowCoordinatorDependencyProvider {
    func mainNavigationController() -> UINavigationController
}

