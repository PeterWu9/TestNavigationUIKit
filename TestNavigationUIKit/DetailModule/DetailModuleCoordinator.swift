//
//  DetailModuleCoordinator.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/12/24.
//

import SwiftUI
import UIKit

final class DetailModuleCoordinator {
    private weak var navigationController: UINavigationController?
    let id: Int
    
    init(navigationController: UINavigationController?, id: Int) {
        self.navigationController = navigationController
        self.id = id
    }
    
    func makeUIViewController() -> UIViewController {
        let detailViewViewModel = DetailViewModel(
            onShowDetailViewButtonTapped: self.presentDetailView,
            onLinkDetailViewButtonTapped: self.showDetailView
        )
        let detailView = DetailView(id: self.id, viewModel: detailViewViewModel)
        let hostingController = UIHostingController(rootView: detailView)
        return hostingController
    }
    
    private func presentDetailView() {
        let newNavigationController = AppNavigationControllerProvider.create()
        let detailViewCoordinator = DetailModuleCoordinator(
            navigationController: newNavigationController,
            id: self.id + 1
        )
        let detailView = detailViewCoordinator.makeUIViewController()
        newNavigationController.setViewControllers([detailView], animated: false)
        navigationController?.present(newNavigationController, animated: true)
    }
    
    private func showDetailView() {
        let detailViewCoordinator = DetailModuleCoordinator(
            navigationController: self.navigationController,
            id: self.id + 1
        )
        let detailView = detailViewCoordinator.makeUIViewController()
        navigationController?.pushViewController(detailView, animated: true)
    }
}
