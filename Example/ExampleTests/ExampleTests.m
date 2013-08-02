//
//  ExampleTests.m
//  ExampleTests
//
//  Created by Seivan Heidari on 8/2/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "SHObjectUserInfo.h"

@interface SHPlayer : NSObject
@end

@implementation SHPlayer
@end

@interface SHObjectUserInfo : SenTestCase
@property(nonatomic,strong) SHPlayer * player;
@end


@implementation SHObjectUserInfo

-(void)setUp; {
  [super setUp];
  self.player = SHPlayer.new;
}

-(void)tearDown; {
  [super tearDown];
}

-(void)testObjectUserInfoNotNil; {
  STAssertNotNil(self.player.SH_userInfo, nil);
}

-(void)testObjectUserInfoIsMutableDictionary; {
  STAssertEqualObjects(self.player.SH_userInfo.class,
                       NSMutableDictionary.new.class, nil);
}

-(void)testObjecUserInfoSet; {
  NSMutableDictionary * dictionary = @{@"LOL" : @"LOLZ"}.mutableCopy;
  self.player.SH_userInfo = dictionary;
  STAssertEqualObjects(self.player.SH_userInfo, dictionary, nil);
}

-(void)testObjecUserInfoEmpty; {
  [self testObjecUserInfoSet];
  self.player.SH_userInfo = nil;
  STAssertEquals(self.player.SH_userInfo.count, 0U, nil);
}


@end
