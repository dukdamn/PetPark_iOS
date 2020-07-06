//
//  PensionReviewTableViewCell.swift
//  PetPark
//
//  Created by macbook on 2020/01/17.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit

class PensionReviewTableViewCell: UITableViewCell {

     static let identifier = "PensionReviewTableViewCell"
     private let roundImageView = UIImageView()
     private let idLabel = UILabel()
     private let pensionReviewDateLabel = UILabel()
     private let pensionReviewLabel = UILabel()

     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
         setupUI()
         setupAnchor()
     }
     func cafeReviewInfo(ID: String, roundImage: String, CafeDate: String, CafeReView: String) {
         idLabel.text = ID
         roundImageView.image = UIImage(named: roundImage)
         pensionReviewDateLabel.text = CafeDate
         pensionReviewLabel.text = CafeReView
     }
     private let margin: CGFloat = 10
     private func setupAnchor() {
         [roundImageView, idLabel, pensionReviewDateLabel, pensionReviewLabel].forEach {
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
         pensionReviewDateLabel.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
             pensionReviewDateLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor),
             pensionReviewDateLabel.leadingAnchor.constraint(equalTo: roundImageView.trailingAnchor, constant: margin * 1),
             pensionReviewDateLabel.widthAnchor.constraint(equalToConstant: margin * 20),
             pensionReviewDateLabel.heightAnchor.constraint(equalToConstant: margin * 3),
         ])
         
         pensionReviewLabel.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
             pensionReviewLabel.topAnchor.constraint(equalTo: pensionReviewDateLabel.bottomAnchor),
             pensionReviewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin * 2),
             pensionReviewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -(margin * 2) ),
             pensionReviewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
             pensionReviewLabel.heightAnchor.constraint(equalToConstant: margin * 5),
         ])
     }
     
     private func setupUI() {
         contentView.backgroundColor = .white
         pensionReviewLabel.numberOfLines = 0
         pensionReviewLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
         
         pensionReviewDateLabel.textColor = .black
         idLabel.textColor = .black
         pensionReviewLabel.textColor = .black
     }
     
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     
}
