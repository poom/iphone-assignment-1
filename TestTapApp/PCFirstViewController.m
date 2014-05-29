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
    self.tableView.dataSource = self;
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"RegularCell";
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.selectionStyle =UITableViewCellSelectionStyleBlue;
    }
    // NSString *cellText = [NSString alloc] initWithFormat:<#(NSString *), ...#>;
    NSString *cellText = [NSString stringWithFormat:@"Row Number: %d",indexPath.row];
    
    cell.textLabel.text = cellText;
    // [[cell textLabel] setText:cellText];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Selected!", @"Show this message when user select cell") message:[NSString stringWithFormat:NSLocalizedString(@"You selected cell # %d", @"Message when user select cell"), indexPath.row] delegate: nil cancelButtonTitle:NSLocalizedString(@"Cancel", nil) otherButtonTitles:nil, nil];
    
    [alertView show];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}

@end
