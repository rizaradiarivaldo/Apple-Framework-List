//
//  FrameworkGridView.swift
//  Apple-Framework
//
//  Created by Riza Radia Rivaldo on 07/12/23.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkListViewModel()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework")
        }
    }
}

#Preview {
    FrameworkListView()
}
