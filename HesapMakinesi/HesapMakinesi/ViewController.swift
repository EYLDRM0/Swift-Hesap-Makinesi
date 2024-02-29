//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Enes Yıldırım on 29.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ilksayi: UITextField!
    @IBOutlet weak var ikincisayi: UITextField!
    @IBOutlet weak var sonuc: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toplama(_ sender: Any) {
        if let ilkgirilensayi = Int(ilksayi.text!){
            if let ikincigirilensayi = Int(ikincisayi.text!){
                let sonucsayi = ilkgirilensayi + ikincigirilensayi
                sonuc.text = String(sonucsayi)
                
            }
            else
            {
                sonuc.text = "Lütfen Sayı Giriniz"
            }
        }
        else
        {
            sonuc.text = "Lütfen Sayı Giriniz"
        }
            
    }
    
    
    @IBAction func carpim(_ sender: Any) {
        if let ilkgirilensayi = Int(ilksayi.text!){
            if let ikincigirilensayi = Int(ikincisayi.text!){
                let sonucsayi = ilkgirilensayi * ikincigirilensayi
                sonuc.text = String(sonucsayi)
                
            }
            else
            {
                sonuc.text = "Lütfen Sayı Giriniz"
            }
        }
        else
        {
            sonuc.text = "Lütfen Sayı Giriniz"
        }
    }
    
    
    
    @IBAction func bolum(_ sender: Any) {
        let buyukolansayi = Int(ilksayi.text!)!
        let kucukolansayi = Int(ikincisayi.text!)
        
        if Int(buyukolansayi) >= Int(kucukolansayi!){
            
            let sonuctext = buyukolansayi / kucukolansayi!
            sonuc.text = String(sonuctext)
            
        }
        else{
            sonuc.text = "İlk Sayı İkinci Sayıdan Büyük Olmalı"
        }
    }
    
    
    @IBAction func cikarma(_ sender: Any) {
        if let ilkgirilensayi = Int(ilksayi.text!){
            if let ikincigirilensayi = Int(ikincisayi.text!){
                let sonucsayi = ilkgirilensayi - ikincigirilensayi
                sonuc.text = String(sonucsayi)
                
            }
            else
            {
                sonuc.text = "Lütfen Sayı Giriniz"
            }
        }
        else
        {
            sonuc.text = "Lütfen Sayı Giriniz"
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
}

