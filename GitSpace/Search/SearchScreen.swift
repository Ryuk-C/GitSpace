//
//  ViewController.swift
//  GitSpace
//
//  Created by Cuma on 04/05/2024.
//

import UIKit

protocol SearchScreenDelegate: AnyObject {
    func configureVC()
}

final class SearchScreen: UIViewController {

    let logoImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(resource: .ghLogo)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let userNameTextField = GSTextField()
    let callToActionButton = GSButton(backgroundColor: .systemBlue, title: "Get Followers")

    let viewModel = SearchViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel.view = self
        viewModel.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

}

extension SearchScreen: SearchScreenDelegate {

    func configureVC() {
        view.backgroundColor = .systemBackground
        self.view.setupToDismissKeyboardOnTap()

        view.addSubview(logoImageView)
        view.addSubview(userNameTextField)
        view.addSubview(callToActionButton)

        NSLayoutConstraint.activate([

            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])

        NSLayoutConstraint.activate([

            userNameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30),
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            userNameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([

            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50),
            callToActionButton.widthAnchor.constraint(equalToConstant: UIScreen.screenWidth - 75)

        ])

    }
}

#if DEBUG
    import SwiftUI

    @available(iOS 17, *)
    #Preview {
        SearchScreen()
    }
#endif
