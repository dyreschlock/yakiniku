#import <UIKit/UIKit.h>

#import "Grill.h"
#import "Food.h"
#import "Dude.h"

@interface ViewController : UIViewController {
    
    Food* turnipFood;
    Food* chickenFood;
    Food* steakFood;

    Food* movingFood;
    
    Grill *grill1;
    Grill *grill2;
    Grill *grill3;
    Grill *grill4;
    Grill *grill5;
    Grill *grill6;
    Grill *grill7;
    Grill *grill8;
    Grill *grill9;
    
    Grill* movingGrill;
    
    Dude* dudeTurnipDude;
    Dude* dudeChickenDude;
    Dude* dudeSteakDude;
}

@property (weak, nonatomic) IBOutlet UIImageView *dudeSteak;
@property (weak, nonatomic) IBOutlet UIImageView *dudeChicken;
@property (weak, nonatomic) IBOutlet UIImageView *dudeTurnip;

@property (weak, nonatomic) IBOutlet UIImageView *grillImage1;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage2;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage3;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage4;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage5;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage6;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage7;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage8;
@property (weak, nonatomic) IBOutlet UIImageView *grillImage9;

@property (weak, nonatomic) IBOutlet UIImageView *steak;
@property (weak, nonatomic) IBOutlet UIImageView *chicken;
@property (weak, nonatomic) IBOutlet UIImageView *turnip;

@property (strong, nonatomic) Food* turnipFood;
@property (strong, nonatomic) Food* chickenFood;
@property (strong, nonatomic) Food* steakFood;

@property (strong, nonatomic) Food* movingFood;

@property (strong, nonatomic) Grill *grill1;
@property (strong, nonatomic) Grill *grill2;
@property (strong, nonatomic) Grill *grill3;
@property (strong, nonatomic) Grill *grill4;
@property (strong, nonatomic) Grill *grill5;
@property (strong, nonatomic) Grill *grill6;
@property (strong, nonatomic) Grill *grill7;
@property (strong, nonatomic) Grill *grill8;
@property (strong, nonatomic) Grill *grill9;

@property (strong, nonatomic) Grill* movingGrill;

@property (strong, nonatomic) Dude* dudeTurnipDude;
@property (strong, nonatomic) Dude* dudeChickenDude;
@property (strong, nonatomic) Dude* dudeSteakDude;


@end
