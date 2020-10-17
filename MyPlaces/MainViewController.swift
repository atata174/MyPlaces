//
//  MainViewController.swift
//  MyPlaces
//
//  Created by PenguinRaja on 17.10.2020.
//

import UIKit

class MainViewController: UITableViewController {

    var placesArray = ["Птицы", "Счастье", "harvest", "Ma", "Memo", "Галерея", "Охта Молл", "Пик", "Zara", "Дом Зингера"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = placesArray[indexPath.row]
        cell.imageView?.image = UIImage(named: placesArray[indexPath.row])

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
