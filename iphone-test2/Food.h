
#import <Foundation/Foundation.h>

@interface Food : NSObject {
    
    UIImageView* imageView;
    NSString* foodType;
    
    CGPoint startPoint;
}

@property (strong, nonatomic) UIImageView* imageView;
@property (strong, nonatomic) NSString* foodType;

@property CGPoint startPoint;

- (id) init:(UIImageView*)foodImageView foodType:(NSString*)foodName;

- (BOOL) isTouching:(CGPoint)touchPoint;

- (void) resetPosition;

@end
