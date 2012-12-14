
#import "Food.h"

@implementation Food

@synthesize imageView;
@synthesize foodType;

@synthesize startPoint;

- (id) init:(UIImageView *)foodImageView foodType:(NSString *)foodName {
    
    self = [super init];
    
    if(self) {
        
        imageView = foodImageView;
        foodType = foodName;
        
        startPoint = imageView.center;
    }
    
    return self;
}

- (BOOL) isTouching:(CGPoint)touchPoint {
    
    return touchPoint.x > imageView.frame.origin.x &&
            touchPoint.x < (imageView.frame.origin.x + imageView.frame.size.width) &&
            touchPoint.y > imageView.frame.origin.y &&
            touchPoint.y < (imageView.frame.origin.y + imageView.frame.size.height);
}

- (void) reset {
    
    imageView.center = startPoint;
}

@end
