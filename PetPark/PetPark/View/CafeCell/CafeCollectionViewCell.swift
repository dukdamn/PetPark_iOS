//
//  CafeCollectionViewCell.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/17.
//  Copyright © 2020 Gitbot. All rights reserved.
//
//struct Cafe {
//  let name: String
//  let location: String
//  let imageName: String
//  let instagramName: String
//  let operationTime: String
//}

import UIKit
protocol CafeCollectionViewCellDelegate: class {
  func didTap(cell: CafeCollectionViewCell)
}

class CafeCollectionViewCell: UICollectionViewCell {

  weak var delegate: CafeCollectionViewCellDelegate?
  
  private let cafeImageView = UIImageView()
  private let cafeNameLabel = UILabel()
  private let cafeLocationLabel = UILabel()
  private let heartButton = UIButton()
  let smallConfiguration = UIImage.SymbolConfiguration(scale: .large)
  //  let smallSymbolImage = UIImage(systemName: "suit.heart", withConfiguration: smallConfiguration)
  static let identifier = "CafeCollectionViewCell"
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  func cafeInfo(cafeName: String, cafeLocation: String, cafeImageName: String){
    cafeImageView.image = UIImage(named: cafeImageName)
    cafeNameLabel.text = cafeName
    cafeLocationLabel.text =  cafeLocation
  }
  func cafeItemSet(cafeImage image: String, cafeName name: String, cafeAddress address: String) {
    cafeImageView.image = UIImage(named: image)
    cafeNameLabel.text = name
    cafeLocationLabel.text = address
  }
  
  
  private func setupUI() {
    [cafeImageView, cafeNameLabel, cafeLocationLabel,heartButton].forEach {
      contentView.addSubview($0)
    }
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
    cafeImageView.isUserInteractionEnabled = true
    cafeImageView.addGestureRecognizer(tapGestureRecognizer)
    
    
    
    heartButton.setImage(UIImage(systemName: "suit.heart", withConfiguration: smallConfiguration)?.withTintColor(.systemRed, renderingMode: .alwaysOriginal), for: .normal)
    
    heartButton.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    cafeImageView.layer.cornerRadius = 10
    cafeImageView.layer.masksToBounds = true
    cafeLocationLabel.textColor = .gray
    let margin: CGFloat = 5
    
    cafeImageView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      cafeImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
      cafeImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      cafeImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
      //        cafeImageView.widthAnchor.constraint(equalToConstant: margin * 10),
      cafeImageView.heightAnchor.constraint(equalToConstant: margin * 40),
    ])
    
    cafeNameLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      cafeNameLabel.topAnchor.constraint(equalTo: cafeImageView.bottomAnchor, constant: margin),
      cafeNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin),
      //        cafeNameLabel.widthAnchor.constraint(equalToConstant: margin * 10),
      cafeNameLabel.heightAnchor.constraint(equalToConstant: margin * 4),
    ])
    
    cafeLocationLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      cafeLocationLabel.topAnchor.constraint(equalTo: cafeNameLabel.bottomAnchor, constant: margin),
      cafeLocationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: margin),
      //        cafeLocationLabel.widthAnchor.constraint(equalToConstant: margin * 5),
      cafeLocationLabel.heightAnchor.constraint(equalToConstant: margin * 4),
    ])
    
    heartButton.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      heartButton.topAnchor.constraint(equalTo: cafeImageView.bottomAnchor),
      heartButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -margin),
      heartButton.widthAnchor.constraint(equalToConstant: margin * 10),
      heartButton.heightAnchor.constraint(equalToConstant: margin * 10),
    ])
    
  }
  var heartCheck = true
  @objc private func didTapButton(_ sender: UIButton){
    print("\n----------[duck]----------\n")
    if heartCheck {
      heartButton.setImage(UIImage(systemName: "suit.heart.fill", withConfiguration: smallConfiguration)?.withTintColor(.systemRed, renderingMode: .alwaysOriginal), for: .normal)
    } else {
      heartButton.setImage(UIImage(systemName: "suit.heart", withConfiguration: smallConfiguration)?.withTintColor(.systemRed, renderingMode: .alwaysOriginal), for: .normal)
    }
    heartCheck.toggle()
  }
  
  @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
  {
//    let tappedImage = tapGestureRecognizer.view as! UIImageView
//    print("\n----------[duck]----------\n")
//    let cafeDetailVC = CafeDetailViewController()
    
    delegate?.didTap(cell: self)
    
    
    
//    self.present(cafeDetailVC, animted: ture)
//    present(cafeDetailVC)
//    present(cafeDetailVC, animated: true)
//    present(cafeDetailVC, animated: true)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
