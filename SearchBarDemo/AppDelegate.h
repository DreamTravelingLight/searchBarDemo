//
//  AppDelegate.h
//  SearchBarDemo
//
//  Created by 汪泽天 on 2017/7/19.
//  Copyright © 2017年 霍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

