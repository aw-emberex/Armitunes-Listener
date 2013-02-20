//
//  Armitunes_ListenerTests.h
//  Armitunes ListenerTests
//
//  Created by Alex Wait on 2/13/13.
//  Copyright (c) 2013 Alex Wait. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "ArmiRSSParser.h"
#import "ParsedRSSData.h"

@interface Armitunes_ListenerTests : SenTestCase

@property ArmiRSSParser* testParser;
@property ParsedRSSData* testData;

@end
