//
//  SafariView.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//
import SwiftUI
import SafariServices
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    func makeUIViewController(context: Context) -> some SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context){}
}
