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

@synthesize testParser;
@synthesize testData;

- (void)setUp
{
    [super setUp]; 
}

- (void)tearDown
{
    [super tearDown];
}

- (void) setup
{
    [self setTestParser:[[ArmiRSSParser alloc] init]];
    [self setTestData: [[ParsedRSSData alloc] init]];
}

- (void) test_init_default
{
    ArmiRSSParser* parser = [[ArmiRSSParser alloc] init];
    STAssertEqualObjects(@"http://rss.armitunes.com/", parser.rssFeedLocation, @"rssFeedLocation should be equal to default");
}

-(void) test_init_withFeedLocation
{
    ArmiRSSParser* parser = [[ArmiRSSParser alloc] initWithFeedLocation:@"test" shouldInitOnLoad:YES];
    STAssertEqualObjects(@"test", parser.rssFeedLocation, @"should be equal");
}

-(void) test_songs_adding
{
    [self setup];
    [self.testData addSong:@"test song1"];
    [self.testData addSong:@"another jing is awesome"];
    STAssertEquals([self.testData getNumberofSongs], 2, @"Number of Songs added should be 2");
    
}

@end
