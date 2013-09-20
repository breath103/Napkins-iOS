#import "AppDelegate.h"
#import "RootViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(AppDelegateSpec)

describe(@"AppDelegate", ^{
    __block AppDelegate *appDelegate;
    __block UIApplication *application;

    beforeEach(^{
        appDelegate = [[AppDelegate alloc]init];
        application = nice_fake_for([UIApplication class]);
    });
    it(@"should be initialized", ^{
        appDelegate should be_instance_of([AppDelegate class]);
    });
    
    describe(@"didFinishLaunchingWithOptions", ^{
        subjectAction(^{
            [appDelegate application:application
       didFinishLaunchingWithOptions:@{}];
        });
        it(@"should set rootViewController", ^{
            RootViewController *rootViewController = (id)[[appDelegate window] rootViewController];
            rootViewController should be_instance_of([RootViewController class]);
        });
    });
});

SPEC_END
