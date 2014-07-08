//
//  HomeViewController.m
//  tumblr
//
//  Created by Gabriel Valdivia on 7/6/14.
//  Copyright (c) 2014 Gabriel Valdivia. All rights reserved.
//

#import "HomeViewController.h"

#define M_PI   3.14159265358979323846264338327950288   /* pi */

#define DEGREES_TO_RADIANS(angle) (angle / 180.0 * M_PI)

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tooltip;
@property (weak, nonatomic) IBOutlet UIImageView *rays;

@end

@implementation HomeViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    
    
    [UIView animateWithDuration:0.8 delay:0 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat animations:^{
        [UIView setAnimationRepeatAutoreverses:YES];
        
        self.tooltip.center = CGPointMake(self.tooltip.center.x, self.tooltip.center.y + -5);
        
    } completion:nil];
    
    
    [UIView animateWithDuration:0.8 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat animations:^{
        [UIView setAnimationRepeatCount:INFINITY];
        
        self.rays.transform = CGAffineTransformMakeRotation(DEGREES_TO_RADIANS(15));
        
    } completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
