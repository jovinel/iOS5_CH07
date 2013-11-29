//
//  BIDDatePickerViewController.m
//  Pickers
//
//  Created by Maria Alice C. Lim on 11/29/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDDatePickerViewController.h"

@implementation BIDDatePickerViewController
@synthesize datePicker;

- (IBAction)buttonPressed {
    NSDate *selected = [datePicker date];
    NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is: %@", selected];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date and Time Selected" message: message delegate: nil cancelButtonTitle:@"Yes, I did." otherButtonTitles:nil];
    [alert show];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSDate *now = [NSDate date];
    [datePicker setDate:now animated:NO];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    self.datePicker = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
