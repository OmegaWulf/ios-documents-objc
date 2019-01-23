//
//  Document.h
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Document : NSObject

@property NSString *title;
@property NSString *text;
@property NSUInteger wordCount;

-(instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
