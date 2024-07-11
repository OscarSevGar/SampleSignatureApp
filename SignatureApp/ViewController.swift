//
//  ViewController.swift
//  SignatureApp
//
//  Created by Etwan on 19/02/24.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var signatureView: SignatureView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signatureView.setupViews()
        signatureView.setStrokeColor(color: .black)
    }
    
    @IBAction func saveBtnTapped(_ sender: Any) {
        let signature = signatureView.asImage()
        print("Firma guardada")
        UIImageWriteToSavedPhotosAlbum(signature, nil, nil, nil)
    }
    
    @IBAction func clearBtnTapped(_ sender: Any) {
        signatureView.clear()
    }
}

