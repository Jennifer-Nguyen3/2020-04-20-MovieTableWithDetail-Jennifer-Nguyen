//
//  MovieDetailTableViewController.swift
//  2020-04-20-MovieTableWithDetail-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 4/18/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class MovieDetailTableViewController: UITableViewController {

    //create four variables to pass on information from previous page
    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieDirectorLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    var movieName: String!
    var movieYear: Int!
    var movieImageName: String!
    var movieDirector: String!
    var movieRating: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieNameLabel.text = "\((movieName!)) [\(movieYear!)]"
        movieImage.image = UIImage(named: movieImageName)
        movieDirectorLabel.text = movieDirector
        movieRatingLabel.text = movieRating
        

    }
    
    
    

}
