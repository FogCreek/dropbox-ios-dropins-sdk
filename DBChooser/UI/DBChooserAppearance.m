//
//  DBChooserAppearance.m
//  DBChooser
//

#import "DBChooserAppearance.h"
#import <QuartzCore/QuartzCore.h>

@implementation DBChooserAppearance

+ (UIImage *)noDropboxImage
{
    static UIImage *appIconImage;
    if (appIconImage == nil) {
        appIconImage = [UIImage imageNamed:@"DBChooser.bundle/app-icon"];
    }
    return appIconImage;
}

+ (void)customizeButton:(Class<UIAppearance>)cls {
    [[cls appearance] setTitleColor:[self dropboxBlue] forState:UIControlStateNormal];
}

+ (void)customizeInstallButton:(UIButton*)btn withWidth:(CGFloat)width {
    [btn setBackgroundColor:[UIColor whiteColor]];
    [btn sizeToFit];
    CGRect frame = btn.frame;
    btn.frame = CGRectMake(0, frame.origin.y, width, frame.size.height);

    [btn setAutoresizingMask: UIViewAutoresizingFlexibleWidth];

    [[btn layer] setBorderWidth:[[UIScreen mainScreen] scale] == 2.00 ? 0.5f : 1.0f];
    [[btn layer] setBorderColor:[self buttonBorderColor].CGColor];
}

+ (void)customizeTitleLabel:(UILabel *)label {
    label.textColor = [self darkTextColor];
}


+ (void)customizeSubtitleLabel:(UILabel *)label {
    label.font = [UIFont systemFontOfSize:[UIFont smallSystemFontSize]];
}
@end
