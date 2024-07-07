//
//  BlogsView.swift
//  PennyPerfect
//
//  Created by Sona kerketta on 07/07/24.
//

import SwiftUI

import SwiftUI

struct BlogsView: View {
    // Sample data for blogs
    let blogs: [Blog] = [
        Blog(title: "Personal Finance 101", author: "John Doe", link: "https://example.com/personal-finance-101"),
        Blog(title: "How to Save Money", author: "Jane Smith", link: "https://example.com/how-to-save-money"),
        Blog(title: "Investing for Beginners", author: "Alice Johnson", link: "https://example.com/investing-for-beginners")
    ]
    
    var body: some View {
        NavigationView {
            List(blogs) { blog in
                VStack(alignment: .leading) {
                    Text(blog.title)
                        .font(.headline)
                    Text("by \(blog.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Link(destination: URL(string: blog.link)!) {
                        Text("Read more")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.vertical, 10)
            }
            .navigationTitle("Financial Blogs")
        }
    }
}

// Preview provider for SwiftUI previews
struct BlogsView_Previews: PreviewProvider {
    static var previews: some View {
        BlogsView()
    }
}


