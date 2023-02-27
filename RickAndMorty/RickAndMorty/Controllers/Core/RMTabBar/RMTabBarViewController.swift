//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Mehmet Baturay Yasar on 27/02/2023.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbarView()
    }

    private func setupTabbarView() {

        let navigationController = UINavigationController()

        // objects of each viewControllers
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()

        largeTitleDisplayMode(viewController: charactersVC)
        largeTitleDisplayMode(viewController: locationsVC)
        largeTitleDisplayMode(viewController: episodesVC)
        largeTitleDisplayMode(viewController: settingsVC)

        // navigations of each tabbar
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)

        // Simply adding a title as String, a tag as Int and an image

        navigationController.setupTabbarItem(nav: nav1,
                        title: "Characters",
                        image: UIImage(systemName: "person"), tag: 1)
        navigationController.setupTabbarItem(nav: nav2,
                        title: "Locations",
                        image: UIImage(systemName: "globe"), tag: 2)
        navigationController.setupTabbarItem(nav: nav3,
                        title: "Episodes",
                        image: UIImage(systemName: "tv"), tag: 3)
        navigationController.setupTabbarItem(nav: nav4,
                        title: "Settings",
                        image: UIImage(systemName: "gear"), tag: 4)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }

        // navigation actions
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}
