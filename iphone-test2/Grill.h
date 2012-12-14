
#import <Foundation/Foundation.h>

@interface Grill : NSObject {
    
    UIImageView *grillImage;

    NSTimer *grillTimer;
    int time;
    
    
    
}

@property (strong, nonatomic) UIImageView *grillImage;
@property (strong, nonatomic) NSTimer *grillTimer;

@property int time;

@end
