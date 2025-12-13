//
//  BaseViewController.swift
//  HelloSwift
//
//  Created by lixiaoyi on 2025/12/13.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


// MARK: - UIViewController helper
extension UIViewController {
    func setupLabel(text: String) {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 22, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
