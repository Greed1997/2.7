//
//  SecondContactsViewController.swift
//  2.7HW
//
//  Created by Александр on 19.07.2022.
//

import UIKit

class SecondContactsViewController: UITableViewController {

    var contactList: [Person]!

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsFillID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        let contact = contactList[indexPath.row]
        
        if indexPath.row == 0 {
          content.text = "Phone: \(contact.phone)"
        } else {
            content.text = "Email: \(contact.email)"
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
        
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
