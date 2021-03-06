//
//  PensionCollectionViewCell.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/16.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit

class MyPagePensionCollectionViewCell: UICollectionViewCell {
    private let pensionImageView = UIImageView()
    private let pensionNameLabel = UILabel()
    private let pensionRegionLabel = UILabel()

    static let identifier = "PensionCollectionViewCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAnchor()
        setupUI()
    }
    func pensionInfo(pensionImage: String, pensionName: String, pensionRegion: String) {
        pensionImageView.image = UIImage(named: pensionImage)
        pensionNameLabel.text = pensionName
        pensionRegionLabel.text = pensionRegion
    }
    private func setupUI() {
        
        pensionImageView.layer.cornerRadius = 10
        pensionImageView.layer.masksToBounds = true
        
        pensionRegionLabel.numberOfLines = 0
        pensionRegionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
    
        pensionImageView.backgroundColor = .green
       
        pensionNameLabel.textColor = .black
        pensionNameLabel.font = .systemFont(ofSize: 20)
        pensionNameLabel.backgroundColor = .white
   
        pensionRegionLabel.textColor = .gray
        pensionRegionLabel.backgroundColor = .white
    }
    private let margin: CGFloat = 10
    private func setupAnchor() {
        [pensionImageView, pensionNameLabel, pensionRegionLabel].forEach {
            contentView.addSubview($0)
        }
        
        pensionImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pensionImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            pensionImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            pensionImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            pensionImageView.heightAnchor.constraint(equalToConstant: margin * 20),
        ])
        
        pensionNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pensionNameLabel.topAnchor.constraint(equalTo: pensionImageView.bottomAnchor),
            pensionNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin * 1),
            pensionNameLabel.widthAnchor.constraint(equalToConstant: margin * 20),
            pensionNameLabel.heightAnchor.constraint(equalToConstant: margin * 3),
        ])
        
        pensionRegionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pensionRegionLabel.topAnchor.constraint(equalTo: pensionNameLabel.bottomAnchor),
            pensionRegionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin),
            pensionRegionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                
            pensionRegionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            pensionRegionLabel.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
