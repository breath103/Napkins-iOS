#import "RootViewController.h"
#import "User.h"
#import "IntroViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(RootViewControllerSpec)

describe(@"RootViewController", ^{
    __block RootViewController *controller;

    beforeEach(^{
        controller = [[RootViewController alloc]init];
        controller.view = controller.view;
    });
    
    describe(@"init", ^{
        it(@"should exist", ^{
            controller should be_instance_of([RootViewController class]);
        });
        it(@"should have navigationController", ^{
            UINavigationController *navigationController = [controller navigationController];
            navigationController should be_instance_of([UINavigationController class]);
            [[navigationController view] superview] should equal([controller view]);
            [navigationController parentViewController] should equal(controller);
        });
    });
    
    describe(@"Set First View", ^{
        context(@"if user first launch the app", ^{
            beforeEach(^{
                [User setCurrntUser:nil];
            });
            it(@"should show intro view controller", ^{
                UINavigationController *navigationController = [controller navigationController];
                IntroViewController *introViewController = (id)[navigationController topViewController];
                introViewController should be_instance_of([IntroViewController class]);
            });
        });
        
        context(@"if user is returning user", ^{
            beforeEach(^{
                [User setCurrntUser:[[User alloc]init]];
            });
            it(@"should show Main View Controller", ^{
//                UINavigationController *navigationController = [controller navigationController];
//                IntroViewController *introViewController = (id)[navigationController topViewController];
//                introViewController should_not be_instance_of([IntroViewController class]);
            });
        });
    });
});

SPEC_END
