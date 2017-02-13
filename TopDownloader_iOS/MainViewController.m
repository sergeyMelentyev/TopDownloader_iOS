#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    [self updateDataWithFeedType:TOP_FREE_APPS andLimit:SIZE_TEN];
}

-(void)updateDataWithFeedType:(NSString*)feed andLimit:(NSString*)limit {
    NSString *url = [[[ConstructFinalString alloc] initWithFeedType:feed andLlimit:limit] getUrl];
    GetRawData *rawData = [[GetRawData alloc] init];
    [rawData doInBackgroundWithString:url];
}

@end
