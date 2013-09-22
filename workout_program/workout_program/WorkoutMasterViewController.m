//
//  WorkoutMasterViewController.m
//  workout_program
//
//  Created by raxit cholera on 9/21/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import "WorkoutMasterViewController.h"
#import "workoutDayMasterViewController.h"

@interface WorkoutMasterViewController ()

@end

@implementation WorkoutMasterViewController

@synthesize daysArray;
@synthesize Exercise1Array;
@synthesize Exercise1DetailArray;
@synthesize Exercise2Array;
@synthesize Exercise2DetailArray;

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
    self.daysArray = [NSMutableArray arrayWithObjects:@"Monday",@"Tuesday",@"Wednesday", @"Thursday",@"Friday",@"Saturday",@"Sunday", nil];
    self.Exercise1Array = [NSMutableArray arrayWithObjects:@"Cardio",@"Bicycle",@"Push-ups", @"Pull-ups",@"Sprint",@"Cardio",@"Rest", nil];
    self.Exercise1DetailArray = [NSMutableArray arrayWithObjects:@"10 Min",@"20 Min",@"15 X 2", @"15 X 2",@"5 Min",@"20 Min",@" ", nil];
    self.Exercise2Array = [NSMutableArray arrayWithObjects:@"Chest",@"Back",@"Legs", @"Biceps",@"Triceps",@"Abs",@" ", nil];
    self.Exercise2DetailArray = [NSMutableArray arrayWithObjects:@"10 X 4",@"10 X 4",@"10 X 4", @"10 X 4",@"10 X 4",@"10 X 4",@" ", nil];
    
    //The following code will take effect on its own when we have a nevigation happening 
    self.title = @"Abit Workout Program";
    
    //UINavigationItem* item =[[UINavigationItem alloc] initWithTitle:@"Abit Workout Program"];
    
    //self.navigationItem.title=@"Abit Workout Program";

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

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.daysArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
       
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.lblDayName.text = [NSString stringWithFormat:@"%@", [self.daysArray objectAtIndex:indexPath.row]];
    cell.lblExercise1Name.text = [NSString stringWithFormat:@"%@", [self.Exercise1Array objectAtIndex:indexPath.row]];
    cell.lblExercise2Name.text = [NSString stringWithFormat:@"%@", [self.Exercise2Array objectAtIndex:indexPath.row]];
    cell.lblExercise1Details.text = [NSString stringWithFormat:@"%@", [self.Exercise1DetailArray objectAtIndex:indexPath.row]];
    cell.lblExercies2Details.text = [NSString stringWithFormat:@"%@", [self.Exercise2DetailArray objectAtIndex:indexPath.row]];
    
    
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

#pragma mark - Table view delegate
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    / *
     DetailViewController *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     * /
    workoutDayMasterViewController *detailViewController = [[workoutDayMasterViewController alloc]initWithNibName:@"workoutDayDetails" bundle:nil];
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    workoutDayMasterViewController *SettingControler =[[workoutDayMasterViewController alloc]init];
    
    SettingControler =[segue destinationViewController];
    
}

@end
