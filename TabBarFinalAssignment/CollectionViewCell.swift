//
//  CollectionViewCell.swift
//  TabBarFinalAssignment
//
//  Created by shivam kumar on 04/09/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image2: UIImageView!
    
    
    @IBOutlet weak var label2: UILabel!
    
    func configureItem(data : MyData1?) {
        guard let data1 = data else {
            return
        }
        image2.image = UIImage(named: data1.laptopImage ?? "")
        label2.text = data1.laptopName
    }
}
