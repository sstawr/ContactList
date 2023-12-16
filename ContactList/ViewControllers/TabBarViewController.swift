//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Evgeni Glushko on 16.12.23.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    private let contactList = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let viewControllers = viewControllers {
            for viewController in viewControllers {
                if let contactListVC = viewController as? ContactListViewController {
                    contactListVC.contactList = contactList
                } else if let contactSectionVC = viewController as? ContactSectionViewController {
                    contactSectionVC.contactList = contactList
                }
            }
        }
    }
}
