//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSString * originalWellFormattedString = [[string lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        originalWellFormattedString = [originalWellFormattedString stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }

    NSString * reversedString = [self stringByReversingString:originalWellFormattedString];
    return [originalWellFormattedString isEqualToString:reversedString];
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}
@end
