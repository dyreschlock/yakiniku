
#import "Dude.h"

@implementation Dude

@synthesize imageView;
@synthesize foodType;

@synthesize timer;
@synthesize time;

- (id) init:(UIImageView *)dudeImageView foodType:(NSString *)foodTypeName {
    
    self = [super init];
    
    if(self) {
        
        imageView = dudeImageView;
        foodType = foodTypeName;
        
        time = 0;
    }
    
    return self;
}

- (BOOL) canBeMovedTo:(Grill*)grill {
    
    CGPoint touchPoint = grill.imageView.center;
    
    BOOL sameFood = [grill.foodType isEqualToString:foodType];
    
    return sameFood &&
            time == 0 &&
            touchPoint.x > imageView.frame.origin.x &&
            touchPoint.x < (imageView.frame.origin.x + imageView.frame.size.width) &&
            touchPoint.y > imageView.frame.origin.y &&
            touchPoint.y < (imageView.frame.origin.y + imageView.frame.size.height);
}

- (void) startTimer {
    
    time = 15;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateDude) userInfo:nil repeats:YES];
    
    if(foodType == @"turnip")
    {
        imageView.image = [UIImage imageNamed:@"dude_turnip_eating_1.png"];
    }
    if(foodType == @"chicken")
    {
        imageView.image = [UIImage imageNamed:@"dude_chicken_eating_1.png"];
    }
    if(foodType == @"steak")
    {
        imageView.image = [UIImage imageNamed:@"dude_steak_eating_1.png"];
    }
}

- (void) updateDude {
    
    time = time - 1;
    
    if(time == 20 || time == 19 || time == 17 || 
       time == 15 || time == 14 || time == 12 ||
       time == 10 || time == 9 || time == 7 ||
       time == 5 || time == 4 || time == 2)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"dude_turnip_eating_1.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"dude_chicken_eating_1.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"dude_steak_eating_1.png"];
        }
    }
    if(time == 18 || time == 16 ||
       time == 13 || time == 11 ||
       time == 8 || time == 6 ||
       time == 3 || time == 1)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"dude_turnip_eating_2.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"dude_chicken_eating_2.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"dude_steak_eating_2.png"];
        }
    }
    if(time == 0)
    {
        if(foodType == @"turnip")
        {
            imageView.image = [UIImage imageNamed:@"dude_turnip_request.png"];
        }
        if(foodType == @"chicken")
        {
            imageView.image = [UIImage imageNamed:@"dude_chicken_request.png"];
        }
        if(foodType == @"steak")
        {
            imageView.image = [UIImage imageNamed:@"dude_steak_request.png"];
        }

        [timer invalidate];
    }
}


@end
