//
//  ViewController.swift
//  Hello World
//
//  Created by Galuh Kesumanjati on 07/05/19.
//  Copyright © 2019 ADa team 07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 3. dibawah ini adalah codingan awal kita. Yang berbentuk var (karena isinya tidak tetap/berubah2) dan kita namakan randomDiceIndex untuk menandakan angka dadu random, berbentuk int dengan nilai 0. Kenapa kita perlu codingan ini? soalnya kita mau generate random number di dadu antara angka 1 sampai 6. Dan perlu kita deklarasikan nilainya.
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    // dibawah ini adalah coding array kita. yang mendeklarasikan urutan image dadu dari 1 sampai 6.
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //1. dibawah ini adalah @IBOutlet(Interface builder outlet) which changes the appearance of the UI element. Dan UIView (image gambar) hanya bisa mengubah its appearance (berbentuk outlet).
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // 8. kita tinggal panggil function codingan random dice kita di viewdidload, supaya ketika app loading langsung muncul dice random
       updateDiceImages()
    }
    // 2. Untuk membuat sebuah action (dalam hal ini kita membuat button), start di setelah kurawal akhir view didload tapi masih di dalam class. @IBaction that notify the code when UI element is interacted with. Dan selalu ada kurawal awal { dan di dalamnya sini ada code:defining what should happen when the roll button is pressed. Dan diakhiri dengan kurawal akhir }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
// 4. di bawah ini adalah codingan kita untuk memerintahkan apa yang harus dilakukan ketika button di press. yang sudah dibuat dalam bentuk func yang dipanggil. dan berada di dalam kurawal button.
        updateDiceImages()
    }
    
    // 9. Kita mau membuat func baru yang memerintahkan supaya random dadu ketika di shake. kita browsing apa nama perintah itu (yaitu motionEnded di:  https ://developer.apple.com/documentation/uikit/uiresponder/1621090-motionended ) kemudian kita deklarasikan atau tulis di dalam function.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
        // 7. untuk membuat function, letakkan diluar ibaction, diluar view didload, tapi masih di dalam class. Function ini untuk memudahkan penempatan hasil codingan kita agar rapi, jadi tiap kali make tinggal ambil dari judul function tersebut. seperti yang sudah dilakukan di dalam ibbutton dan viewdidload. Dan kalo kita create func (atau juga var atau let) kita akan memulainya dengan menuliskan func di depannya. Tapi untuk memanggil kita ga perlu lagi nulis func.
    func updateDiceImages() {
        // 5. ini adalah mesin untuk membuat random numbernya
        randomDiceIndex1 = Int.random(in: 1 ... 5)
        randomDiceIndex2 = Int.random(in: 1 ... 5)
        
        // 6. ini adalah dimana kita menggunakan randomnumber diatas tadi untuk merubah image dadu (image view of the dices)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
}

