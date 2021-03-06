//
//  cafeReviewHeaderView.swift
//  PetPark
//
//  Created by macbook on 2020/01/16.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit

class CafeReviewHeaderView: UIView {
    
    private let bigReviewLabel = UILabel()
    private let ReviewCountLabel = UILabel()
    private let cafeAverageScore = UILabel()
    private let numberOfReviewLabel = UILabel()
    private let starImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAnchor()
        setupUI()
    }
    private let margin: CGFloat = 10
    private func setupAnchor() {
        [bigReviewLabel, cafeAverageScore, numberOfReviewLabel, starImage, ReviewCountLabel].forEach {
            self.addSubview($0)
        }
        
        bigReviewLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bigReviewLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: margin * 1),
            bigReviewLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margin * 3),
            bigReviewLabel.widthAnchor.constraint(equalToConstant: margin * 10 ),
            bigReviewLabel.heightAnchor.constraint(equalToConstant: margin * 4 ),
        ])
        starImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            starImage.topAnchor.constraint(equalTo: bigReviewLabel.bottomAnchor, constant: margin * 1),
            starImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: margin * 3),
            starImage.widthAnchor.constraint(equalToConstant: margin * 3),
            starImage.heightAnchor.constraint(equalToConstant: margin * 3),
        ])
        
        cafeAverageScore.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cafeAverageScore.topAnchor.constraint(equalTo: bigReviewLabel.bottomAnchor),
            cafeAverageScore.leadingAnchor.constraint(equalTo: starImage.trailingAnchor, constant: (margin * 1)),
            cafeAverageScore.widthAnchor.constraint(equalToConstant: margin * 5),
            cafeAverageScore.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
        
        ReviewCountLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ReviewCountLabel.topAnchor.constraint(equalTo: bigReviewLabel.bottomAnchor),
            ReviewCountLabel.leadingAnchor.constraint(equalTo: cafeAverageScore.trailingAnchor, constant: margin * 3),
            ReviewCountLabel.widthAnchor.constraint(equalToConstant: margin * 5),
            ReviewCountLabel.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
        numberOfReviewLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberOfReviewLabel.topAnchor.constraint(equalTo: bigReviewLabel.bottomAnchor),
            numberOfReviewLabel.leadingAnchor.constraint(equalTo: ReviewCountLabel.trailingAnchor),
            numberOfReviewLabel.widthAnchor.constraint(equalToConstant: margin * 6),
            numberOfReviewLabel.heightAnchor.constraint(equalToConstant: margin * 5)
        ])
                
        
    }
    private func setupUI() {
        starImage.image = #imageLiteral(resourceName: "star")
        
        bigReviewLabel.font = .systemFont(ofSize: 16, weight: .bold)
        bigReviewLabel.text = "후 기"
        bigReviewLabel.textColor = .black
        
        cafeAverageScore.text =  String(cafeReview[0].avgScore)
        cafeAverageScore.textColor = .black
        
        ReviewCountLabel.text = "후기"
        ReviewCountLabel.textColor = .black
        
        numberOfReviewLabel.text = "\(cafeReview[0].cafes.count)"
        numberOfReviewLabel.textColor = .black
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
