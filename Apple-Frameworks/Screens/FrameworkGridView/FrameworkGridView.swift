//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Mahbubur Rashid Leon on 2024-06-02.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel: FrameworkGridViewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { frameWork in
                    NavigationLink {
                        FrameworkDetailView(frameWork: frameWork, isShowingDetailView: $viewModel.isShowingDetailsView)
                    } label: {
                        FrameworkTitleView(frameWork: frameWork)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(.dark)
}
