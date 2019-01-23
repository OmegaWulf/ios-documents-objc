//
//  NKTDetailVC.h
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DocumentController.h"
#import "Document.h"

NS_ASSUME_NONNULL_BEGIN

@interface NKTDetailVC : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property Document *document;
@property DocumentController *documentController;

@end

NS_ASSUME_NONNULL_END
