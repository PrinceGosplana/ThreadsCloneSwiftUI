//
//  ProfileView.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 16.05.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    @EnvironmentObject var authManager: AuthManager
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                // bio and stats
                VStack(spacing: 20) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 12) {
                            // fullname and username
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Charles Leslerc")
                                    .font(.title2)
                                    .fontWeight(.semibold)

                                Text("charles_leclerc")
                                    .font(.subheadline)
                            }

                            Text("Formula 1 driver for Scuderia Ferrari")
                                .font(.footnote)

                            Text("2 followers")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }

                        Spacer()

                        CircularProfileImage()
                    }

                    Button {

                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                    // user content list view
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

                        LazyVStack {
                            ForEach(0 ... 10, id:\.self) { thread in
                                ThreadCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        Task { await authManager.signout() }
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    ProfileView().environmentObject(AuthManager(service: MockAuthService()))
}
