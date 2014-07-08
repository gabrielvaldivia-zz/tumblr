//
//  ExploreViewController.m
//  tumblr
//
//  Created by Gabriel Valdivia on 7/6/14.
//  Copyright (c) 2014 Gabriel Valdivia. All rights reserved.
//

#import "ExploreViewController.h"

@interface ExploreViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *trendingScrollView;

@end

@implementation ExploreViewController

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
    
    
    self.trendingScrollView.contentSize = CGSizeMake(320, 2217);
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
