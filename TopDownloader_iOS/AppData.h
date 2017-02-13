#import <Foundation/Foundation.h>

@interface AppData : NSObject

-(id) initWithCategory:(NSString*)category andImage:(NSString*)image
               andName:(NSString*)name andSummary:(NSString*)summary;

-(NSString*)appCategory;
-(NSString*)appImage;
-(NSString*)appName;
-(NSString*)appSummary;
-(NSString*)toString;

@end
