#import "RootViewController.h"
#import "User.h"
#import "IntroViewController.h"

@implementation RootViewController

- (id)init
{
    self = [super init];
    if (self) {
        _navigationController = [[UINavigationController alloc]init];
        [_navigationController setNavigationBarHidden:YES];
        [self addChildViewController:_navigationController];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor blueColor]];
    [[self view] addSubview:[_navigationController view]];
    [[_navigationController view] setFrame:[[self view] bounds]];
    
    if ([User currntUser]) {
     
    } else {
        IntroViewController *introViewController = [[IntroViewController alloc]init];
        [_navigationController setViewControllers:@[introViewController]];
    }
}

@end
