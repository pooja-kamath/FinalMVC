//
//  SBentryFormViewController.m
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "SBentryFormViewController.h"
#import "SBstudentmanagerViewController.h"
@interface SBentryFormViewController ()
@property (weak, nonatomic) IBOutlet UITextField *studentId;
@property (weak, nonatomic) IBOutlet UITextField *studentName;
@property (weak, nonatomic) IBOutlet UITextField *studentAge;
@property (weak, nonatomic) IBOutlet UITextField *studentClass;
@property (weak, nonatomic) IBOutlet UITextField *studentAddress;
- (IBAction)addDetails:(id)sender;

@end

@implementation SBentryFormViewController
@synthesize delegate;
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
   SBstudentmanagerViewController *sharedManager = [SBstudentmanagerViewController sharedManager];
    delegate=sharedManager;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addDetails:(id)sender {
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
   [f setNumberStyle:NSNumberFormatterDecimalStyle];

    NSString *studentid=_studentId.text;
    NSString *name=_studentName.text;
    NSNumber *age=[f numberFromString:_studentAge.text];
    NSNumber *clss=[f numberFromString:_studentClass.text];
    NSString *address=_studentAddress.text;
    
    NSLog(@"calling delegate");
    [delegate addStudentwithId:studentid withName:name withAge:age withClass:clss
                    andAddress:address];
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
