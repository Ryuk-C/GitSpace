//
//  UIView+Ext.swift
//  GitSpace
//
//  Created by Cuma on 07/05/2024.
//

import UIKit

extension UIView {
    func setupToDismissKeyboardOnTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.addGestureRecognizer(tapGesture)
    }

    @objc private func dismissKeyboard() {
        self.endEditing(true)
    }
}

extension UIView {
    
    enum RelativePosition {
        case topLeft
        case topRight
        case bottomLeft
        case bottomRight
    }
    
    func positionRelativeTo(view: UIView, relativePosition: RelativePosition, horizontalPaddingLeft: CGFloat = 0, horizontalPaddingRight: CGFloat = 0, verticalPadding: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        
        switch relativePosition {
        case .topLeft:
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: view.topAnchor, constant: verticalPadding),
                leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPaddingLeft)
            ])
        case .topRight:
            NSLayoutConstraint.activate([
                topAnchor.constraint(equalTo: view.topAnchor, constant: verticalPadding),
                trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPaddingRight)
            ])
        case .bottomLeft:
            NSLayoutConstraint.activate([
                bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -verticalPadding),
                leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: horizontalPaddingLeft)
            ])
        case .bottomRight:
            NSLayoutConstraint.activate([
                bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -verticalPadding),
                trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -horizontalPaddingRight)
            ])
        }
    }
}
