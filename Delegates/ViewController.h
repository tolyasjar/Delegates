//
//  ViewController.h
//  Delegates
//
//  Created by Toleen Jaradat on 6/20/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextFieldDelegate

-(void) textFieldDidEnterSSN:(BOOL) on;

@end

@interface ViewController : UIViewController <UITextFieldDelegate,UITextFieldDelegate>

@property (nonatomic,weak) id <TextFieldDelegate> delegate;

@end

