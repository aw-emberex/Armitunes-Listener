//
//  ArmiRSSParser.h
//  Armitunes Listener
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSXMLParser.h>

@interface ArmiRSSParser : NSObject<NSXMLParserDelegate>

@property (readwrite, atomic) NSString* rssFeedLocation;
@property NSXMLParser* _parser;

- (id) init;

- (id) initWithFeedLocation: (NSString*)feedLocation;

- (id) initWithFeedLocation:(NSString *)feedLocation shouldInitOnLoad:(Boolean)doInit;



@end
