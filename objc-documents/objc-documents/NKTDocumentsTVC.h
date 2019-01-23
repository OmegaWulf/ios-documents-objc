//
//  NKTDocumentsTVC.h
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DocumentController;
@class Document;

NS_ASSUME_NONNULL_BEGIN

@interface NKTDocumentsTVC : UITableViewController

@property DocumentController *documentController;
@property Document *document;


@end

NS_ASSUME_NONNULL_END
