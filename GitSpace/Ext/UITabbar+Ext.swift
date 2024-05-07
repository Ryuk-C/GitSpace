//
//  UITabbar+Ext.swift
//  GitSpace
//
//  Created by Cuma on 05/05/2024.
//

import UIKit

extension UITabBarController {
    
    func createNavController(viewController: UIViewController, title: String, imageName: String, selectedImageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        navController.tabBarItem.selectedImage = UIImage(systemName: selectedImageName)
        navController.navigationBar.prefersLargeTitles = false
        viewController.navigationItem.title = title
        return navController
    }

}
