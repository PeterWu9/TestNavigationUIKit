//
//  DetailViewModel.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/12/24.
//

import Foundation

final class DetailViewModel {
    let onShowDetailViewButtonTapped: () -> Void
    
    init(onShowDetailViewButtonTapped: @escaping () -> Void) {
        self.onShowDetailViewButtonTapped = onShowDetailViewButtonTapped
    }
    
    func showDetailViewButtonTapped() {
        onShowDetailViewButtonTapped()
    }
}
