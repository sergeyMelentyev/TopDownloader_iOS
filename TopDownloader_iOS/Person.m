#import "Person.h"

@interface Person()
@end

@implementation Person

-(NSString*) privateField {
    return privateField;
}

-(void) setPrivateField:(NSString*)name {
    privateField = name;    // access to private instance var
}
-(void) anyMethodName:(NSString*)name {
    self.publicField = name;    // access to public prop attr
    _publicField = name;    // access to public prop attr (auto created insctance var name)
}

@end
