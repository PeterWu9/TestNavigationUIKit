//
//  MainView.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/11/24.
//

import SwiftUI

struct MainView: View {
    let viewModel: MainViewModuleViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Main View Module")
            
            Button(
                action: {
                    viewModel.showDetailViewButtonTapped()
                },
                label: {
                    Text("Show Detail View")
                }
            )
        }
    }
}
