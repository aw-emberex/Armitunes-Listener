//
//  ParsedRSSData.h
//  Armitunes Listener
//
//  Created by Alex Wait on 2/18/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParsedRSSData : NSObject

@property (readwrite, atomic) NSString* currentlyPlayingSong;
@property (readwrite, atomic) NSMutableArray* nextUpSongs;

-(void) addSong: (NSString*)newSong;
-(void) clearSongs;

@end
