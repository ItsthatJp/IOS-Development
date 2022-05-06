//
//  SearchHistoryListView.swift
//  Tabares_NewsApp
//
//  Created by Jp Tabares on 5/5/22.
//
import SwiftUI
struct SearchHistoryListView: View {
    @ObservedObject var searchVM: ArticleSearchViewModel
    let onSubmit: (String) -> ()
    var body: some View {
        List {
            HStack {
                Text("Recently Searched")
                Spacer()
                Button("Clear") {
                    searchVM.removeAllHistory()
                }
                .foregroundColor(.accentColor)
            }
            .listRowSeparator(.hidden)
            ForEach(searchVM.history, id: \.self) { history in
                Button(history) {
                    onSubmit(history)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        searchVM.removeHistory(history)
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
        }
        .listStyle(.plain)
    }
}
struct SearchHistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistoryListView(searchVM: ArticleSearchViewModel.shared) { _ in    }
    }
}
