//
//  TableViewCell.swift
//  TableViewInsideCollectionViewCell
//
//  Created by Janarthan Subburaj on 05/02/21.
//

import UIKit

protocol CustomCells:class {
    func CollectionViewCells(Collectionviewcell:CollectionViewCell?,didtaped tableViewCell:TableViewCell)
}

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    var CellDelegate:CustomCells?
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        CollectionViewCell?.Label_1.text = "\(indexPath)"
        CollectionViewCell?.selec = "\(indexPath.row)"
        return CollectionViewCell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        CellDelegate?.CollectionViewCells(Collectionviewcell: cell, didtaped: self)
    }

}
