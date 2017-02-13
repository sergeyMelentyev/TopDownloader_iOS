#import "AppData.h"

@interface AppData()

@property(nonatomic, strong) NSString *appCategory;
@property(nonatomic, strong) NSString *appImage;
@property(nonatomic, strong) NSString *appName;
@property(nonatomic, strong) NSString *appSummary;

@end

@implementation AppData

-(id) initWithCategory:(NSString*)category andImage:(NSString*)image
               andName:(NSString*)name andSummary:(NSString*)summary {
    if (self == [super init]) {
        self.appCategory = category;
        self.appImage = image;
        self.appName = name;
        self.appSummary = summary;
    }
    return self;
}

-(NSString*)appCategory { return self.appCategory; }
-(NSString*)appImage { return self.appImage; }
-(NSString*)appName { return self.appName; }
-(NSString*)appSummary { return self.appSummary; }
-(NSString*)toString { return [[NSString alloc]initWithFormat:@"%@", self.appName]; }

@end
