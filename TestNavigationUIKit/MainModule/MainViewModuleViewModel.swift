//
//  MainViewModuleViewModel.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/11/24.
//

import Foundation

final class MainViewModuleViewModel {
    let onDetailViewButtonTapped: () -> Void
    
    init(onDetailViewButtonTapped: @escaping () -> Void) {
        self.onDetailViewButtonTapped = onDetailViewButtonTapped
    }
    
    func showDetailViewButtonTapped() {
        onDetailViewButtonTapped()
    }
}
