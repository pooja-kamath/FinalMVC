//
//  SBstudentmanagerViewController.h
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBentryFormViewController.h"
@interface SBstudentmanagerViewController : UIViewController <entryFormDelegate>

+ (id)sharedManager;

-(NSMutableArray *)displayList;
@end
