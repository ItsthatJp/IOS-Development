//
//  ContentView.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        TabView {
            NewsTabView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            SearchTabView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }}}}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
