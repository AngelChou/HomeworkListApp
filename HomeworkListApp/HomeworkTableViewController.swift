//
//  HomeworkTableViewController.swift
//  HomeworkListApp
//
//  Created by Shun-Ching, Chou on 2019/4/15.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class HomeworkTableViewController: UITableViewController {
    
    var homeworks = ["#01 給我一首歌的時間做App", "#02 擇偶條件App", "#03 問答題", "#04 用view拼湊漂亮的圖案", "#05 Auto Layout練習", "#06 猜數字和1A2B App", "#07 Light App", "#08 甜蜜的Apple Pie(恐怖的Hangman)", "#09 鐵板神算App(回答問題的笨AI機器人)", "#10 猜拳遊戲", "#11 瘋狂購物App-UISepper和數字變字串練習", "#12 計算機App", "#13 彼得潘的影子-調色大師", "#14 搭配Sketch和Zeplin，製作iOS App畫面", "#15 化學元素週期表-用prepare傳遞資料", "#16 心理測驗或問卷App", "#17 模仿FB超準的面相算命App", "#18 世大運主題畫面截圖分享", "#19 串接第三方API，解析JSON資料，轉換成自訂型別顯示", "#20 訂飲料App，上傳資料到後台", "#21 存取檔案實作單字App", "#22 二十一點亞洲慈善撲克王大賽", "#23 利用Date Picker計算生命靈數", "#24 Storyboard電子書App", "#25 選擇題App", "#26 研究Apple官方的MusicKit Sample Code", "#27 利用Codable儲存過年紅包", "#28 利用Notification Service Extension解密摩斯密碼(morse code)推播和下載圖片", "#29 開發Swift Playground程式，免費獲得WWDC門票", "#30 熟練iOS SDK內建的data source & delegate", "#31 製作iPhone內建的iOS App畫面", "#32 研究GitHub上Udacity學生們的iOS App程式", "#33 顯示時間的正妹帥哥時計", "#34 數學小神童", "#35 換算App，比方小費，BMI，匯率", "#36 研讀一本iOS App開發入門原文書", "#37 利用scroll view實現人體分割魔術", "#38 愛情的模樣-點選Segmented Control和Button更換圖片", "#39 以static cells製作數量內容固定的表格", "#40 世界末日倒數計時-Date Picker和Date的練習", "#41 文字的縮放和字數-UISlider & UITextField練習", "#42 利用iOS SDK各式型別生成東西，設定它的屬性和呼叫方法", "#43 從程式製作國旗圖案", "#44 利用becomeFirstResponder練習鍵盤的顯示", "#45 愛我，不愛我的摘花瓣App", "#46 利用marvel的POP App做一個prototype app", "#47 反轉古人撩妹金句", "#48 骰子轉轉轉和骰子吹牛", "#49 Storyboard有聲書App", "#50 to-do list的完成打勾"]
    
    var isFinished: [Bool]?

    override func viewDidLoad() {
        super.viewDidLoad()
        isFinished = Array(repeating: false, count: homeworks.count)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return homeworks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeworkCellId", for: indexPath)

        // Configure the cell...
        let row = indexPath.row
        cell.textLabel?.text = homeworks[row]
        if isFinished![row] {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        isFinished![indexPath.row] = !isFinished![indexPath.row]
        tableView.reloadData()
    }


}
