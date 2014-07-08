//
//  TabBarViewController.m
//  tumblr
//
//  Created by Gabriel Valdivia on 7/6/14.
//  Copyright (c) 2014 Gabriel Valdivia. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "ExploreViewController.h"
#import "ComposerViewController.h"
#import "ProfileViewController.h"
#import "TrendingViewController.h"

@interface TabBarViewController ()

@property (nonatomic, strong) HomeViewController * homeViewController;
@property (nonatomic, strong) ExploreViewController * exploreViewController;
@property (nonatomic, strong) ComposerViewController * composerViewController;
@property (nonatomic, strong) ProfileViewController * profileViewController;
@property (nonatomic, strong) TrendingViewController * trendingViewController;
@property (weak, nonatomic) IBOutlet UIView *contentView;
- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposerButton:(id)sender;
- (IBAction)onProfileButton:(id)sender;
- (IBAction)onTrendingButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
@property (weak, nonatomic) IBOutlet UIButton *profileButton;
@property (weak, nonatomic) IBOutlet UIButton *trendingButton;

@end

@implementation TabBarViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.homeViewController = [[HomeViewController alloc] init];
        self.exploreViewController = [[ExploreViewController alloc] init];
        self.composerViewController = [[ComposerViewController alloc] init];
        self.profileViewController = [[ProfileViewController alloc] init];
        self.trendingViewController = [[TrendingViewController alloc] init];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [self onHomeButton:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onHomeButton:(id)sender {
    self.homeViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.homeViewController.view];
}

- (IBAction)onSearchButton:(id)sender {
    self.exploreViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.exploreViewController.view];
}

- (IBAction)onComposerButton:(id)sender {
    self.composerViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.composerViewController.view];
}

- (IBAction)onProfileButton:(id)sender {
    self.profileViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.profileViewController.view];
}

- (IBAction)onTrendingButton:(id)sender {
    self.trendingViewController.view.frame = self.contentView.frame;
    [self.contentView addSubview:self.trendingViewController.view];
}
@end
