//
//  Model.swift
//  YoutubeRebuild
//
//  Created by Naysean Smith on 8/23/23.
//

import Foundation


class Model {
    
    func getVideos() {
        
        
        // create a url object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // get a data task from URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error )in
            
         // check if there were any errors
            if error != nil || data == nil {
                return
            }
          
            do {
                
                // parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
               let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
                
            }
           
        }
        
        // kick off the task
        dataTask.resume()
    }
}
