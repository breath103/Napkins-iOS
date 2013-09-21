#import "RootViewController.h"
#import "User.h"
#import "IntroViewController.h"

@implementation RootViewController

- (id)init
{
    self = [super init];
    if (self) {
        _navigationController = [[UINavigationController alloc]init];
        [self addChildViewController:_navigationController];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor blueColor]];
    [[self view] addSubview:[_navigationController view]];
    
    if ([User currntUser]) {
     
    } else {
        IntroViewController *introViewController = [[IntroViewController alloc]init];
        [[self navigationController] pushViewController:introViewController animated:NO];
    }
}

@end
