%hook NSBundle
- (NSString *)bundleIdentifier {
	NSString *ident = %orig;
	if ([ident isEqualToString:@"org.coolstar.opensettings"])
		return @"com.apple.Preferences";
	return ident;
}
- (NSString *)bundlePath {
	NSString *path = %orig;
	if ([path rangeOfString:@"OpenSettings"].location != NSNotFound)
		return [path stringByReplacingOccurrencesOfString:@"OpenSettings" withString:@"Preferences"];
	return path;
}
- (NSURL *)bundleURL {
	NSURL *url = %orig;
	if ([[url absoluteString] rangeOfString:@"OpenSettings"].location != NSNotFound)
		return [NSURL fileURLWithPath:[[url absoluteString] stringByReplacingOccurrencesOfString:@"OpenSettings" withString:@"Preferences"]];
	return url;
}
%end