#import <React/RCTViewManager.h>
#import "react_native_superview-Swift.h" // Ensure this matches your project name

@interface RNTSuperViewManager : RCTViewManager
@end

@implementation RNTSuperViewManager

RCT_EXPORT_MODULE(RNTView)

- (UIView *)view
{
    UIView* wrapper = [UIView new];
    UIView* swiftUIView = [SuperViewWrapper getView];
    [wrapper addSubview:swiftUIView];
    
    // Add constraints to ensure the swiftUIView takes up all available space in wrapper
    swiftUIView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [swiftUIView.topAnchor constraintEqualToAnchor:wrapper.topAnchor],
        [swiftUIView.bottomAnchor constraintEqualToAnchor:wrapper.bottomAnchor],
        [swiftUIView.leadingAnchor constraintEqualToAnchor:wrapper.leadingAnchor],
        [swiftUIView.trailingAnchor constraintEqualToAnchor:wrapper.trailingAnchor]
    ]];
    
    return wrapper;
}

@end
