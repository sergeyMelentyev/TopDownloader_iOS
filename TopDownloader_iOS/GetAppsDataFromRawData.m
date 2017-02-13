#import "GetAppsDataFromRawData.h"

@interface GetAppsDataFromRawData()

@property(nonatomic, strong) NSMutableArray* mutableArrayProp;

@end

@implementation GetAppsDataFromRawData

-(id)init {
    if (self == [super init]) {
        self.mutableArrayProp = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSArray*)parseRawDataToJson:(NSString*)str {
    // get json str as an argument
    // parse json str using GCD
    // create AppData instances for each json object
    // add objects to NSMutableArray prop attr
    // return NSArray of type AppData
    
    
    
    return [self.mutableArrayProp mutableCopy];
}

@end
