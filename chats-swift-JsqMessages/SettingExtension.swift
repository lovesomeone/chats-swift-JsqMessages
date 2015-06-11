//
//  SettingExtension.swift
//  chats-swift-JsqMessages
//
//  Created by kingsun on 15/6/11.
//  Copyright (c) 2015年 程平. All rights reserved.
//

let kSettingExtraMessages = "kSettingExtraMessages";
let kSettingLongMessage = "kSettingLongMessage";
let kSettingEmptyMessages = "kSettingEmptyMessages";
let kSettingSpringiness = "kSettingSpringiness";
let kSettingIncomingAvatar = "kSettingIncomingAvatar"
let kSettingOutgoingAvatar = "kSettingOutgoingAvatar"
extension NSUserDefaults{
    
    func saveExtraMessagesSetting(value:Bool)
    {
        NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingExtraMessages)
    }
    
    func extraMessagesSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingExtraMessages)
    }
    
    func saveLongMessageSetting(value:Bool)
    {
        NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingLongMessage)
    }
    
    func longMessageSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingLongMessage)

    }
    
    
    func saveEmptyMessagesSetting(value:Bool)
    {
         NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingEmptyMessages)
    }
    
    func emptyMessagesSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingEmptyMessages)
        
    }
    
    func saveSpringinessSetting(value:Bool)
    {
        NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingSpringiness)
    }
    
    func springinessSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingSpringiness)
        
    }
    
    func saveOutgoingAvatarSetting(value:Bool)
    {
        NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingOutgoingAvatar)
    }
    
    func outgoingAvatarSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingOutgoingAvatar)
        
    }
    
    func saveIncomingAvatarSetting(value:Bool)
    {
        NSUserDefaults.standardUserDefaults().setBool(value, forKey: kSettingIncomingAvatar)
    }
    
    func incomingAvatarSetting() ->Bool
    {
        return NSUserDefaults.standardUserDefaults().boolForKey(kSettingIncomingAvatar)
        
    }
}