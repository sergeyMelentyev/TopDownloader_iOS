#import <Foundation/Foundation.h>

@interface ConstructFinalString : NSObject

-(id) initWithFeedType:(NSString*)feed andLlimit:(NSString*)limit;
-(NSString*)getUrl;

@end
