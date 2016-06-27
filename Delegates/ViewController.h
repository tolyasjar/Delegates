//
//  ViewController.h
//  Delegates
//
//  Created by Toleen Jaradat on 6/20/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToleenDelegate

-(void) textFieldDidEnterSSN:(int) numberString;

@end

@interface ViewController : UIViewController <UITextFieldDelegate,ToleenDelegate>
{
    int numberString;

}
@property (nonatomic,weak) id <ToleenDelegate> delegate;
@property (nonatomic,weak) IBOutlet UITextField *nameTextField;
@end

