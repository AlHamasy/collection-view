//
//  BuahCollectionViewController.swift
//  Collection View App
//
//  Created by asad on 20/08/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BuahCollectionViewController: UICollectionViewController {
    
    // deklarasi array
    var data = ["Alpukat","Apel","Ceri","Durian","Jambu Air","Manggis","Strawberyyyy"]
    
    var gambar = [#imageLiteral(resourceName: "alpukat"),#imageLiteral(resourceName: "apel"),#imageLiteral(resourceName: "ceri"),#imageLiteral(resourceName: "durian"),#imageLiteral(resourceName: "jambuair"),#imageLiteral(resourceName: "manggis"),#imageLiteral(resourceName: "strawberry")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // atur jumlah dari columnya
        let layout = UICollectionViewFlowLayout()
        
        //ambil tinggi dan lebar devicenya
        let lebar = UIScreen.main.bounds.width
        let tinggi = UIScreen.main.bounds.height
        
        // size item setting
        layout.itemSize = CGSize(width: lebar/5, height: tinggi/4)
        
        // atur spasi kanan kiri
        layout.minimumInteritemSpacing = 1
        
        // atur spasi atas bawah
        layout.minimumLineSpacing = 0
        
        // layout include ke collection
        collectionView?.collectionViewLayout = layout
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? BuahCollectionViewCell
    
        // ambil dari label dan image view dari class cell nya
        cell?.cellLabel.text = data[indexPath.row]
        cell?.cellImage.image = gambar[indexPath.row]
        
        return cell!
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // panggil story board
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        // get id storyboard
        let hal2 = story.instantiateViewController(withIdentifier: "kedua")
        
        // action pindah menggunakan segue
        show(hal2, sender: self)
        
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
