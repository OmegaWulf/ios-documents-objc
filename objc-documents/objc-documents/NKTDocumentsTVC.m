//
//  NKTDocumentsTVC.m
//  objc-documents
//
//  Created by Nikita Thomas on 1/23/19.
//  Copyright © 2019 Nikita Thomas. All rights reserved.
//

#import "NKTDocumentsTVC.h"
#import "DocumentController.h"
#import "NKTDetailVC.h"

@interface NKTDocumentsTVC ()

@end

@implementation NKTDocumentsTVC

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        _document = [[Document alloc] init];
        _documentController = [[DocumentController alloc] init];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if(self)
    {
        _documentController = [[DocumentController alloc] init];
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _documentController.documents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    _document = _documentController.documents[indexPath.row];
    cell.textLabel.text = _document.title;
    cell.detailTextLabel.text = _document.text;
    
    return cell;
}




/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"toNewDoc"])
    {
        NKTDetailVC *detailVC;
        detailVC.documentController = _documentController;
    } else if([[segue identifier] isEqualToString:@"toDoc"])
    {
        
        NKTDetailVC *detailVC;
        detailVC.documentController = _documentController;
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        detailVC.document = self.documentController.documents[indexPath.row];
        
    }
    
    
}

@end
