//
//  MessagesViewController.swift
//  chats-swift-JsqMessages//
//  Created by kingsun on 15/6/5.
//  Copyright (c) 2015年 程平. All rights reserved.
//


import UIKit

class MessagesViewController: JSQMessagesViewController {

    override func viewDidLoad() {
        //
        super.viewDidLoad()
        self.title = "JSQMessages"
        /**
        *  You MUST set your senderId and display name
        */
        self.senderId = kJSQDemoAvatarIdSquires;
        self.senderDisplayName = kJSQDemoAvatarDisplayNameSquires;
    }
}
