
#import <Foundation/Foundation.h>

#import "Food.h"

@interface Grill : NSObject {
    
    UIImageView *imageView;

    NSTimer *grillTimer;
    int time;
    
    NSString *foodType;
    
    CGPoint startPoint;
}

@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) NSTimer *grillTimer;

@property int time;

@property (strong, nonatomic) NSString *foodType;

@property CGPoint startPoint;

- (id) init:(UIImageView*) grillImage;

- (void) startTimer:(Food*) food;

- (BOOL) canBeMovedFrom:(CGPoint)touchPoint;
- (BOOL) canBeMovedTo:(CGPoint)touchPoint;

- (void) returnToStart;

@end
