
#import "Grill.h"

@implementation Grill

@synthesize imageView;
@synthesize grillTimer;
@synthesize time;
@synthesize foodType;

@synthesize startPoint;

- (id) init:(UIImageView *)grillImage {
    
    self = [super init];
    
    if(self) {
        imageView = grillImage;
        startPoint = imageView.center;
    }
    
    return self;
}

- (void) startTimer:(Food*) food {
    
    imageView.image = food.imageView.image;
    foodType = food.foodType;
    
    time = 20;
    grillTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill) userInfo:nil repeats:YES];
    
}

- (void) updateGrill {
    
    //    
    //    time = time - 1;
    //    
    //    if(time == 17)
    //    {
    //        if(grillImage.image == steak.image)
    //        {
    //            
    //        }
    //        
    //        grillImage1.image = [UIImage imageNamed:@"steak_2_cooking.png"];
    //        
    //    }
    //    if(time == 13)
    //    {
    //        
    //    }
    //    if(time == 10)
    //    {
    //        
    //    }
    //    if(time == 5)
    //    {
    //        
    //    }
    //    if(time == 0)
    //    {
    //        
    //    }


    [grillTimer invalidate];
}

- (BOOL) canBeMovedFrom:(CGPoint)touchPoint {
    
    return imageView.image != nil &&
            touchPoint.x > imageView.frame.origin.x &&
            touchPoint.x < (imageView.frame.origin.x + imageView.frame.size.width) &&
            touchPoint.y > imageView.frame.origin.y &&
            touchPoint.y < (imageView.frame.origin.y + imageView.frame.size.height);
}

- (BOOL) canBeMovedTo:(CGPoint)touchPoint {
    
    return imageView.image == nil &&
            touchPoint.x > imageView.frame.origin.x &&
            touchPoint.x < (imageView.frame.origin.x + imageView.frame.size.width) &&
            touchPoint.y > imageView.frame.origin.y &&
            touchPoint.y < (imageView.frame.origin.y + imageView.frame.size.height);
}

- (void) returnToStart {
    
    imageView.center = startPoint;
}


@end
