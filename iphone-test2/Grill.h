
#import <Foundation/Foundation.h>

#import "Food.h"

@interface Grill : NSObject {
    
    UIImageView* imageView;
    NSString* foodType;
    
    NSTimer* timer;
    int time;
    
    CGPoint startPoint;
}

@property (strong, nonatomic) UIImageView* imageView;
@property (strong, nonatomic) NSString* foodType;

@property (strong, nonatomic) NSTimer* timer;
@property int time;

@property CGPoint startPoint;

- (id) init:(UIImageView*) grillImage;

- (void) startTimer:(Food*) food;

- (BOOL) canBeMovedFrom:(CGPoint)touchPoint;
- (BOOL) canBeMovedTo:(CGPoint)touchPoint;

- (void) reset;

@end
