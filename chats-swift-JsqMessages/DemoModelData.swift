//
//  DemoModelData.swift
//  chats-swift-JsqMessages
//
//  Created by kingsun on 15/6/9.
//  Copyright (c) 2015年 程平. All rights reserved.
//
import UIKit
import Foundation
let kJSQDemoAvatarDisplayNameSquires = "Jesse Squires";
let kJSQDemoAvatarDisplayNameCook = "Tim Cook";
let kJSQDemoAvatarDisplayNameJobs = "Jobs";
let kJSQDemoAvatarDisplayNameWoz = "Steve Wozniak";

let kJSQDemoAvatarIdSquires = "053496-4509-289";
let kJSQDemoAvatarIdCook = "468-768355-23123";
let kJSQDemoAvatarIdJobs = "707-8956784-57";
let kJSQDemoAvatarIdWoz = "309-41802-93823";

class DemoModelData: NSObject {
    var messages = [JSQMessage]()
    var avatars = Dictionary<String,JSQMessagesAvatarImage>()
    var user = Dictionary<String,String>()
    
   
    var outgoingBubbleImageData = JSQMessagesBubbleImageFactory().outgoingMessagesBubbleImageWithColor(UIColor.jsq_messageBubbleLightGrayColor())
    
    var incomingBubbleImageData = JSQMessagesBubbleImageFactory().incomingMessagesBubbleImageWithColor(UIColor.jsq_messageBubbleBlueColor())
    
    
    
    override init(){
        super.init()
        self.initImage()
        self.loadFakeMessages();
    }
   // backgroundColor:[UIColor colorWithWhite:0.85f alpha:1.0f]
   // textColor:[UIColor colorWithWhite:0.60f alpha:1.0f]
   // font:[UIFont systemFontOfSize:14.0f]
   // diameter:kJSQMessagesCollectionViewAvatarSizeDefault];
    
    func initImage()
    {
        
        
        var jsqImage = JSQMessagesAvatarImageFactory.avatarImageWithUserInitials("JQS", backgroundColor:UIColor(white:0.85,alpha:1.0), textColor: UIColor(white:0.85,alpha:1.0), font: UIFont.systemFontOfSize(14.0), diameter: UInt(kJSQMessagesCollectionViewAvatarSizeDefault))
        
        var cookImage = JSQMessagesAvatarImageFactory.avatarImageWithImage(UIImage(named: "demo_avatar_cook"), diameter: UInt(kJSQMessagesCollectionViewAvatarSizeDefault))
        
        var jobsImage = JSQMessagesAvatarImageFactory.avatarImageWithImage(UIImage(named: "demo_avatar_jobs"), diameter: UInt(kJSQMessagesCollectionViewAvatarSizeDefault))
        
        var wozImage = JSQMessagesAvatarImageFactory.avatarImageWithImage(UIImage(named: "demo_avatar_woz"), diameter: UInt(kJSQMessagesCollectionViewAvatarSizeDefault))
        self.avatars = [kJSQDemoAvatarIdSquires : jsqImage,
            kJSQDemoAvatarIdCook : cookImage,
            kJSQDemoAvatarIdJobs : jobsImage,
            kJSQDemoAvatarIdWoz : wozImage]
        self.user = [kJSQDemoAvatarIdJobs : kJSQDemoAvatarDisplayNameJobs,
            kJSQDemoAvatarIdCook : kJSQDemoAvatarDisplayNameCook,
            kJSQDemoAvatarIdWoz : kJSQDemoAvatarDisplayNameWoz,
            kJSQDemoAvatarIdSquires : kJSQDemoAvatarDisplayNameSquires]
        
    }
    
    func loadFakeMessages()
    {
        var message1 = JSQMessage(senderId: kJSQDemoAvatarIdSquires, senderDisplayName: kJSQDemoAvatarDisplayNameSquires, date: (NSDate.distantPast() as! NSDate), text: "It is simple, elegant, and easy to use. There are super sweet default settings, but you can customize like crazy")
        
        var message2 = JSQMessage(senderId: kJSQDemoAvatarIdWoz, senderDisplayName: kJSQDemoAvatarDisplayNameWoz, date: (NSDate.distantPast() as! NSDate), text: "It is simple, elegant, and easy to use. There are super sweet default settings, but you can customize like crazy")
        
        var message3 = JSQMessage(senderId: kJSQDemoAvatarIdSquires, senderDisplayName: kJSQDemoAvatarDisplayNameSquires, date: (NSDate.distantPast() as! NSDate), text: "It even has data detectors. You can call me tonight. My cell number is 123-456-7890. My website is www.hexedbits.com")
        
        var message4 = JSQMessage(senderId: kJSQDemoAvatarIdJobs, senderDisplayName: kJSQDemoAvatarDisplayNameJobs, date: NSDate(), text: "JSQMessagesViewController is nearly an exact replica of the iOS Messages App. And perhaps, better")
        
        var message5 = JSQMessage(senderId: kJSQDemoAvatarIdCook, senderDisplayName: kJSQDemoAvatarDisplayNameCook, date: NSDate(), text: "It is unit-tested, free, open-source, and documented")
        
        var message6 = JSQMessage(senderId: kJSQDemoAvatarIdSquires, senderDisplayName: kJSQDemoAvatarDisplayNameSquires, date: NSDate(), text: "Now with media messages!")
        
        self.messages.append(message1)
        self.messages.append(message2)
        self.messages.append(message3)
        self.messages.append(message4)
        self.messages.append(message5)
        self.messages.append(message6)
        
        addPhotoMediaMessage()
        
        
        
    }
    
    func addPhotoMediaMessage()
    {
        var photoItem = JSQPhotoMediaItem(image: UIImage(named: "goldengate"))
        var photoMessage = JSQMessage(senderId: kJSQDemoAvatarIdSquires, displayName: kJSQDemoAvatarDisplayNameSquires, media: photoItem)
        self.messages.append(photoMessage)
    }
    
}
