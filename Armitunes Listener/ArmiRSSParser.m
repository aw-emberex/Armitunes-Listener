//
//  ArmiRSSParser.m
//  Armitunes Listener
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import "ArmiRSSParser.h"

@implementation ArmiRSSParser

@synthesize rssFeedLocation = _rssFeedLocation;

- (id) init
{
    return [self initWithFeedLocation:@"http://rss.armitunes.com/"];
}

- (id) initWithFeedLocation:(NSString *)feedLocation
{
    return [self initWithFeedLocation:feedLocation initOnLoad:YES];
}


-(id) initWithFeedLocation:(NSString *)feedLocation initOnLoad:(Boolean)shouldLoad
{
    if (self = [super init])
    {
        [self setRssFeedLocation:feedLocation];
    }
    return self;
}

@end
