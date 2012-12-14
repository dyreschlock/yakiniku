#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    UIImageView *movingObject;
    
    NSTimer *grill1timer;
    NSTimer *grill2timer;
    NSTimer *grill3timer;
    NSTimer *grill4timer;
    NSTimer *grill5timer;
    NSTimer *grill6timer;
    NSTimer *grill7timer;
    NSTimer *grill8timer;
    NSTimer *grill9timer;
    
    int grill1time;
    int grill2time;
    int grill3time;
    int grill4time;
    int grill5time;
    int grill6time;
    int grill7time;
    int grill8time;
    int grill9time;
    
    NSTimer *dudeSteakTimer;
    NSTimer *dudeChickenTimer;
    NSTimer *dudeTurnipTimer;
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

@property (strong, nonatomic) UIImageView *movingObject;

@property (strong, nonatomic) NSTimer *grill1timer;
@property (strong, nonatomic) NSTimer *grill2timer;
@property (strong, nonatomic) NSTimer *grill3timer;
@property (strong, nonatomic) NSTimer *grill4timer;
@property (strong, nonatomic) NSTimer *grill5timer;
@property (strong, nonatomic) NSTimer *grill6timer;
@property (strong, nonatomic) NSTimer *grill7timer;
@property (strong, nonatomic) NSTimer *grill8timer;
@property (strong, nonatomic) NSTimer *grill9timer;

@property (strong, nonatomic) NSTimer *dudeSteakTimer;
@property (strong, nonatomic) NSTimer *dudeChickenTimer;
@property (strong, nonatomic) NSTimer *dudeTurnipTimer;


@property CGPoint startPoint;
@property CGPoint movingPoint;

@property int grill1time;
@property int grill2time;
@property int grill3time;
@property int grill4time;
@property int grill5time;
@property int grill6time;
@property int grill7time;
@property int grill8time;
@property int grill9time;


@end
