#import "ConstructFinalString.h"

@interface ConstructFinalString()
@property (nonatomic, strong) NSString* basicRssFeedUrl;
@property (nonatomic, strong) NSString* feedType;
@property (nonatomic, strong) NSString* feedLimit;
@property (nonatomic, strong) NSString* dataFormat;
@end

@implementation ConstructFinalString
-(id) initWithFeedType:(NSString*)feed andLlimit:(NSString*)limit {
    if (self == [super init]) {
        self.basicRssFeedUrl = @"https://itunes.apple.com/us/rss/";
        self.feedType = [NSString stringWithFormat:@"%@/", feed];
        self.feedLimit = [NSString stringWithFormat:@"limit=%@/", limit];
        self.dataFormat = @"json";
    }
    return self;
}

-(NSString*)getUrl {
    NSString *finalUrl = [NSString
                          stringWithFormat:@"%@%@%@%@", self.basicRssFeedUrl, self.feedType,
                            self.feedLimit, self.dataFormat];
    return finalUrl;
}
@end
