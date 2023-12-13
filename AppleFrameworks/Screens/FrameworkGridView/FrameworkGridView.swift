//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by lexi sanders on 12/12/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.comlumns) {
                    ForEach (MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks App")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

