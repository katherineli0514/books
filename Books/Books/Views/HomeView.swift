//
//  HomeView.swift
//  Books
//
//  Created by Katherine Li on 9/15/20.
//  Copyright © 2020 Katherine Li. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    enum Constants {
        static let title = "Book List"
    }
    
    let viewModel = HomeViewModel()
    @State var books: [Book] = HomeViewModel().getBooks()
    
    var body: some View {
        NavigationView {
            List(books) { book in
                BookCell(book: book)
            }.navigationBarTitle(Text(Constants.title).fontWeight(.bold))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
