//
//  ViewController.swift
//  影音功能
//
//  Created by Luke Pai on 2017/5/26.
//  Copyright © 2017年 Luke Pai. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var 拍照按鈕: UIButton!
    @IBOutlet weak var 選擇照片按鈕: UIButton!
    @IBOutlet weak var 圖片框: UIImageView!
    
    var imagePicker = UIImagePickerController()
    var selectImage: UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        圖片框.image = UIImage(named: "圍棋同學")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func 拍攝照片(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            self.present(imagePicker, animated: true, completion: nil)
        }
        else {
            let alertView:UIAlertView = UIAlertView(title: "無照相裝置", message: "本機無照相裝置，故無法照相！", delegate: self, cancelButtonTitle: "確定")
            alertView.show()
        }
    }

    @IBAction func 選擇圖片(_ sender: UIButton) {
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        selectImage = info[UIImagePickerControllerOriginalImage] as! UIImage
//        UIImageWriteToSavedPhotosAlbum(selectImage, nil, nil, nil)
        圖片框.image = selectImage
        picker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func 去看影片頁(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toPage2", sender: nil)
    }
}

