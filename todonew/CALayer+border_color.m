//
//  CALayer+border_color.m

//Filename: todo
//Authors' name: Pengfei Du, Yingda Zhang, Abdul Ahad Khan
//StudentID: 301276081, 301275707, 301313321
//Date: 13 Nov 2022
//Date last modified : 13 Nov 2022
//App description:  a easy Todo List APP
#import <UIKit/UIKit.h>
#import "CALayer+border_color.h"

@implementation CALayer (border_color)

- (void)setBorderColorWithUIColor:(UIColor *)color
{
    self.borderColor = color.CGColor;
}
@end
