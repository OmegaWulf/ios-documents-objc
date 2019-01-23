//
//  NSString+WordCount.m
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import "NSString+WordCount.h"

@implementation NSString (WordCount)

-(NSUInteger)wordCount:(NSString *)text
{
    return [[text componentsSeparatedByString:@" "] count];
}

@end
