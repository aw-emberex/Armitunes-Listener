//
//  ArmiRSSParser.m
//  Armitunes Listener
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import "ArmiRSSParser.h"
#import "ParsedRSSData.h"

@implementation ArmiRSSParser

@synthesize rssFeedLocation = _rssFeedLocation;
@synthesize _parser;
@synthesize onCurrentlyPlayingNode;
@synthesize parsedData;

- (id) init
{
    return [self initWithFeedLocation:@"http://rss.armitunes.com/"];
}

- (id) initWithFeedLocation:(NSString *)feedLocation
{
    return [self initWithFeedLocation:feedLocation shouldInitOnLoad:YES];
}

- (ParsedRSSData*) parseFile
{
    self.parsedData = [[ParsedRSSData alloc]init];
    self._parser = [[NSXMLParser alloc] initWithContentsOfURL: [[NSURL alloc] initWithString:self.rssFeedLocation]];
    [self._parser setDelegate:self];
    [self._parser setShouldResolveExternalEntities:YES];
    [self._parser parse];
    return self.parsedData;
}

-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"item"] &&
        [[attributeDict valueForKey:@"rdf:about"] isEqualToString:@"http://www.armitunes.com/cgi-bin/icecast/playing-r.cgi"])
    {
        self.onCurrentlyPlayingNode = YES;
    }
}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    NSLog(@"did end with %@", elementName);
}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)characters
{
    if (self.onCurrentlyPlayingNode)
    {
        [parsedData setCurrentlyPlayingSong:characters];
    }
   // NSLog(@"found these characters %@", characters);
}

-(id) initWithFeedLocation:(NSString *)feedLocation shouldInitOnLoad:(Boolean)doInit
{
    if (self = [super init])
    {
        self.onCurrentlyPlayingNode = NO;
        [self setRssFeedLocation:feedLocation];
    }
    if (doInit)
    {
        [self parseFile];
    }
    return self;
}

@end