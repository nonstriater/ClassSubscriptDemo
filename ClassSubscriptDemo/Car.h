//
//  Car.h
//  ClassSubscriptDemo
//
//  Created by nonstriater on 14-7-31.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property(nonatomic,strong) NSString *carID;
@property(nonatomic,assign) float price;

- (id)objectForKeyedSubscript:(id)object;
- (void)setObject:(id)object forKeyedSubscript:(id<NSCopying>)key;

@end
