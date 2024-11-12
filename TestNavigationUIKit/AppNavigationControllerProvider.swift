//
//  AppNavigationControllerProvider.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/11/24.
//

import UIKit

enum AppNavigationControllerProvider {
    static func create() -> UINavigationController {
        let navigationController = UINavigationController()
        return navigationController
    }
}
