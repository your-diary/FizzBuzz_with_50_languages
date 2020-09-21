// This is a comment.

#import <Foundation/Foundation.h>

@interface FizzBuzz: NSObject {
    int max;
}
- (void)run;
- (char *)getValue:(int)i;
- (void)setMax:(int)v;
@end

@implementation FizzBuzz
- (void)setMax:(int)v {
    max = v;
}
- (void)run {
    for (int i = 1; i <= max; ++i) {
        printf("%s\n", [self getValue: i]); //`[self getValue: i]` (Objective-C) is equivalent to `self.getValue(i)` (pseudo-language).
    }
}
- (char *)getValue:(int)i {
    static char buf[256];
    if (i % 3 == 0 && i % 5 == 0) {
        return "FizzBuzz";
    } else if (i % 3 == 0) {
        return "Fizz";
    } else if (i % 5 == 0) {
        return "Buzz";
    } else {
        sprintf(buf, "%d", i);
        return buf;
    }
}
@end

int main() {
    id fb = [FizzBuzz new]; //`id` is a pointer type which points to an object of the type `objc_object`.
    [fb setMax: 100];
    [fb run];
}

