//
//  PCFirstViewController.h
//  TestTapApp
//
//  Created by Poom on 5/29/14.
//  Copyright (c) 2014 Phathaisarn Chalermchuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCFirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
