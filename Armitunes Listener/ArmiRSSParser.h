//
//  ArmiRSSParser.h
//  Armitunes Listener
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArmiRSSParser : NSObject

@property (readwrite, atomic) NSString* rssFeedLocation;

- (id) init;

- (id) initWithFeedLocation: (NSString*)feedLocation;


-(id) initWithFeedLocation:(NSString *)feedLocation initOnLoad:(Boolean)shouldLoad;

@end
