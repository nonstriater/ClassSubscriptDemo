//
//  ClassSubscriptDemoTests.m
//  ClassSubscriptDemoTests
//
//  Created by nonstriater on 14-7-31.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Car.h"


@interface ClassSubscriptDemoTests : XCTestCase

@end

@implementation ClassSubscriptDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    //XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
    
    Car *car = [[Car alloc] init];
    car.price = 2.f;
    
    NSLog(@"%f",[car[@"price"] floatValue]);
    XCTAssert([car[@"price"] floatValue] == 2.f, @"");
     
    car[@"price"] = @4.9;
    NSLog(@"%f",[car[@"price"] floatValue]);
    XCTAssertFalse([car[@"price"] floatValue] == 2.f, @"");
    XCTAssertTrue([car[@"price"] floatValue] == 4.9f, @"");
}

@end
