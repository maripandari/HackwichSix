
//
//  ViewController_02.swift
//  HackwichSix
//
//  Created by Marijoy Jatico on 10/10/23.
//

import UIKit

class ViewController_02: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var placesToTravelArray  = ["Thailand", "Germany", "New Zealand"]
    var citiesToTravelArray = ["Bangkok", "Munich", "Auckland"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesToTravelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = placesToTravelArray[indexPath.row]
        cell.detailTextLabel?.text = citiesToTravelArray [indexPath.row]
        cell.textLabel?.text = text
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
