//
//  Car.m
//  ClassSubscriptDemo
//
//  Created by nonstriater on 14-7-31.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "Car.h"

@implementation Car


- (id)objectForKeyedSubscript:(id)key{
    return [self valueForKey:key];
}


- (void)setObject:(id)object forKeyedSubscript:(id<NSCopying>)key{
    
    [self setValue:object forKey:(NSString *)key];
    
}


@end
