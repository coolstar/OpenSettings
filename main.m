#import <dlfcn.h>

int main(int argc, char **argv) {
	int ret;
	@autoreleasepool {
		dlopen("/Applications/Preferences.app/Preferences",RTLD_NOW);
		dlopen("/Library/MobileSubstrate/MobileSubstrate.dylib",RTLD_NOW);
		dlopen("/Library/MobileSubstrate/DynamicLibraries/AnemoneCore.dylib",RTLD_NOW);
		dlopen("/Library/MobileSubstrate/DynamicLibraries/AnemoneUIKit.dylib",RTLD_NOW);
		dlopen("/Library/MobileSubstrate/DynamicLibraries/PreferenceLoader.dylib",RTLD_NOW);
		ret = UIApplicationMain(argc, argv, @"PreferencesAppController", @"PreferencesAppController");
	}
	return ret;
}

// vim:ft=objc
