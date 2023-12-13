//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by lexi sanders on 12/13/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6) // 60%
        }
        .padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
