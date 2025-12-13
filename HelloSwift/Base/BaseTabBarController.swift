//
//  BaseTabBarController.swift
//  HelloSwift
//
//  Created by lixiaoyi on 2025/12/13.
//

import UIKit

// MARK: - BaseTabBarController
final class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupAppearance()
    }

    // MARK: - Setup
    private func setupViewControllers() {
        let nativeVC = HomeViewController()
        let flutterVC = FlutterViewController()
        let webVC = WebViewController()
        let otherVC = OtherViewController()

        let nativeNav = wrapInNavigation(vc: nativeVC,
                                          title: "Home",
                                          image: "house",
                                          selectedImage: "house.fill")

        let flutterNav = wrapInNavigation(vc: flutterVC,
                                           title: "Flutter",
                                           image: "square.stack.3d.up",
                                           selectedImage: "square.stack.3d.up.fill")

        let webNav = wrapInNavigation(vc: webVC,
                                      title: "Web",
                                      image: "globe",
                                      selectedImage: "globe")

        let otherNav = wrapInNavigation(vc: otherVC,
                                        title: "Other",
                                        image: "ellipsis",
                                        selectedImage: "ellipsis.circle.fill")

        viewControllers = [nativeNav, flutterNav, webNav, otherNav]
    }

    private func wrapInNavigation(vc: UIViewController,
                                  title: String,
                                  image: String,
                                  selectedImage: String) -> UINavigationController {
        vc.title = title
        let nav = BaseNavigationController(rootViewController: vc)
        nav.tabBarItem = UITabBarItem(
            title: title,
            image: UIImage(systemName: image),
            selectedImage: UIImage(systemName: selectedImage)
        )
        return nav
    }

    private func setupAppearance() {
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemBackground
            tabBar.standardAppearance = appearance
            tabBar.scrollEdgeAppearance = appearance
        }
    }
}











