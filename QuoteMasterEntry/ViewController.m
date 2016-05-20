//
//  ViewController.m
//  QuoteMasterEntry
//
//  Created by Avinash Shantaram Bhandarkar on 18/05/16.
//  Copyright © 2016 Avinash Shantaram Bhandarkar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Test comment deletion for git
    //_projectNameTextField.layer.cornerRadius=8.0f;
//    _projectNameTextField.layer.masksToBounds=YES;
//    _projectNameTextField.layer.borderColor=[[UIColor whiteColor]CGColor];
//    _projectNameTextField.layer.borderWidth= 1.0f;
}

- (BOOL)prefersStatusBarHidden {
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma MARK
#pragma TableView Delegate Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *headerTitle = @"";
    switch (section) {
        case 0:
            headerTitle = @"Name";
            break;
        case 1:
            headerTitle = @"Address";
            break;
        case 2:
            headerTitle = @"Contact Info";
            break;
        case 3:
            headerTitle = @"Reference Details";
            break;
        default:
            break;
    }
    return headerTitle;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger sectionRowCount = 0;
    switch (section) {
        case 0:
            sectionRowCount = 1;
            break;
        case 1:
            sectionRowCount = 6;
            break;
        case 2:
            sectionRowCount = 2;
            break;
        case 3:
            sectionRowCount = 2;
            break;
        default:
            break;
    }
    return sectionRowCount;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *contactCellId = @"ContactNumberCell";
    UITableViewCell *cell = [_userContactDetailsTable dequeueReusableCellWithIdentifier:contactCellId];
    
    // Configure Cell
    UILabel *label = (UILabel *)[cell.contentView viewWithTag:10];
    //[label setText:[NSString stringWithFormat:@"Row %li in Section %li", (long)[indexPath row], (long)[indexPath section]]];
    [label setText:[self getLabelForCellAtSectionNumber:indexPath.section AndRowNumber:indexPath.row]];
    
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [_userContactDetailsTable deselectRowAtIndexPath:indexPath animated:YES];
}

-(NSString*)getLabelForCellAtSectionNumber:(NSInteger)section AndRowNumber:(NSInteger)rowNumber
{
    NSString *labelForCell = @"";
    switch (section)
    {
        case 0:
            labelForCell = @"Full Name";
            break;
        case 1:
        {
            switch (rowNumber) {
            case 0:
                labelForCell = @"Address 1";
                    break;
            case 1:
                labelForCell = @"Address 2";
                break;
            case 2:
                labelForCell = @"State";
                break;
            case 3:
                labelForCell = @"District";
                break;
            case 4:
                labelForCell = @"City";
                break;
            case 5:
                labelForCell = @"ZIP";
                break;
            }
            
        }
        break;
        case 2:
            {
            switch (rowNumber)
                {
                case 0:
                    labelForCell = @"E-Mail ID";
                    break;
                case 1:
                    labelForCell = @"Mobile Number";
                    break;
                }
            }
            break;
        case 3:
            {
            switch (rowNumber)
            {
                case 0:
                    labelForCell = @"Referer's Name";
                    break;
                case 1:
                    labelForCell = @"Mobile Number";
                    break;
            }
            }
            break;
        default:
            break;
            
    }
    return labelForCell;
}

@end
