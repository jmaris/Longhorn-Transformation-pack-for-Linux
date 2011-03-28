import rb
import gtk

def enable_rgba(widget, old_screen=None):
	screen = widget.get_screen()
	colormap = screen.get_rgba_colormap()
	if colormap:
		gtk.widget_set_default_colormap(colormap)

class RgbaPlugin (rb.Plugin):
	def __init__(self):
		rb.Plugin.__init__(self)
	def activate(self, shell):
		self.shell = shell
		enable_rgba(shell.props.window)
	def deactivate(self, shell):
		del self.shell
