//
//  Ext+UINavigationController.swift
//  RickAndMorty
//
//  Created by Mehmet Baturay Yasar on 27/02/2023.
//

import Foundation
import UIKit

extension UINavigationController {
    // Questionable naming ???
    public func setupTabbarItem(nav: UINavigationController?, title: String?, image: UIImage?, tag: Int?) {
        _ = nav?.tabBarItem = UITabBarItem(title: title, image: image, tag: tag ?? 0)
    }
}
