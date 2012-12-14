#import <UIKit/UIKit.h>

#import "Grill.h"
#import "Food.h"
#import "Dude.h"

@interface ViewController : UIViewController {
    
    Dude* dudeTurnip;
    Dude* dudeChicken;
    Dude* dudeSteak;

    Food* turnip;
    Food* chicken;
    Food* steak;

    Grill *grill1;
    Grill *grill2;
    Grill *grill3;
    Grill *grill4;
    Grill *grill5;
    Grill *grill6;
    Grill *grill7;
    Grill *grill8;
    Grill *grill9;
    
    Food* movingFood;
    Grill* movingGrill;
}

@property (weak, nonatomic) IBOutlet UIImageView *dudeSteakImage;
@property (weak, nonatomic) IBOutlet UIImageView *dudeChickenImage;
@property (weak, nonatomic) IBOutlet UIImageView *dudeTurnipImage;

@property (weak, nonatomic) IBOutlet UIImageView *turnipImage;
@property (weak, nonatomic) IBOutlet UIImageView *chickenImage;
@property (weak, nonatomic) IBOutlet UIImageView *steakImage;

@property (weak, nonatomic) IBOutlet UIImageView *grill1Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill2Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill3Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill4Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill5Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill6Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill7Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill8Image;
@property (weak, nonatomic) IBOutlet UIImageView *grill9Image;


@property (strong, nonatomic) Dude* dudeTurnip;
@property (strong, nonatomic) Dude* dudeChicken;
@property (strong, nonatomic) Dude* dudeSteak;

@property (strong, nonatomic) Food* turnip;
@property (strong, nonatomic) Food* chicken;
@property (strong, nonatomic) Food* steak;

@property (strong, nonatomic) Grill *grill1;
@property (strong, nonatomic) Grill *grill2;
@property (strong, nonatomic) Grill *grill3;
@property (strong, nonatomic) Grill *grill4;
@property (strong, nonatomic) Grill *grill5;
@property (strong, nonatomic) Grill *grill6;
@property (strong, nonatomic) Grill *grill7;
@property (strong, nonatomic) Grill *grill8;
@property (strong, nonatomic) Grill *grill9;

@property (strong, nonatomic) Food* movingFood;
@property (strong, nonatomic) Grill* movingGrill;


@end
