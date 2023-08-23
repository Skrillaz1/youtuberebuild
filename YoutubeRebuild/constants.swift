//
//  constants.swift
//  YoutubeRebuild
//
//  Created by Naysean Smith on 8/23/23.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyADBt-dDa246mM-MO80_yoffNHfYteeD-s"
    static var PLAYLIST_ID = "PLMRqhzcHGw1Y5Cluhf7pKRNZtKaA3Q4kg"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
