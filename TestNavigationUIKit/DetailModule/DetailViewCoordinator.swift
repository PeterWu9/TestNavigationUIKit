//
//  DetailViewCoordinator.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/12/24.
//

import SwiftUI
import UIKit

final class DetailViewCoordinator {
    private weak var navigationController: UINavigationController?
    let id: Int
    
    init(navigationController: UINavigationController?, id: Int) {
        self.navigationController = navigationController
        self.id = id
    }
    
    func makeUIViewController() -> UIViewController {
        let detailViewViewModel = DetailViewModel(
            onShowDetailViewButtonTapped: self.presentDetailView
        )
        let detailView = DetailView(id: self.id, viewModel: detailViewViewModel)
        let hostingController = UIHostingController(rootView: detailView)
        return hostingController
    }
    
    private func presentDetailView() {
        let newNavigationController = AppNavigationControllerProvider.create()
        let detailViewCoordinator = DetailViewCoordinator(
            navigationController: newNavigationController,
            id: self.id + 1
        )
        let detailView = detailViewCoordinator.makeUIViewController()
        newNavigationController.setViewControllers([detailView], animated: false)
        navigationController?.present(newNavigationController, animated: true)
    }
}
