//
//  DetailView.swift
//  TestNavigationUIKit
//
//  Created by Peter Wu on 11/12/24.
//

import SwiftUI

struct DetailView: View {
    let id: Int
    let viewModel: DetailViewModel
    @State private var isLoading = false
    
    var body: some View {
        VStack(spacing: 32) {
            if isLoading {
                ProgressView()
            } else {
                Text("Detail View \(id)")
                
                Button(
                    action: {
                        viewModel.showDetailViewButtonTapped()
                    },
                    label: {
                        Text("Show Detail View \(id + 1)")
                    }
                )
                
                Button {
                    viewModel.linkDetailViewButtonTapped()
                } label: {
                    Text("Link to Detail View \(id + 1)")
                }
            }
        }
        .task {
            isLoading = true
            defer { isLoading = false }
            
            try? await Task.sleep(for: .seconds(1))
        }
    }
}
