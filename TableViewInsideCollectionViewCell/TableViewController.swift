//
//  TableViewController.swift
//  TableViewInsideCollectionViewCell
//
//  Created by Janarthan Subburaj on 05/02/21.
//

import UIKit

class TableViewController: UITableViewController,CustomCells{
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 250
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath) as! TableViewCell
        TableViewCell.CellDelegate = self
        return TableViewCell
    }
    func CollectionViewCells(Collectionviewcell: CollectionViewCell?, didtaped tableViewCell: TableViewCell) {
        print("\(Collectionviewcell?.selec) Button Tapped")
    }
}
