//
//  UIViewControllerExtension.swift
//  DeckOfOneCard32
//
//  Created by Ben Brandau Brandau on 3/10/20.
//  Copyright © 2020 Ben Brandau. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController{
        func presentErrorToUser(localizedError: LocalizedError) {
            let alertController = UIAlertController(title: "ERROR", message: localizedError.errorDescription, preferredStyle: .actionSheet)
            let dismissAction = UIAlertAction(title: "Ok", style: .cancel)
            alertController.addAction(dismissAction)
            present(alertController, animated: true)
        }
}
