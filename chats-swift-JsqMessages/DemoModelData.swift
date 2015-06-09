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
    var avatars = Dictionary<String,UIImage>()
    var user = Dictionary<String,String>()
    
   
    var outgoingBubbleImageData = JSQMessagesBubbleImageFactory().outgoingMessagesBubbleImageWithColor(UIColor.jsq_messageBubbleLightGrayColor())
    
    var incomingBubbleImageData = JSQMessagesBubbleImageFactory().incomingMessagesBubbleImageWithColor(UIColor.jsq_messageBubbleBlueColor())
    
    
    
    override init(){
        
    }
   // backgroundColor:[UIColor colorWithWhite:0.85f alpha:1.0f]
   // textColor:[UIColor colorWithWhite:0.60f alpha:1.0f]
   // font:[UIFont systemFontOfSize:14.0f]
   // diameter:kJSQMessagesCollectionViewAvatarSizeDefault];
    
    func initImage()
    {
        
        
        var jsqImage = JSQMessagesAvatarImageFactory.avatarImageWithUserInitials("JQS", backgroundColor:UIColor(white:0.85,alpha:1.0), textColor: UIColor(white:0.85,alpha:1.0), font: UIFont.systemFontOfSize(14.0), diameter: UInt(kJSQMessagesCollectionViewAvatarSizeDefault))
    }
}
