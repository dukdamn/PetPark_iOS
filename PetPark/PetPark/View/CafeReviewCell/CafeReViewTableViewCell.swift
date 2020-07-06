//
//  CafeReViewTableViewCell.swift
//  PetPark
//
//  Created by macbook on 2020/01/16.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit

class CafeReViewTableViewCell: UITableViewCell {
    
    static let identifier = "CafeReViewTableViewCell"
    private let roundImageView = UIImageView()
    private let idLabel = UILabel()
    private let cafeReviewDateLabel = UILabel()
    private let cafeReviewLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupAnchor()
    }
    func cafeReviewInfo(ID: String, roundImage: String, CafeDate: String, CafeReView: String) {
        idLabel.text = ID
        roundImageView.image = UIImage(named: roundImage)
        cafeReviewDateLabel.text = CafeDate
        cafeReviewLabel.text = CafeReView
    }
    private let margin: CGFloat = 10
    private func setupAnchor() {
        [roundImageView, idLabel, cafeReviewDateLabel, cafeReviewLabel].forEach {
            contentView.addSubview($0)
        }
        
        roundImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roundImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin),
            roundImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin * 3),
            roundImageView.widthAnchor.constraint(equalToConstant: margin * 5),
            roundImageView.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
      roundImageView.layer.cornerRadius = 25
        roundImageView.layer.masksToBounds = true
      
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: margin * 2),
            idLabel.leadingAnchor.constraint(equalTo: roundImageView.trailingAnchor, constant: margin * 1),
            idLabel.widthAnchor.constraint(equalToConstant: margin * 20),
            idLabel.heightAnchor.constraint(equalToConstant: margin),
        ])
        cafeReviewDateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cafeReviewDateLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor),
            cafeReviewDateLabel.leadingAnchor.constraint(equalTo: roundImageView.trailingAnchor, constant: margin * 1),
            cafeReviewDateLabel.widthAnchor.constraint(equalToConstant: margin * 20),
            cafeReviewDateLabel.heightAnchor.constraint(equalToConstant: margin * 3),
        ])
        
        cafeReviewLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cafeReviewLabel.topAnchor.constraint(equalTo: cafeReviewDateLabel.bottomAnchor),
            cafeReviewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin * 2),
            cafeReviewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -(margin * 2) ),
            cafeReviewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            cafeReviewLabel.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
    }
    
    private func setupUI() {
        contentView.backgroundColor = .white
        cafeReviewLabel.numberOfLines = 0
        cafeReviewLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        cafeReviewDateLabel.textColor = .black
        idLabel.textColor = .black
        cafeReviewLabel.textColor = .black
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
