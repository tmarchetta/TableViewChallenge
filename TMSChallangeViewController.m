//
//  TMSChallangeViewController.m
//  TableView Challenge
//
//  Created by Theresa Marchetta on 10/25/13.
//  Copyright (c) 2013 Theresa Marchetta Studio. All rights reserved.
//

#import "TMSChallangeViewController.h"

@interface TMSChallangeViewController ()

@end

@implementation TMSChallangeViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //Problem 4: Adjust the data source methods numberOfSectionsInTableView: and numberOfRowsInSection:. The TableView should display three sections:
        //Section 0 should have 2 rows
        //Section 1 should have 1 row
        //Section 2 should have 3 rows
    
   if (section == 0) return 2;
   else if (section == 1) return 1;
   else if (section == 2) return 3;
   else return 0;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //Section 1's cells should display the text “I am in section 0”.
    //Section 2's cells should display “another section”.
    //Section 3's cells  should display the word cell and the current row number. Use a format string and pass in NSIndexPath’s property row.
    //Extra Credit: Update the cell’s textColor for section 1 to be red, the cells in section 2 should be blue, and cells in section 3 should be yellow.

    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (indexPath.section ==0){
        cell.textLabel.text = [NSString stringWithFormat: @"I am in section %i", indexPath.section];
        cell.textLabel.textColor = [UIColor redColor];
        }
    if (indexPath.section == 1){
        cell.textLabel.text = [NSString stringWithFormat:@"another section"];
        cell.textLabel.textColor = [UIColor blueColor];
        }
    if (indexPath.section == 2){
        cell.textLabel.text = [NSString stringWithFormat:@"cell %i", indexPath.row];
        cell.textLabel.textColor = [UIColor yellowColor];
        }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
