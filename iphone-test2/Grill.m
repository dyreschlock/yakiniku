
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
    
    time = 14;
    grillTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill) userInfo:nil repeats:YES];
    
}

- (void) updateGrill {
    
    time = time -1;
    
    if(time == 12)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_2_cooking.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_2_cooking.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_2_cooking.png"];
        }
    }
    if(time == 10)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_3_cooking.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_3_cooking.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_3_cooking.png"];
        }
    }
    if(time == 8)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_4_done.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_4_done.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_4_done.png"];
        }
    }
    if(time == 4)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_5_burning.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_5_burning.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_5_burning.png"];
        }
    }
    if(time == 0)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_6_burnt.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_6_burnt.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_6_burnt.png"];
        }

        [grillTimer invalidate];
    }
}

- (BOOL) canBeMovedFrom:(CGPoint)touchPoint {
    
    return imageView.image != nil &&
            time > 0 && time <= 8 &&
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

- (void) reset {
    
    imageView.center = startPoint;
    
    [grillTimer invalidate];
    
    time = 0;
}


@end
