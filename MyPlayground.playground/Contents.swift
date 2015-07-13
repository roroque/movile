//: Playground - noun: a place where people can play

import UIKit

println("hello")

struct Ids {
    let trackt : Int
    let slug : String?
    let tvdb : Int?
    let imdb : String?
    let tmdb : Int?
    let tvrage : Int?
}

struct Images {
    let full : NSURL?
    let medium : NSURL?
    let thumb : NSURL?
}

struct Show {
    
    let title : String
    let year : Int
    let overview : String
    let ids : Ids?
    let images : Images?
    
    
    /* uma possivel funcao
    func setIdsAndImages(dictionary: NSDictionary)
    {
        
        let ids = Ids(trackt: (dictionary["trackt"] as? Int)!, slug: dictionary["slug"] as? String, tvdb: dictionary["tvdb"] as? Int, imdb: dictionary["imdb"] as?  String, tmdb: dictionary["tmdb"] as? Int, tvrage: dictionary["tvrage"] as? Int)
        
        let dic = dictionary["images"] as! NSDictionary
        let dic2 = dic["poster"] as! NSDictionary
        
        
        let images = Images(full: NSURL(string: dic2["full"] as! String), medium: NSURL(string:dic2["medium"] as! String), thumb: NSURL(string: dic2["thumb"] as! String))
        
        
    }

*/
    
    
}





 import XCPlayground
 XCPSetExecutionShouldContinueIndefinitely()


let url = NSURL(string: "https://api-v2launch.trakt.tv/shows/game-of-thrones")!
let request = NSMutableURLRequest(URL: url)
request.addValue("application/json", forHTTPHeaderField: "Content-Type")
request.addValue("2", forHTTPHeaderField: "trakt-api-version")
request.addValue("[client_id]", forHTTPHeaderField: "trakt-api-key")

let session = NSURLSession.sharedSession()
let task = session.dataTaskWithRequest(request) { (data: NSData!, response: NSURLResponse!, error: NSError!) in
    
    if error != nil {
        // Handle error...
        return
    }
    
    println(error)
    println(response)
    println(NSString(data: data, encoding: NSUTF8StringEncoding))
}

task.resume()
