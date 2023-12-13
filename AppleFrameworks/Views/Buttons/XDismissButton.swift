//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by lexi sanders on 12/13/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Button {
                isShowingDetail = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }

        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetail: .constant(false))
}
