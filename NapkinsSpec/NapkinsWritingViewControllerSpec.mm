#import "NapkinsWritingViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(NapkinsWritingViewControllerSpec)



describe(@"NapkinsWritingViewController", ^{
    __block NapkinsWritingViewController *controller;

    beforeEach(^{
    });
    
    describe(@"init", ^{
        subjectAction(^{
            controller = [[NapkinsWritingViewController alloc]init];
            controller.view = controller.view;
        });
        it(@"should exist", ^{
            controller should be_instance_of([NapkinsWritingViewController class]);
        });
    });
});

SPEC_END
