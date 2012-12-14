
#import "Grill.h"

@implementation Grill

@synthesize imageView;
@synthesize foodType;

@synthesize timer;
@synthesize time;

@synthesize startPoint;

@synthesize chippedState;

- (id) init:(UIImageView *)grillImage {
    
    self = [super init];
    
    if(self) {
        imageView = grillImage;
        startPoint = imageView.center;
        chippedState = 0;
    }
    
    return self;
}

- (void) startTimer:(Food*) food {
    
    imageView.image = food.imageView.image;
    foodType = food.foodType;
    
    time = 14;
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateGrill) userInfo:nil repeats:YES];
    
    chippedState = 0;
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

        [timer invalidate];
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
    
    [timer invalidate];
    
    time = 0;
}

- (BOOL) isTouchingAndBurned:(CGPoint)touchPoint {
    
    return time == 0 && imageView.image != nil &&
            touchPoint.x > imageView.frame.origin.x &&
            touchPoint.x < (imageView.frame.origin.x + imageView.frame.size.width) &&
            touchPoint.y > imageView.frame.origin.y &&
            touchPoint.y < (imageView.frame.origin.y + imageView.frame.size.height);
}

- (void) chip {
    
    chippedState = chippedState + 1;
    
    if(chippedState == 1)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_7_chipped.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_7_chipped.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_7_chipped.png"];
        }
    }
    if(chippedState == 2)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"turnip_8_chipped.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"chicken_8_chipped.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"steak_8_chipped.png"];
        }
    }
    if(chippedState == 3)
    {
        imageView.image = nil;
        chippedState = 0;
    }
    
}


@end
