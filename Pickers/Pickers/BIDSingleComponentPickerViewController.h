//
//  BIDSingleComponentPickerViewController.h
//  Pickers
//
//  Created by Maria Alice C. Lim on 11/29/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSingleComponentPickerViewController : UIViewController 
    <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView *singlePicker;
@property (strong, nonatomic) NSArray *pickerData;
- (IBAction)buttonPressed;

@end
