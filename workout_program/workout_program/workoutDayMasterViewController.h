//
//  workoutDayMasterViewController.h
//  workout_program
//
//  Created by raxit cholera on 9/22/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "workoutDayCell.h"

@interface workoutDayMasterViewController : UITableViewController
@property(weak,nonatomic) NSMutableArray *daysworkoutNameArray;
@property(weak,nonatomic) NSMutableArray *daysworkoutDetailArray;
@property (strong,nonatomic) NSString *NameofDay;
@property (strong, nonatomic) id detailItem;
@end
