//
//  ViewController.swift
//  video_player
//
//  Created by Bathiya Pathum on 2023-05-03.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo(){
        
        guard let path = Bundle.main.path(forResource: "4K Ultra HD _ SONY 4K UHD Demo Another World (Madagascar) - YouTube", ofType: "mkv")else{
            debugPrint("4K Ultra HD _ SONY 4K UHD Demo Another World (Madagascar) - YouTube.mkv not Found")
            
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        
        playerController.player=player
        
        present(playerController, animated: true){
            player.play()
        }
        
        
        //    private func findVideo(){
        //
        //       guard let path = Bundle.main.path(forResource: "4K Ultra HD _ SONY 4K UHD Demo Another World (Madagascar) - YouTube", ofType: "mkv")else{
        //            debugPrint("video.mkv not Found")
        //
        //            return
        //        }
        //
        //    }
        
        
    }
}

