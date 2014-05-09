//
//  SBFirstViewViewController.m
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "SBFirstViewViewController.h"
#import "SBentryFormViewController.h"
#import "SBstudentlistViewController.h"
@interface SBFirstViewViewController ()
- (IBAction)displaybutton:(id)sender;

- (IBAction)addButton:(id)sender;
@end

@implementation SBFirstViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)displaybutton:(id)sender {
    SBstudentlistViewController *studentlist=[[SBstudentlistViewController alloc]initWithNibName:@"SBstudentlistViewController" bundle:nil];
    [self.navigationController pushViewController:studentlist animated:YES];
    
    
}

- (IBAction)addButton:(id)sender {
    
    SBentryFormViewController *entryForm=[[SBentryFormViewController alloc]initWithNibName:@"SBentryFormViewController" bundle:nil];
    [self.navigationController pushViewController:entryForm animated:YES];
    
    
}
@end
