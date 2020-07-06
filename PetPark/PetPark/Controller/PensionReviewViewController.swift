//
//  PensionReviewViewController.swift
//  PetPark
//
//  Created by macbook on 2020/01/17.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit

class PensionReviewViewController: UIViewController {
    
    private let headerView = PensionReviewHeaderView()
    private let pensionReviewTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnchor()
        setupUI()
    }
    private func setupUI() {
        pensionReviewTableView.register(PensionReviewTableViewCell.self, forCellReuseIdentifier: PensionReviewTableViewCell.identifier)
        pensionReviewTableView.dataSource = self
        pensionReviewTableView.rowHeight = 150
    }
    
    private let margin: CGFloat = 10
    private func setupAnchor() {
        [headerView, pensionReviewTableView].forEach {
            view.addSubview($0)
        }
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: margin * 10)
        ])
        pensionReviewTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pensionReviewTableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            pensionReviewTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pensionReviewTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pensionReviewTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
extension PensionReviewViewController: UITableViewDataSource {
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        menuData.count
    //    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        cafeData[0].cafes.count
        pensionData[0].pensions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PensionReviewTableViewCell.identifier, for: indexPath) as! PensionReviewTableViewCell
        
        
       let pension = pensionReview[0].pensions[indexPath.row]
        cell.cafeReviewInfo(ID: pension.name , roundImage: pension.imageName , CafeDate: pension.date , CafeReView: pension.detail)
        return cell
    }
}
