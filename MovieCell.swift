//
//  MovieCell.swift
//  Project2
//
//  Created by Noah Pilkington on 3/6/23.
//
import Nuke
import UIKit


class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterLabel: UIImageView!
 
    
    // Configures the cell's UI for the given track.
    
    func configure(with movie: Movie)
    {
        movieLabel.text = movie.original_title
        overviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        
       // Nuke.loadImage(with: movie.poster_path, into: posterLabel)  // old hardcoded
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.poster_path.absoluteString)!, into: posterLabel)
    }

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
