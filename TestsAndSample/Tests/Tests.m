//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 8/2/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SHObjectUserInfo.h"

@interface SHPlayer : NSObject
@end

@implementation SHPlayer
@end

@interface Tests : XCTestCase
@property(nonatomic,strong) SHPlayer * player;
@end


@implementation Tests

-(void)setUp; {
  [super setUp];
  self.player = SHPlayer.new;
}

-(void)tearDown; {
  [super tearDown];
}

-(void)testObjectUserInfoNotNil; {
  XCTAssertNotNil(self.player.SH_userInfo);
}

-(void)testObjectUserInfoIsMutableDictionary; {
  XCTAssertEqualObjects(self.player.SH_userInfo.class,
                       NSMutableDictionary.new.class);
}

-(void)testObjecUserInfoSet; {
  NSMutableDictionary * dictionary = @{@"LOL" : @"LOLZ"}.mutableCopy;
  self.player.SH_userInfo = dictionary;
  XCTAssertEqualObjects(self.player.SH_userInfo, dictionary);
}

-(void)testObjecUserInfoEmpty; {
  [self testObjecUserInfoSet];
  self.player.SH_userInfo = nil;
  XCTAssertEqual(self.player.SH_userInfo.count, 0U);
}


@end
