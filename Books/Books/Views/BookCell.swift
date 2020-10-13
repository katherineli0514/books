//
//  BookCell.swift
//  Books
//
//  Created by Katherine Li on 9/15/20.
//  Copyright © 2020 Katherine Li. All rights reserved.
//

import SwiftUI

struct BookCell: View {
    
    enum Constants {
        static let bookMark = "Book Mark"
    }
    
    let book: Book
    @State var chapter: String = ""
    
    var body: some View {
        return VStack(alignment: .leading) {
            HStack {
                Text(book.name).fontWeight(.bold)
                Text(book.author).foregroundColor(.gray).font(.system(size: 15))
                Text(book.version).foregroundColor(.pink).font(.system(size: 14))
            }
            Button(action: {
                self.openBookLink(link: self.book.link)
            }) {
                Text(book.link).foregroundColor(.blue).underline()
            }
            HStack {
                Text(Constants.bookMark + ":").foregroundColor(.orange).font(.system(size: 15))
                TextField("Enter Chapter Number", text: $chapter).foregroundColor(.orange).font(.system(size: 15))
            }
        }
    }
    
    func openBookLink(link: String) {
        if let url = URL(string: link) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
