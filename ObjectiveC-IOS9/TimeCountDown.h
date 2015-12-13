//
//  TimeCountDown.h
//  ObjectiveC-IOS9
//
//  Created by tho dang on 2015-12-13.
//  Copyright © 2015 Tho Dang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeCountDown : UIViewController {
    
    NSTimer *timer;
    int countInt;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

- (IBAction)startCountingAction:(id)sender;

- (IBAction)stopCountingAction:(id)sender;

@end
