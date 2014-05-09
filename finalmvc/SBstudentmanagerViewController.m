//
//  SBstudentmanagerViewController.m
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "SBstudentmanagerViewController.h"
#import "SBStudent.h"
#import "SBentryFormViewController.h"
@interface SBstudentmanagerViewController ()

@end
NSMutableArray  *studentArray;
@implementation SBstudentmanagerViewController
+ (id)sharedManager {
    static SBstudentmanagerViewController *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
            studentArray=[[NSMutableArray alloc]init];
        
    });
    return sharedMyManager;
}

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
    // Do any additional setup after loading the view.
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addStudentwithId:(NSString *)studentId withName:(NSString*)name withAge:(NSNumber *)age withClass:(NSNumber *)clss andAddress:(NSString*)address
{
    NSLog(@"indelegate");
    SBStudent *s=[[SBStudent alloc]init];
    s.studentId=studentId;
    s.studentName=name;
    s.studentAge=age;
    s.studentClass=clss;
    s.studentAddress=address;
    NSLog(@"%@",s.studentName);
   [studentArray addObject:s];
    
    for(int i=0;i<1;i++)
    {
        NSString *names=@"";
        SBStudent *s1=[studentArray objectAtIndex:0];
        names=s1.studentName;
        NSLog(@"the name is %@",s1.studentName);
    }
    
    
}
-(NSMutableArray *)displayList
{
    
    NSMutableArray  *namesList=[[NSMutableArray alloc]init];
    for(int i=0;i<1;i++)
    {
        NSString *names=@"";
        SBStudent *s1=[studentArray objectAtIndex:0];
        names=s1.studentName;
        NSLog(@"the name is %@",s1.studentName);
        [namesList insertObject:names atIndex:i];
        
    }
    return namesList;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
