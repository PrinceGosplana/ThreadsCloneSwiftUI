//
//  EditProfileViewModel.swift
//  ThreadsCloneSwiftUI
//
//  Created by Oleksandr Isaiev on 20.05.2024.
//

import PhotosUI
import SwiftUI

class EditProfileViewModel: ObservableObject {

    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { await loadImage() } }
    }
    @Published var profileImage: Image?

    func uploadUserData() async throws {

    }
    
    private func loadImage() async {
        guard let item = selectedItem else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }

        await MainActor.run {
            profileImage = Image(uiImage: uiImage)
        }
    }
}
