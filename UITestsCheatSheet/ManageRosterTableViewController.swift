//
//  ManageRosterTableViewController.swift
//  UITestsCheatSheet
//
//  Created by Jon Olivet on 11/23/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ManageRosterTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.isEditing = true

        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh), for: UIControlEvents.valueChanged)
        self.tableView.addSubview(refreshControl)
        self.refreshControl = refreshControl
    }

    @objc func refresh() {
        refreshControl!.endRefreshing()
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.none
    }

    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) { }
}
