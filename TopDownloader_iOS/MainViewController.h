#import <UIKit/UIKit.h>
#import "ConstructFinalString.h"
#import "FeedType.h"
#import "GetRawData.h"

@interface MainViewController : UIViewController

-(void)updateDataWithFeedType:(NSString*)feed andLimit:(NSString*)limit;

@end
