//
//  CollectionViewController.swift
//  MovemedicalItem
//
//  Created by Han Kim on 5/15/20.
//  Copyright © 2020 Han Kim. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    
    var items = [Item]()

    fileprivate func initialSetup() {
        // generate example data
        let car = Car(name: "Model3", description: "Dual Motor, Long Range", price: 30000, color: "white", year: 2020, brand: "Tesla")
        let phone = Phone(name: "iPhoneX", description: "New designed iPhone", price: 1000.00, color: "Space Gray", year: 2017, brand: "Apple")
        let book = Book(name: "Harry Poter", description: "Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.", price: 19.99, author: "J. K. Rowling", publisher: "Movemedical")
        items.append(car)
        items.append(phone)
        items.append(book)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialSetup()
    }

    
    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ItemCollectionViewCell
        
        cell.nameLabel.text = items[indexPath.item].name
        cell.descriptionLabel.text = items[indexPath.item].description
    
        return cell
    }

}


extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.window?.frame.width)!, height: 300)
    }
}
