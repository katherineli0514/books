//
//  WebViewModel.swift
//  Books
//
//  Created by Katherine Li on 9/15/20.
//  Copyright © 2020 Katherine Li. All rights reserved.
//

import Foundation
import Combine

class WebViewModel: ObservableObject {
    var webViewNavigationPublisher = PassthroughSubject<WebViewNavigation, Never>()
    var showloader = PassthroughSubject<Bool, Never>()
    var valuePublisher = PassthroughSubject<String, Never>()
}

enum WebViewNavigation {
    case backward, forward
}

enum WebUrl {
    case localUrl, publicUrl
}
