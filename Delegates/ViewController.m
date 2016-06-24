//
//  ViewController.m
//  Delegates
//
//  Created by Toleen Jaradat on 6/20/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UISwitch *beginEditingSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *endEditingSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *changeCharactersInRange;
@property (nonatomic,weak) IBOutlet UISwitch *clearSwitch;
@property (nonatomic,weak) IBOutlet UISwitch *returnSwitch;
@property (nonatomic,weak) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameTextField.delegate = self;
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if ([_beginEditingSwitch isOn])
    { NSLog(@"textFieldShouldBeginEditing"); }
    
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    
    if ([_endEditingSwitch isOn])
    { NSLog(@"textFieldShouldEndEditing");
    
    [self.delegate textFieldDidEnterSSN:YES];
    }
    
    
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if ([_changeCharactersInRange isOn])
    { NSLog(@"textFieldshouldChangeCharactersInRange"); }
    
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    
    if ([_clearSwitch isOn])
    { NSLog(@"textFieldShouldClear");
        return YES;}
    else return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if ([_returnSwitch isOn])
    { NSLog(@"textFieldShouldReturn");

    [textField resignFirstResponder];
    }
    
    return YES;
}

- (void) textFieldDidEnterSSN:(BOOL)on {
    
    NSLog(@"Print to screen SSN");
}

@end
