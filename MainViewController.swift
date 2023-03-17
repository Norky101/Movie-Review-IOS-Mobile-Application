//
//  ViewController.swift
//  Project2
//
//  Created by Noah Pilkington on 3/6/23.
//

import UIKit


// changed class name from TracksViewController
class MainViewController:   UIViewController, UITableViewDataSource
{
    var movies: [Movie] = []
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow
        {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return movies.count //returns amount of movies we put in MovieCell file
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "TrackCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell

        // Get the track that corresponds to the table view row
        let movie = movies[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: movie)

        // return the cell for display in the table view
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    // TODO: Pt 1 - Add a tracks property
    


    // TODO: Pt 1 - Add table view outlet

    override func viewDidLoad()
    {
        
        
        tableView.dataSource = self
  
        // TODO: Pt 1 - Set tracks property with mock tracks array
        // Create a URL for the request
        
        // In this case, the custom search URL you created in in part 1
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=6c5a3b1cd6cf7316fd2e85091f58bff9")!
        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            
            do
            {
                // Create a JSON Decoder
                let decoder = JSONDecoder()

                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(MoviesResponse.self, from: data)

                // Access the array of movies from the `results` property
                let movies = response.results
                
                // Execute UI updates on the main thread when calling from a background callback
                DispatchQueue.main.async {
                    self?.movies = movies
                    self?.tableView.reloadData()
                }
                print("✅ \(movies)")
            }
            catch
            {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume() 
        //movies = Movie.mockMovies  // muted due to now using API link
        print(movies)
        
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller

        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController
        {

            // Use the index path to get the associated track
            let movie = movies[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.movie = movie
        }
        
    }

    // TODO: Pt 1 - Add table view data source methods


}

