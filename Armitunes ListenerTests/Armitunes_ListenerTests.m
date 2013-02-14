//
//  Armitunes_ListenerTests.m
//  Armitunes ListenerTests
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import "Armitunes_ListenerTests.h"
#import "ArmiRSSParser.h"

@implementation Armitunes_ListenerTests

- (void)setUp
{
    [super setUp]; 
}

- (void)tearDown
{
    [super tearDown];
}

- (void) testDefaultInit
{
    ArmiRSSParser* testParser = [[ArmiRSSParser alloc] init];
    STAssertEqualObjects(@"http://rss.armitunes.com/", testParser.rssFeedLocation, @"rssFeedLocation should be equal to default");
}

-(void) initWithFeedLocation
{
    ArmiRSSParser* testParser = [[ArmiRSSParser alloc] initWithFeedLocation:@"test"];
    STAssertEqualObjects(@"test", testParser.rssFeedLocation, @"should be equal");
}

@end
