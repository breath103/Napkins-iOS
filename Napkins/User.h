#import <Foundation/Foundation.h>

@interface User : NSObject
+ (void)setCurrntUser:(User *)aCurrentUser;
+ (User *)currntUser;
@end
