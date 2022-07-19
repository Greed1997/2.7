//
//  TabBarViewController.swift
//  2.7HW
//
//  Created by Александр on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let contactList = Person.getPersons()
        if let firstNavigationVC = viewControllers?.first as? UINavigationController {
            let firstVC = firstNavigationVC.topViewController as! FirstContactsViewController
            firstVC.contactList = contactList
        } else if let secondNavigationVC = viewControllers?.last as? UINavigationController {
            let secondVC = secondNavigationVC.topViewController as! SecondContactsViewController
            secondVC.contactList = contactList
        }
    }
}
