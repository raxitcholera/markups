//
//  customCell.m
//  workout_program
//
//  Created by raxit cholera on 9/21/13.
//  Copyright (c) 2013 raxit cholera. All rights reserved.
//

#import "customCell.h"

@implementation customCell
@synthesize lblDayName;
@synthesize lblExercies2Details;
@synthesize lblExercise1Details;
@synthesize lblExercise1Name;
@synthesize lblExercise2Name;

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
