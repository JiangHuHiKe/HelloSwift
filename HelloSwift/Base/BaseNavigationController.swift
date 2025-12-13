//
//  BaseNavigationController.swift
//  HelloSwift
//
//  Created by lixiaoyi on 2025/12/13.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {

        // 只要不是第一个 VC，就隐藏 TabBar
        if viewControllers.count >= 1 {
            viewController.hidesBottomBarWhenPushed = true
            
            // 去掉返回按钮文字
            viewControllers.last?.navigationItem.backButtonTitle = ""
        }

        super.pushViewController(viewController, animated: animated)
    }
}

