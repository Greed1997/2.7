//
//  ContactDetailsViewController.swift
//  2.7HW
//
//  Created by Александр on 19.07.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contactDetails: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contactDetails.fullName
        phoneLabel.text = "Phone: \(contactDetails.phone)"
        emailLabel.text = "Email: \(contactDetails.email)"
    }
    
}
