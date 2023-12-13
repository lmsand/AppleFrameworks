//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by lexi sanders on 12/13/23.
//

import SwiftUI

// holding state, so make a class

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}
