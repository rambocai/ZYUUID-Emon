//
//  ViewController.m
//  ZYUUID
//
//  Created by 竹雨 on 2018/4/13.
//  Copyright © 2018年 竹雨. All rights reserved.
//

#import "ViewController.h"
#import "UUIDTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 原来的UUID
    NSLog(@"originalUUID = %@", [UUIDTool getUUID]);
    
    // keychain中存储的UUID
    NSLog(@"keychainUUID = %@", [UUIDTool getUUIDInKeychain]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UUIDTool deleteKeyChain];
}

@end
