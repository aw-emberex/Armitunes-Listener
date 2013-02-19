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
@synthesize _parser;

- (id) init
{
    return [self initWithFeedLocation:@"http://rss.armitunes.com/"];
}

- (id) initWithFeedLocation:(NSString *)feedLocation
{
    return [self initWithFeedLocation:feedLocation shouldInitOnLoad:YES];
}

- (void)parseFile
{
    self._parser = [[NSXMLParser alloc] initWithContentsOfURL: [[NSURL alloc] initWithString:self.rssFeedLocation]];
    [self._parser setDelegate:self];
    [self._parser setShouldResolveExternalEntities:YES];
    [self._parser parse];
}

-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(elementName);
    if ([elementName isEqualToString:@"item"])
    {
        
    }
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"did end with %@", elementName);
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    NSLog(@"found these characters %@", string);
}

-(id) initWithFeedLocation:(NSString *)feedLocation shouldInitOnLoad:(Boolean)doInit
{
    if (self = [super init])
    {
        [self setRssFeedLocation:feedLocation];
    }
    if (doInit)
    {
        [self parseFile];
    }
    return self;
}

@end
