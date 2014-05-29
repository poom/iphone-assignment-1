//
//  PCFirstTableViewDataSource.m
//  TestTapApp
//
//  Created by Poom on 5/29/14.
//  Copyright (c) 2014 Phathaisarn Chalermchuang. All rights reserved.
//

#import "PCFirstTableViewDataSource.h"

@implementation PCFirstTableViewDataSource 

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
