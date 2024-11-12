//
//  MainModuleCoordinator.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/11/24.
//

import UIKit
import SwiftUI

// Attrib: https://www.youtube.com/watch?v=-Oc5TTEmb-M

final class MainModuleCoordinator {
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func makeUIViewController() -> UIViewController {
        let mainViewModel = MainViewModuleViewModel(
            onDetailViewButtonTapped: self.presentDetailView // capture coordinator
        )
        let mainView = MainView(viewModel: mainViewModel)
        let hostingController = UIHostingController(rootView: mainView)
        return hostingController
    }
    
    private func presentDetailView() {
        let newNavigationControler = AppNavigationControllerProvider.create()
        let detailViewCoordinator = DetailViewCoordinator(
            navigationController: newNavigationControler,
            id: 0
        )
        let detailView = detailViewCoordinator.makeUIViewController()
        newNavigationControler.setViewControllers([detailView], animated: false)
        self.navigationController?
            .present(newNavigationControler, animated: true)
    }
}
