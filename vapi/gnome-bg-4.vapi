/* gnome-bg-4.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gnome", gir_namespace = "GnomeBG", gir_version = "4.0", lower_case_cprefix = "gnome_")]
namespace Gnome {
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg.h", type_id = "gnome_bg_get_type ()")]
	public class BG : GLib.Object {
		[CCode (has_construct_function = false)]
		public BG ();
		public bool changes_with_time ();
		public Gdk.Pixbuf create_frame_thumbnail (Gnome.DesktopThumbnailFactory factory, Cairo.RectangleInt screen_area, int dest_width, int dest_height, int frame_num);
		public Cairo.Surface create_surface (Gdk.Surface window, int width, int height);
		public Gdk.Pixbuf create_thumbnail (Gnome.DesktopThumbnailFactory factory, Cairo.RectangleInt screen_area, int dest_width, int dest_height);
		public void draw (Gdk.Pixbuf dest);
		public unowned string get_filename ();
		public bool get_image_size (Gnome.DesktopThumbnailFactory factory, int best_width, int best_height, out int width, out int height);
		public GDesktop.BackgroundStyle get_placement ();
		public void get_rgba (out GDesktop.BackgroundShading type, out Gdk.RGBA primary, out Gdk.RGBA secondary);
		public bool has_multiple_sizes ();
		public bool is_dark (int dest_width, int dest_height);
		public void load_from_preferences (GLib.Settings settings);
		public void save_to_preferences (GLib.Settings settings);
		public void set_filename (string filename);
		public void set_placement (GDesktop.BackgroundStyle placement);
		public void set_rgba (GDesktop.BackgroundShading type, Gdk.RGBA primary, Gdk.RGBA secondary);
		public signal void changed ();
		public signal void transitioned ();
	}
	[CCode (cheader_filename = "libgnome-desktop/gnome-bg-slide-show.h", type_id = "gnome_bg_slide_show_get_type ()")]
	public class BGSlideShow : GLib.Object {
		[CCode (has_construct_function = false)]
		public BGSlideShow (string filename);
		public void get_current_slide (int width, int height, out double progress, out double duration, out bool is_fixed, out unowned string file1, out unowned string file2);
		public bool get_has_multiple_sizes ();
		public int get_num_slides ();
		public bool get_slide (int frame_number, int width, int height, out double progress, out double duration, out bool is_fixed, out unowned string file1, out unowned string file2);
		public double get_start_time ();
		public double get_total_duration ();
		public bool load () throws GLib.Error;
		public void load_async (GLib.Cancellable? cancellable, GLib.AsyncReadyCallback callback);
		[NoAccessorMethod]
		[Version (since = "3.34")]
		public GLib.File file { owned get; construct; }
		public bool has_multiple_sizes { get; }
		public double start_time { get; }
		public double total_duration { get; }
	}
}