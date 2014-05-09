//
//  SBentryFormViewController.h
//  mvc
//
//  Created by Pooja Kamath on 09/05/14.
//  Copyright (c) 2014 Pooja Kamath. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol entryFormDelegate

-(void)addStudentwithId:(NSString *)studentId withName:(NSString*)name withAge:(NSNumber *)age withClass:(NSNumber *)clss andAddress:(NSString*)address;


@end
@interface SBentryFormViewController : UIViewController
@property (nonatomic,assign) id  delegate;
@end
