//
//  TabBarViewController.swift
//  2.7HW
//
//  Created by Александр on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var contactList = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let firstContactVC = navigationVC.topViewController as? FirstContactsViewController {
                    firstContactVC.contactList = contactList
                } else if let secondContactVC = navigationVC.topViewController as? SecondContactsViewController {
                    secondContactVC.contactList = contactList
                }
            }
        }
    }
}
