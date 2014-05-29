//
//  PCFirstViewController.m
//  TestTapApp
//
//  Created by Poom on 5/29/14.
//  Copyright (c) 2014 Phathaisarn Chalermchuang. All rights reserved.
//

#import "PCFirstViewController.h"
#import <Masonry/Masonry.h>

@interface PCFirstViewController ()

@end

@implementation PCFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate = self;
    self.tableViewDataSource = [[PCFirstTableViewDataSource alloc] init];
    self.tableView.dataSource = self.tableViewDataSource;
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        // make.top.equalTo(self.tableView.superview.mas_top);
        // make.width.equalTo(self.tableView.superview.mas_width);
        // make.bottom.equalTo(self.tableView.superview.mas_bottom);
        
        // make.bottom.equalTo(self.tabBarController.tabBar.mas_top);
        
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Methods


@end
