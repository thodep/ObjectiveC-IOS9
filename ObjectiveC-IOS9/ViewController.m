//
//  ViewController.m
//  ObjectiveC-IOS9
//
//  Created by tho dang on 2015-12-12.
//  Copyright © 2015 Tho Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Change label to custom Font
    self.mylabel.font = [UIFont fontWithName:@"BebasNeue" size:20];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    self.mylabel.text =  self.mytextField.text;
    [self resignFirstResponder];
}

- (IBAction)setColorAction:(id)sender {
    self.textLabel.textColor = [UIColor redColor];
}

- (IBAction)setSizeAction:(id)sender {
    [self.textLabel  setFont:[UIFont fontWithName:@"Verdana" size:25]];
}

- (IBAction)setShadowAction:(id)sender {
    self.textLabel.layer.shadowColor = [[UIColor blueColor]CGColor] ;
    self.textLabel.layer.shadowOpacity = 0.5;
    self.textLabel.layer.shadowRadius = 1.0f ;
    self.textLabel.layer.shadowOffset = CGSizeMake(0, 2);
    
}

- (IBAction)alignLeftAction:(id)sender {
    self.textLabel.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)alignRightAction:(id)sender {
    self.textLabel.textAlignment = NSTextAlignmentRight;
}

- (IBAction)alightCenterAction:(id)sender {
    self.textLabel.textAlignment = NSTextAlignmentCenter;
}
@end
