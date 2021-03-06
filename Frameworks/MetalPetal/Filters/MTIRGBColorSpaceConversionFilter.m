//
//  MTIRGBColorSpaceConversionFilter.m
//  MetalPetal
//
//  Created by Yu Ao on 2019/2/11.
//

#import "MTIRGBColorSpaceConversionFilter.h"
#import "MTIFunctionDescriptor.h"

@implementation MTILinearToSRGBToneCurveFilter

+ (MTIFunctionDescriptor *)fragmentFunctionDescriptor {
    return [[MTIFunctionDescriptor alloc] initWithName:@"convertLinearRGBToSRGB"];
}

+ (MTIImage *)imageByProcessingImage:(MTIImage *)image {
    return [self imageByProcessingImage:image withInputParameters:@{} outputPixelFormat:MTIPixelFormatUnspecified];
}

@end

@implementation MTISRGBToneCurveToLinearFilter

+ (MTIFunctionDescriptor *)fragmentFunctionDescriptor {
    return [[MTIFunctionDescriptor alloc] initWithName:@"convertSRGBToLinearRGB"];
}

+ (MTIImage *)imageByProcessingImage:(MTIImage *)image {
    return [self imageByProcessingImage:image withInputParameters:@{} outputPixelFormat:MTIPixelFormatUnspecified];
}

@end
