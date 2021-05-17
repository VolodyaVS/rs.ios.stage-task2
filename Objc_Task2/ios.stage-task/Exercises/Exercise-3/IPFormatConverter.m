#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSString *result = [[NSString alloc] init];

    if (numbersArray.count != 0) {
        for (NSString *item in numbersArray) {
            if (item.intValue > 255) {
                result = @"The numbers in the input array can be in the range from 0 to 255.";
            } else if (item.intValue < 0) {
                result = @"Negative numbers are not valid for input.";
            } else {
                if (numbersArray.count < 4) {
                    result = [result stringByAppendingString:item];
                    result = [result stringByAppendingString:@"."];
                }
            }
        }
    }
    return result;
}


//        NSString *result = [[NSString alloc] init];
//
//            for (int i = 0; i < numbersArray.count; i++) {
//                if (i == 0) {
//                    NSMutableString *val = [numbersArray objectAtIndex:i];
//                    if ([val intValue] < 255) {
//                        result = [result stringByAppendingString:val];
//                        result = [result stringByAppendingString:@"."];
//                    }
//                } else if (i > 0 && i < 3) {
//                    NSMutableString *val = [numbersArray objectAtIndex:i];
//                    if ([val intValue] < 16) {
//                        result = [result stringByAppendingString:val];
//                        if (i == 4) {
//                            result = [result stringByAppendingString:@"."];
//                        }
//                    }
//                }
//            }
//        return result;

@end
