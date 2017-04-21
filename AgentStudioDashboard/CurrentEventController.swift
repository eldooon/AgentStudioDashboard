//
//  CurrentEventController.swift
//  AgentStudioDashboard
//
//  Created by Eldon Chan on 4/21/17.
//  Copyright © 2017 Eldon. All rights reserved.
//

import UIKit

class CurrentEventController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(CurrentEventHeader.self, forCellWithReuseIdentifier: "headerID")
        
    }
    
//    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//
//    }
    

}
