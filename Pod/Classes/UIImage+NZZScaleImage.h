
#import <UIKit/UIKit.h>

@interface UIImage (NZZScaleImage)

/**
 *  给定任意一个 UIImage 对象，要求将这个 UIImage 对象的 PNGData 压缩到传入的 KB 以内。
 *	等比缩放
 *	压缩出来的 NSData.length 不能低于 KB 的 90% ？
 *	如果给定 UIImage 的 PNGData 已经小于要求的 KB ，直接返回 PNGData
 *
 *  @param KB 小于多少 KB
 *
 *  @return PNG data
 */

- (NSData * __nonnull)nzz_pngImageDataWithKB:(NSUInteger)KB;

@end
