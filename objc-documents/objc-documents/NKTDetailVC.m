//
//  NKTDetailVC.m
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import "NKTDetailVC.h"
#import "NSString+WordCount.h"

@interface NKTDetailVC () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;


@end

@implementation NKTDetailVC

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (_document != nil)
    {
        self.textField.text = self.document.title;
        self.textView.text = self.document.text;
        self.title = @"Edit Document";
    }
    else
    {
        self.textField.text = @"";
        self.textView.text = @"";
        self.title = @"New Document";
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _textView.delegate = self;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (IBAction)save:(UIBarButtonItem *)sender
{
    if (_document == nil)
    {
        [_documentController newDocument:_textField.text text:_textView.text];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}



-(void)textViewDidChange:(UITextView *)textView
{
    [self updateCount];
}

-(void)updateCount
{
    NSUInteger count = [_textView.text wordCount:_textView.text];
    _countLabel.text = [NSString stringWithFormat:@"%lu words", count];
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    return YES;
}

@end
