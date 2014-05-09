//
//  SBstudentlistViewController.m
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import "SBstudentlistViewController.h"
#import "SBstudentmanagerViewController.h"
@interface SBstudentlistViewController ()

@end

@implementation SBstudentlistViewController
@synthesize stud;
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
    SBstudentmanagerViewController *s=[[SBstudentmanagerViewController alloc]init];
   
   stud=[[NSMutableArray alloc]initWithArray:[s displayList]];
  
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableViewCell *)tableView:(UITableView *)table cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier] ;
    }
    
    cell.textLabel.text = [stud objectAtIndex:indexPath.row];
 
      return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [stud count];
}

@end
