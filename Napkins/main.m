#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
//        if (strlen(getenv("IS_TESTING")) == 1) {
//            return UIApplicationMain(argc, argv, nil, @"CedarApplicationDelegate");
//        } else {
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//        }
    }
}
