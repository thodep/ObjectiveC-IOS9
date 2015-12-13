//
//  TimeCountDown.m
//  ObjectiveC-IOS9
//
//  Created by tho dang on 2015-12-13.
//  Copyright © 2015 Tho Dang. All rights reserved.
//

#import "TimeCountDown.h"

@interface TimeCountDown ()

@end

@implementation TimeCountDown

- (void)viewDidLoad {
    [super viewDidLoad];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

-(void)updateTimer {
    //Check Current Time
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm:ss"];
    self.timeLabel2.text = [formatter stringFromDate:[NSDate date]];
    //Check Current Date
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc]init];
    [formatter2 setDateFormat:@"YYYY-MM-dd"];
    self.dateLabel.text = [formatter2 stringFromDate:[NSDate date]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startCountingAction:(id)sender {
    countInt = 0;
    self.timeLabel.text = [NSString stringWithFormat:@"%i %i",countInt ,countInt];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countTimer) userInfo:nil repeats:YES];
}

- (IBAction)stopCountingAction:(id)sender {
    // Stop timer 
    [timer invalidate];
    
}
-(void)countTimer{
    countInt +=1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i",countInt];

}

@end
