//
//  WorkoutMasterViewController.h
//  workout_program
//
//  Created by raxit cholera on 9/21/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customCell.h"

@interface WorkoutMasterViewController : UITableViewController

@property(strong,nonatomic) NSMutableArray *daysArray;
@property(strong,nonatomic) NSMutableArray *Exercise1Array;
@property(strong,nonatomic) NSMutableArray *Exercise2Array;
@property(strong,nonatomic) NSMutableArray *Exercise1DetailArray;
@property(strong,nonatomic) NSMutableArray *Exercise2DetailArray;


@end
