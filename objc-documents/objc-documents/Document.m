//
//  Document.m
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import "Document.h"
#import "NSString+WordCount.h"

@implementation Document

-(instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    if (self)
    {
        _title = title;
        _text = text;
    }
    return self;
}

-(void)setDocumentWordCount:(NSUInteger)documentWordCount
{
    NSString *string = _text;
    NSUInteger wordCount = [[string componentsSeparatedByString:@" "] count];
    NSLog(@"%lu", (unsigned long)wordCount);
}

@end
