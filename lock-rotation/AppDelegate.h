//
//  AppDelegate.h
//  lock-rotation
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UIViewController *_rootController;
}

@property (strong, nonatomic) UIWindow *window;

@end
