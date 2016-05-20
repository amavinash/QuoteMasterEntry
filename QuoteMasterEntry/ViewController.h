//
//  ViewController.h
//  QuoteMasterEntry
//
//  Created by Avinash Shantaram Bhandarkar on 18/05/16.
//  Copyright © 2016 Avinash Shantaram Bhandarkar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDataSource ,UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *userContactDetailsTable;

@property (weak, nonatomic) IBOutlet UITextField *projectNameTextField;

@end

