//
//  Ext+UIViewController.swift
//  RickAndMorty
//
//  Created by Mehmet Baturay Yasar on 27/02/2023.
//

import Foundation
import UIKit

extension UIViewController {
    public func largeTitleDisplayMode(viewController: UIViewController) {
        _ = viewController.navigationItem.largeTitleDisplayMode = .automatic
    }
}
