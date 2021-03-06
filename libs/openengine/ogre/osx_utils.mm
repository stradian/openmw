#include "osx_utils.h"

#import <AppKit/NSWindow.h>

namespace OEngine {
namespace Render {

unsigned long WindowContentViewHandle(SDL_SysWMinfo &info)
{
	NSWindow *window = info.info.cocoa.window;
	NSView *view = [window contentView];
	return (unsigned long)view;
}

}
}
