//
//  ParsedRSSData.m
//  Armitunes Listener
//
//  Created by Alex Wait on 2/18/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import "ParsedRSSData.h"

@implementation ParsedRSSData

@synthesize currentlyPlayingSong;
@synthesize nextUpSongs;

-(id) init
{
    if (self = [super init])
    {
        self.nextUpSongs = [[NSMutableArray alloc]init];
        self.currentlyPlayingSong = nil;
        return self;
    }
    return self;
}

-(void) addSong:(NSString *)newSong
{
    [self.nextUpSongs addObject:newSong];
}

-(void) clearSongs
{
    [self.nextUpSongs removeAllObjects];
}

-(NSInteger) getNumberofSongs
{
    return [self.nextUpSongs count];
}

@end
