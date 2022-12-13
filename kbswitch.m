#import <Foundation/Foundation.h>
#include <Carbon/Carbon.h>

int main (int argc, const char * argv[]) {
    NSArray *arguments = [[NSProcessInfo processInfo] arguments];

    NSArray* sources = CFBridgingRelease(TISCreateInputSourceList((__bridge CFDictionaryRef)@{ (__bridge NSString*)kTISPropertyInputSourceID : [@"com.apple.keylayout." stringByAppendingString:arguments[1]] }, FALSE));
    TISInputSourceRef source = (__bridge TISInputSourceRef)sources[0];
    OSStatus status = TISSelectInputSource(source);
    if (status != noErr)
        return -1;

    return 0;
}
