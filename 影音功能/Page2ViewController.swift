//
//  Page2ViewController.swift
//  影音功能
//
//  Created by Luke Pai on 2017/5/27.
//  Copyright © 2017年 Luke Pai. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var 影片框: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        影片框.loadHTMLString("<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_Z915L1vo4U\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func 按回上頁(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toPage1", sender: nil)
    }
}
