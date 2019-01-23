//
//  NSString+WordCount.h
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WordCount)

-(NSUInteger)wordCount:(NSString *)forString;

@end

NS_ASSUME_NONNULL_END
