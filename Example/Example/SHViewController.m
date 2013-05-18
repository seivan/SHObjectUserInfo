//
//  SHViewController.m
//  Example
//
//  Created by Seivan Heidari on 5/14/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//




#import "SHViewController.h"

@implementation SHViewController

-(void)viewDidLoad;{
  [super viewDidLoad];
  self.SH_userInfo = @{@"sample" : @"works"}.mutableCopy;
  
}

-(void)viewDidAppear:(BOOL)animated; {
  NSLog(@"%@",self.SH_userInfo);
}



@end
