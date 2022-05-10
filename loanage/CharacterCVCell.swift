//
//  CharacterCVCell.swift
//  loanage
//
//  Created by Keon Hee Park on 2022/05/10.
//

import UIKit

class CharacterCVCell: UICollectionViewCell {
    
    private let nameLabel = UILabel()
    private let lvlLabel = UILabel()
    private let jobLabel: UILabel = {
        let label = UILabel()
        label.text = "직업"
        return label
    }()
    private let addImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .gray
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .gray
        contentView.addSubview(nameLabel)
        contentView.addSubview(lvlLabel)
        contentView.addSubview(jobLabel)
        contentView.addSubview(addImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func layoutSubviews() {
        nameLabel.frame = CGRect(x: 10, y: 20, width: contentView.frame.size.width-10, height: 20)
        lvlLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-50, width: contentView.frame.size.width-10, height: 20)
        jobLabel.frame = CGRect(x: 10, y: contentView.frame.size.height-70, width: contentView.frame.size.width-10, height: 20)
        addImageView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
    }
    
    public func configure(nickname: String, lvl: Int, job: String) {
        nameLabel.text = nickname
        lvlLabel.text = String(lvl)
        jobLabel.text = job
    }
    
    public func lastCell() {
        addImageView.image = UIImage(systemName: "plus")
        addImageView.backgroundColor = .gray
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        lvlLabel.text = nil
        jobLabel.text = nil
        addImageView.image = nil
        addImageView.backgroundColor = nil
    }
}
