//
//  ViewController.swift
//  2020-04-20-MovieTableWithDetail-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 4/18/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    //set up data to be served in the table view
    
    let movieImageArray = ["Jeuxdenfants", "Beautyandbeast", "Lesintouchables", "Aladdin", "Transformers", "Furious"]
    
    let movieNameArray = ["Jeux d'Enfants", "The Beauty and The Beast", "Les Intouchables", "Aladdin", "Transfomers 1", "Furious 7"]
    
    let movieYearArray = [2003, 1991, 2011, 1992, 2007, 2015]
    
    let movieDirectorArray = ["Yann Samuell", "Gary Trousdal and Kirk Wise", "Olivier Nakache and Eric Toledano", "John Musker", "Michael Bay", "James Wan"]
    
    let movieRatingArray = ["7.6/10", "8.0/10", "8.5/10", "8.0/10", "7.0/10", "7.2/10"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // define datasource and delegate for tableview
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    //create prepare () to specify what are the values to be passed on to the next page
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "ShowDetail" {
        // get the destination of the sergue, and force it to be FoodDetailViewController
        
        let destination = segue.destination as! MovieDetailTableViewController
        
        // figure out which row of the table user selected
        let selectedIndexPath = tableView.indexPathForSelectedRow
        
                
        //pass on information to next page
        destination.movieName = movieNameArray[selectedIndexPath!.row]
        destination.movieYear = movieYearArray[selectedIndexPath!.row]
        destination.movieImageName = movieImageArray [selectedIndexPath!.row]
        destination.movieDirector = movieDirectorArray [selectedIndexPath!.row]
        destination.movieRating = movieRatingArray [selectedIndexPath!.row]
    }
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movieNameArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = movieNameArray[indexPath.row]
    cell.detailTextLabel?.text = movieDirectorArray[indexPath.row]
    return cell
}
    
    


}

