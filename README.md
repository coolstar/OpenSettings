# OpenSettings
When Mobile Substrate doesn't need to work and we need to change tweak preferences.

## Compilation Note
To compile, you need to use a slightly modified theos. OpenSettings has a tweak built-in which relies on swizzling as Substrate isn't loaded until after OpenSettings starts.

Open logos.pm in theos and set the generator to 'internal' instead of MobileSubstrate.
