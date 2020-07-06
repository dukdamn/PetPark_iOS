//
//  LikeTableViewCell.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/16.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit
protocol MyPageTableViewCellDelegate: class {
    func whenPickImageButtonDidTap()
}
class MyPageTableViewCell: UITableViewCell {
    
    weak var delegate: MyPageTableViewCellDelegate?
    
    private let photoView = UIView()
    private let nickNameLabel = UILabel()
    private let photoImageView = UIImageView()
    private let photoChangeButton = UIButton()
    static let identifier = "LikeTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupAnchor()
    }

    @objc private func pickImage() {
        delegate?.whenPickImageButtonDidTap()
    }
    
    func tableViewInfo(photoImage: String, nickName: String) {
        nickNameLabel.text = nickName
        photoImageView.image = UIImage(named: photoImage)
    }
    
    func setUserImage(_ image: UIImage) {
        photoImageView.image = image
    }
    
    private func setupUI() {
        contentView.backgroundColor = .white
        photoView.layer.cornerRadius = margin * 12 / 2
        photoImageView.layer.cornerRadius = margin * 12 / 2
        photoImageView.layer.masksToBounds = true
        
        photoChangeButton.layer.cornerRadius = margin * 2 / 2
        photoChangeButton.backgroundColor = .white
        
        photoChangeButton.setTitleColor(.black, for: .normal)
        
        photoChangeButton.setTitle("프로필 수정", for: .normal)
        photoChangeButton.layer.borderWidth = 0.1
        photoChangeButton.layer.borderColor = UIColor.black.cgColor
        photoChangeButton.addTarget(self, action: #selector(pickImage), for: .touchUpInside)
        
        nickNameLabel.font = .systemFont(ofSize: 18)
        nickNameLabel.textColor = .black
    }
    let margin: CGFloat = 10
    private func setupAnchor() {
        [nickNameLabel, photoView, photoChangeButton].forEach {
            self.addSubview($0)
        }
        
        [photoImageView].forEach {
            photoView.addSubview($0)
        }
        photoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: self.topAnchor,constant: self.frame.height/3),
            photoView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: margin * 2),
            photoView.heightAnchor.constraint(equalToConstant: margin * 12),
            photoView.widthAnchor.constraint(equalToConstant: margin * 12),
        ])
        
        nickNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nickNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height/2),
            nickNameLabel.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: margin * 5),
            nickNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -(margin * 3)),
            nickNameLabel.heightAnchor.constraint(equalToConstant: margin * 5),
        ])
        
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            photoImageView.topAnchor.constraint(equalTo: photoView.topAnchor),
            photoImageView.leadingAnchor.constraint(equalTo: photoView.leadingAnchor),
            photoImageView.trailingAnchor.constraint(equalTo: photoView.trailingAnchor),
            photoImageView.bottomAnchor.constraint(equalTo: photoView.bottomAnchor),
        ])
        
        photoChangeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            photoChangeButton.topAnchor.constraint(equalTo: nickNameLabel.bottomAnchor, constant: margin), photoChangeButton.leadingAnchor.constraint(equalTo: photoView.trailingAnchor,constant: margin * 4),
            photoChangeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -(margin * 4)),
            photoChangeButton.heightAnchor.constraint(equalToConstant: margin * 4),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
