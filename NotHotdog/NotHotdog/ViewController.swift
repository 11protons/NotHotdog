//
//  ViewController.swift
//  NotHotdog
//
//  Created by Lowell Stevens on 07/08/2017.
//  Copyright © 2017 Lowell Stevens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
            if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
                
        imagePicker.dismiss(animated: true, completion: nil)
            
        } else {
            
        print ("Sorry, Lowell is an idiot and the app broke. Try again?")
    }
}
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        imagePicker.sourceType = .savedPhotosAlbum
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }
    
}

