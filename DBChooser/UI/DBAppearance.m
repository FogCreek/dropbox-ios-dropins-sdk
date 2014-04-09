//
//  DBAppearance.m
//  DBChooser
//

#import "DBAppearance.h"

@implementation DBAppearance

+ (void)customizeNavBarForContainer:(Class<UIAppearanceContainer>)cls {
    [[UINavigationBar appearanceWhenContainedIn:cls, nil] setTintColor:[self dropboxBlue]];
 }

+ (UIColor *)dropboxBlue {
    return [UIColor colorWithRed:0 green:126/255.0 blue:230/255.0 alpha:1];
}

+ (UIColor *)lightBackgroundColor {
    return [UIColor colorWithRed:240/255.0 green:243/255.0 blue:245/255.0 alpha:1];
}

+ (UIColor *)darkGrayColor {
    return [UIColor colorWithRed:61/255.0 green:70/255.0 blue:77/255.0 alpha:1];
}

+ (UIColor *)lightTextColor {
    return [UIColor colorWithRed:123/255.0 green:137/255.0 blue:148/255.0 alpha:1];
}

+ (UIColor *)darkTextColor {
    return [DBAppearance darkGrayColor];
}

+ (UIColor *)buttonBorderColor {
    return [UIColor colorWithRed:0.784 green:0.78 blue:0.8 alpha:1]; /*#c8c7cc*/
}


@end
