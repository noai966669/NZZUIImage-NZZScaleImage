
#import "UIImage+NZZScaleImage.h"

@implementation UIImage (NZZScaleImage)
- (NSData * __nonnull)nzz_pngImageDataWithKB:(NSUInteger)KB{
    int scale=1;
    //图片进行降噪:
    //    NSData *imageAfterProcessing=UIImageJPEGRepresentation(self,0);
    //   等比例缩放
    NSData *imageAfterProcessing=UIImagePNGRepresentation([self scaleToSize:CGSizeMake(self.size.width/scale, self.size.height/scale)]);
    while ((imageAfterProcessing.length/1024)>KB) {
        scale=scale*2;
        //  imageAfterProcessing=UIImagePNGRepresentation([UIImage imageWithData:imageAfterProcessing]);
        imageAfterProcessing=UIImagePNGRepresentation([self scaleToSize:CGSizeMake(self.size.width/scale, self.size.height/scale)]);
    }
    return imageAfterProcessing;
}
- (UIImage *)scaleToSize:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0,0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage =UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    //返回新的改变大小后的图片
    return scaledImage;
}
@end
