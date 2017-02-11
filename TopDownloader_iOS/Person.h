#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *privateField; // private instance variable
}

@property (nonatomic, strong) NSString *publicField;    // public property attr

-(NSString*) privateField;  // custom getter method for private instance var
-(void) setPrivateField:(NSString*)name;    // custom setter method for privat instance var

@end
