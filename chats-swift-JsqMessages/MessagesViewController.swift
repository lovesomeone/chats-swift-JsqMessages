//
//  MessagesViewController.swift
//  chats-swift-JsqMessages//
//  Created by kingsun on 15/6/5.
//  Copyright (c) 2015年 程平. All rights reserved.
//


import UIKit

class MessagesViewController: JSQMessagesViewController {

    var demoData = DemoModelData()
    override func viewDidLoad() {
        //
        super.viewDidLoad()
        self.title = "JSQMessages"
        /**
        *  You MUST set your senderId and display name
        */
        self.senderId = kJSQDemoAvatarIdSquires;
        self.senderDisplayName = kJSQDemoAvatarDisplayNameSquires;
        
        
        self.showLoadEarlierMessagesHeader = true
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage.jsq_defaultTypingIndicatorImage(), style: UIBarButtonItemStyle.Plain, target: self, action: "receiveMessagePressed:")
         // self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Test", style: UIBarButtonItemStyle.Plain, target: self, action: "receiveMessagePressed:")
    }
    // 每行的数据项
    override func collectionView(collectionView: JSQMessagesCollectionView!, messageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageData! {
        return self.demoData.messages[indexPath.item]
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.demoData.messages.count
    }
    
    override func collectionView(collectionView: JSQMessagesCollectionView!, messageBubbleImageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageBubbleImageDataSource! {
        let msg = self.demoData.messages[indexPath.row]
        if(msg.senderId == self.senderId){
            return self.demoData.outgoingBubbleImageData
        }else{
            return self.demoData.incomingBubbleImageData
        }
    }
    
    override func collectionView(collectionView: JSQMessagesCollectionView!, avatarImageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageAvatarImageDataSource! {
        return self.demoData.avatars[self.demoData.messages[indexPath.item].senderId]!
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = super.collectionView(collectionView, cellForItemAtIndexPath: indexPath) as! JSQMessagesCollectionViewCell
        var msg = self.demoData.messages[indexPath.row]
        if(msg.senderId == self.senderId){
            cell.textView.textColor = UIColor.blackColor()
        }else{
            cell.textView.textColor = UIColor.whiteColor()
        }
        return cell
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
      
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func receiveMessagePressed(sender:UIBarButtonItem)
    {
        println("clicked");
    }
}
