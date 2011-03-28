import gedit
import gtk

def enable_rgba(widget, old_screen=None):
	screen = widget.get_screen()
	colormap = screen.get_rgba_colormap()
	if colormap:
		gtk.widget_set_default_colormap(colormap)

class RgbaPlugin(gedit.Plugin):
	def __init__(self):
		gedit.Plugin.__init__(self)
	def activate(self, window):
		enable_rgba(window)
