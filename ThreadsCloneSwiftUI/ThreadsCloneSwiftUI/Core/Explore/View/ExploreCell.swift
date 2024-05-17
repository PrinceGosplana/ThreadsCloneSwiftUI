//
//  ExploreCell.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 17.05.2024.
//

import SwiftUI

struct ExploreCell: View {
    var body: some View {
        HStack {
            CircularProfileImage()
            
            VStack(alignment: .leading) {
                Text("lewishamilton")
                    .fontWeight(.semibold)
                
                Text("Lewis Hamilton")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ExploreCell()
}
