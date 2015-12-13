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
    // Do any additional setup after loading the view.
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
