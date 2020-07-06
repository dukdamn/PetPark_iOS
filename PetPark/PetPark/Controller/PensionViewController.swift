//
//  PensionViewController.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/15.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import UIKit


class PensionViewController: UIViewController {
  
  private let searchController = UISearchController()
  
  private let tempcollectionView: UICollectionView = {
    let tempCollectionViewLayout = UICollectionViewFlowLayout()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: tempCollectionViewLayout)
    return collectionView
  } ()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "petPart"
    self.navigationItem.searchController = searchController
    
    attribute()
    setUpUI()
  }
  
  
  
  private func setUpUI() {
    view.backgroundColor = .white
    [tempcollectionView].forEach {
      self.view.addSubview($0)
    }
    tempcollectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      tempcollectionView.topAnchor.constraint(equalTo: view.topAnchor),
      tempcollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tempcollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      tempcollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }
  
  private func attribute() {
    
    tempcollectionView.backgroundColor = .white
    
    
    //YoujinPensionCollectionViewCell
    tempcollectionView.register(PensionCollectionViewCell.self, forCellWithReuseIdentifier: PensionCollectionViewCell.identifier)
    searchController.searchBar.delegate = self
    tempcollectionView.delegate = self
    tempcollectionView.dataSource = self
  }
  
  
}

// MARK: - SearBarDelegate
extension PensionViewController: UISearchBarDelegate {
  
  func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
    print("searchBarTextDidEndEditing")
    print("searchBar.text -> ",searchBar.text)
    
  }
}


// MARK: - CollectionView DataSource
extension PensionViewController: UICollectionViewDataSource {
  //    func numberOfSections(in collectionView: UICollectionView) -> Int {
  //      return 1
  //    }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //cell 개수
    //      cafeData[section].cafes.count
    return pensionData[section].pensions.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PensionCollectionViewCell.identifier, for: indexPath) as!
    PensionCollectionViewCell
    

  
//    let cafe = cafeData[indexPath.section].cafes[indexPath.row]
//    cell.cafeInfo(cafeName: cafe.name, cafeLocation: cafe.location, cafeImageName: cafe.imageName)
//    return cell
    let pension = pensionData[indexPath.section].pensions[indexPath.row]
//    let pensionImage = ["pension1","pension2"]
//    let pensionName = "애견 펜션"
//    let pensionAddress = "서울특별시 강남구 강남대로 364"
    
    if indexPath.row % 2 == 0 {
      cell.penseionItemSet(
        pensionImage: pension.imageName,
        pensionName: pension.name,
        pensionAddress: pension.location,
        likeButtonImage: PensionCollectionViewCell.likeTrue,
        pensionIndtroduce: pension.pensionDetail
        )
    } else {
      cell.penseionItemSet(
        pensionImage: pension.imageName,
        pensionName: pension.name,
        pensionAddress: pension.location,
        likeButtonImage: PensionCollectionViewCell.likeFalse,
        pensionIndtroduce: pension.pensionDetail
        )
    }
    
    return cell
  }
}

// MARK: - collectionView Delegate
extension PensionViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    return CGSize(width: collectionView.frame.width - 30
      , height: 310)
  }
  
  // 위아래 패딩
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
  
  // 좌우 패딩
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
  
  // 전체 top, left, bottom, right 마진
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    let margin: CGFloat = 15
    return UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
  }
  
  // 셀을 눌렀을 때 엑션
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let pensionDetailVC = PensionDetailViewController()
    let pension = pensionData[0].pensions[indexPath.row]
    
//    pensionDetailVC.penseionItemSet(pensionImage: pension.imageName, pensionName: pension.name, pensionAddress: pension.location, pensionIndtroduce: pension.pensionDetail, phoneName: pension.phoneName, siteString: pension.siteName)
    let naDatailVC = UINavigationController(rootViewController: pensionDetailVC)

    naDatailVC.modalPresentationStyle = .fullScreen
    present(naDatailVC, animated: true)
  }
}

