//
//  File.swift
//  GitSpace
//
//  Created by Cuma on 07/05/2024.
//

import Foundation

protocol SearchVMProtocol {
    func viewDidLoad()
}

final class SearchViewModel {
    
    var view: SearchScreenDelegate?
    
}

extension SearchViewModel: SearchVMProtocol {
    
    func viewDidLoad() {
        view?.configureVC()
    }
    
}
