#import "User.h"

User *currntUser;

@implementation User
+ (void)setCurrntUser:(User *)aCurrentUser
{
    currntUser = aCurrentUser;
}
+ (User *)currntUser
{
    return currntUser;
}
@end
