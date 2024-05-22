//
//  UserContentList.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 19.05.2024.
//

import SwiftUI

struct UserContentList: View {
    @StateObject var viewModel: UserContentListViewModel
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: UserContentListViewModel(user: user))
    }

    var body: some View {
        VStack {
            HStack {
                ForEach(ProfileThreadFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)

                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: filterBarWidth, height: 1)
                        }
                    }
                    .onTapGesture {
                        withAnimation {
                            selectedFilter = filter
                        }
                    }
                }
            }

            VStack {
                ForEach(ThreadModel.mockThreads) { thread in
                    ThreadCell(thread: thread)
                }
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    UserContentList(user: User.mockUsers[0])
}
