//
//  TabbarController.swift
//  GitSpace
//
//  Created by Cuma on 05/05/2024.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setControllers()

    }

    private func setControllers() {

        setViewControllers([
            createNavController(viewController: SearchScreen(),
                title: "Search",
                imageName: "magnifyingglass",
                selectedImageName: "magnifyingglass"),

            createNavController(viewController: FavoritesScreen(),
                title: "Favorites",
                imageName: "star.fill",
                selectedImageName: "star.fill")],
            animated: true)
    }

}
