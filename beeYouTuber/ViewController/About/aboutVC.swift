//
//  aboutVC.swift
//  beYoutuber
//
//  Created by Furkan Erzurumlu on 3.03.2022.
//

import UIKit
class aboutVC: UIViewController {
    @IBOutlet weak var aboutTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Hakkında"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "customBackground")!)
        
        aboutTextView.text = "\n \nYoutube üzerinden para kazanmak için izlemeniz gereken adımlar Dersler sayfasında detaylı olarak anlatılmıştır\n \n Eğitimler Tamamen ücretsiz olup, eğitim sonrası Youtuber olmak için gereken kuralların tamamında bilgi sahibi olacaksınız\n \n Uygulama, Youtube üzerinden para kazanmayla ilgili dersleri konu almıştır\n \n Uygulamaya yorum yapıp puan vererek bize destek olabilir, uygulamanın gelişimini sizlerin istekleri doğrultusunda devam ettirebilir\n \n İlerleyen dönemlerde Soru-Cevap şeklinde aklınıza takılan tüm soruları teker teker cevaplaycağız"
        
    }
}
