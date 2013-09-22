//
//  customCell.h
//  workout_program
//
//  Created by raxit cholera on 9/21/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblDayName;
@property (weak, nonatomic) IBOutlet UILabel *lblExercise1Name;
@property (weak, nonatomic) IBOutlet UILabel *lblExercise2Name;
@property (weak, nonatomic) IBOutlet UILabel *lblExercise1Details;
@property (weak, nonatomic) IBOutlet UILabel *lblExercies2Details;

@end
