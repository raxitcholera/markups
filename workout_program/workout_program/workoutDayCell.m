//
//  workoutDayCell.m
//  workout_program
//
//  Created by raxit cholera on 9/22/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import "workoutDayCell.h"

@implementation workoutDayCell

@synthesize workoutDetail;
@synthesize workoutName;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
} 

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
