#import <Foundation/Foundation.h>

@interface GetAppsDataFromRawData : NSObject

-(id)init;
-(NSArray*)parseRawDataToJson:(NSString*)str;

@end
