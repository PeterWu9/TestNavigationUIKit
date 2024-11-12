//
//  DetailViewModel.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/12/24.
//

import Foundation

final class DetailViewModel {
    let onShowDetailViewButtonTapped: () -> Void
    let onLinkDetailViewButtonTapped: () -> Void
    
    init(onShowDetailViewButtonTapped: @escaping () -> Void, onLinkDetailViewButtonTapped: @escaping () -> Void) {
        self.onShowDetailViewButtonTapped = onShowDetailViewButtonTapped
        self.onLinkDetailViewButtonTapped = onLinkDetailViewButtonTapped
    }
    
    func showDetailViewButtonTapped() {
        onShowDetailViewButtonTapped()
    }
    
    func linkDetailViewButtonTapped() {
        onLinkDetailViewButtonTapped()
    }
}
