//
//  CharacterCVCell.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/10.
//

import UIKit

class CharacterCVCell: UICollectionViewCell {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임"
        return label
    }()
    
    private let lvlLabel: UILabel = {
        let label = UILabel()
        label.text = "1445"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .gray
        contentView.addSubview(nameLabel)
        contentView.addSubview(lvlLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func layoutSubviews() {
        nameLabel.frame = CGRect(x: 10, y: 20, width: contentView.frame.size.width-10, height: 20)
        lvlLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 20)
    }
}
