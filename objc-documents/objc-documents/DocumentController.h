//
//  DocumentController.h
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Document.h"

NS_ASSUME_NONNULL_BEGIN

@interface DocumentController : NSObject

@property NSMutableArray *documents;

-(void)newDocument:(NSString *)title text:(NSString *)text;
-(void)updateDocument:(Document *)document title:(NSString *)title text:(NSString *)text;
-(void)saveDocument;
-(void)deleteDocument:(Document *)document;


@end

NS_ASSUME_NONNULL_END
