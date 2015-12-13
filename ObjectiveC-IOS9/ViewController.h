//
//  ViewController.h
//  ObjectiveC-IOS9
//
//  Created by tho dang on 2015-12-12.
//  Copyright © 2015 Tho Dang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *mylabel;

@property (weak, nonatomic) IBOutlet UITextField *mytextField;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)setColorAction:(id)sender;
- (IBAction)setSizeAction:(id)sender;

- (IBAction)setShadowAction:(id)sender;
- (IBAction)alignLeftAction:(id)sender;
- (IBAction)alignRightAction:(id)sender;

- (IBAction)alightCenterAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *textLabel;


@end

