//
//  SongsCollectionViewCell.swift
//  iTunes_testTask
//
//  Created by Dzhafar on 02.11.2021.
//

import UIKit

class SongsCollectionViewCell: UICollectionViewCell {
    
    let nameSongsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        self.addSubview(nameSongsLabel)
        NSLayoutConstraint.activate([
            nameSongsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            nameSongsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            nameSongsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            nameSongsLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
    }
}
