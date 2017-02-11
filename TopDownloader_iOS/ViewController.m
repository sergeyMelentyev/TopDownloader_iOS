#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    [person setPrivateField:@"Private"];    // call to custom implemented setter of privat instance var
    [person setPublicField:@"Public"];  // call to auto implemented setter of public prop attr
    
}

@end
