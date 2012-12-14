
#import <Foundation/Foundation.h>

#import "Food.h"

@interface Grill : NSObject {
    
    UIImageView* imageView;
    NSString* foodType;
    
    NSTimer* timer;
    int time;
    
    CGPoint startPoint;
    
    int chippedState;
}

@property (strong, nonatomic) UIImageView* imageView;
@property (strong, nonatomic) NSString* foodType;

@property (strong, nonatomic) NSTimer* timer;
@property int time;

@property CGPoint startPoint;

@property int chippedState;

- (id) init:(UIImageView*) grillImage;

- (void) startTimer:(Food*) food;

- (BOOL) canBeMovedFrom:(CGPoint)touchPoint;
- (BOOL) canBeMovedTo:(CGPoint)touchPoint;

- (void) completeCook;
- (void) resetPosition;

- (BOOL) isTouchingAndBurned:(CGPoint)touchPoint;
- (void) chip;

@end
