//
//  DocumentController.m
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import "DocumentController.h"

@interface DocumentController ()

@property Document *document;

@end

@implementation DocumentController

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        _document = [[Document alloc] init];
        _documents = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createDocument:(NSString *)title text:(NSString *)text
{
    _document = [_document initWithTitle:title text:text];
    [_documents addObject:_document];
}

-(void)updateDocument:(Document *)document title:(NSString *)title text:(NSString *)text
{
    document.title = title;
    document.text = text;

}

-(void)deleteDocument:(Document *)document
{
    if (_document == document)
    {
        [_documents removeObject:_document];
    }
}




@end
