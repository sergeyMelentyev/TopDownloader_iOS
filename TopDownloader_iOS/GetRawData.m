#import "GetRawData.h"

@interface GetRawData()

@end

@implementation GetRawData

-(void)doInBackgroundWithString:(NSString*)string {
    // getting raw str from ViewController as an argument
    // downloade data from url using GCD
    // instansiate GetAppsDataFromRawData
    // pass string json as a parameter
    // get back NSArray of type AppData
    // call the callBack method from ViewController and pass NSArray with AppData objects
    
    NSURLSession *aSession = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[aSession dataTaskWithURL:[NSURL URLWithString:string] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (((NSHTTPURLResponse *)response).statusCode == 200)
            if (data) {
                NSString *cont = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                GetAppsDataFromRawData *getRawData = [[GetAppsDataFromRawData alloc] init];
                NSArray *arrOfAppDataObjs = [getRawData parseRawDataToJson:cont];
                NSLog(@"%@", arrOfAppDataObjs);
            }
    }] resume];
}

@end
