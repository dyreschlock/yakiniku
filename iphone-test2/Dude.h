
#import <Foundation/Foundation.h>

#import "Grill.h"

@interface Dude : NSObject {
    
    UIImageView* imageView;
    NSString* foodType;
    
    NSTimer* timer;
    int time;
}

@property (strong, nonatomic) UIImageView* imageView;
@property (strong, nonatomic) NSString* foodType;
@property (strong, nonatomic) NSTimer* timer;

@property int time;

- (id) init:(UIImageView*)dudeImageView foodType:(NSString*)foodTypeName;

- (BOOL) canBeMovedTo:(Grill*) grill;

- (void) startTimer;

@end
