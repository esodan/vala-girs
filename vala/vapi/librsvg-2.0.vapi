/* librsvg-2.0.vapi generated by vapigen-0.26, do not modify. */

[CCode (cprefix = "Rsvg", gir_namespace = "Rsvg", gir_version = "2.0", lower_case_cprefix = "rsvg_")]
namespace Rsvg {
	namespace Version {
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MAJOR_VERSION")]
		public const int MAJOR;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MICRO_VERSION")]
		public const int MICRO;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_MINOR_VERSION")]
		public const int MINOR;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_VERSION")]
		public const string STRING;
		[CCode (cheader_filename = "librsvg/rsvg.h", cname = "LIBRSVG_CHECK_VERSION")]
		public static bool check (int major, int minor, int micro);
	}
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	public class Handle : GLib.Object {
		[CCode (has_construct_function = false)]
		public Handle ();
		public bool close () throws GLib.Error;
		[Deprecated (replacement = "GLib.Object.unref")]
		public void free ();
		[CCode (has_construct_function = false)]
		public Handle.from_data ([CCode (array_length_cname = "data_len", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] data) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Handle.from_file (string file_name) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Handle.from_gfile_sync (GLib.File file, Rsvg.HandleFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Handle.from_stream_sync (GLib.InputStream input_stream, GLib.File? base_file, Rsvg.HandleFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public unowned string get_base_uri ();
		[Deprecated (since = "2.36")]
		public unowned string get_desc ();
		public Rsvg.DimensionData get_dimensions ();
		public bool get_dimensions_sub (out Rsvg.DimensionData dimension_data, string? id);
		[Deprecated (since = "2.36")]
		public unowned string get_metadata ();
		public Gdk.Pixbuf? get_pixbuf ();
		public Gdk.Pixbuf? get_pixbuf_sub (string? id);
		public bool get_position_sub (out Rsvg.PositionData position_data, string id);
		[Deprecated (since = "2.36")]
		public unowned string get_title ();
		public bool has_sub (string id);
		public bool read_stream_sync (GLib.InputStream stream, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool render_cairo (Cairo.Context cr);
		public bool render_cairo_sub (Cairo.Context cr, string? id);
		public void set_base_gfile (GLib.File base_file);
		public void set_base_uri (string base_uri);
		public void set_dpi (double dpi);
		public void set_dpi_x_y (double dpi_x, double dpi_y);
		[Deprecated (replacement = "render_cairo")]
		public void set_size_callback (owned Rsvg.SizeFunc size_func);
		[CCode (has_construct_function = false)]
		public Handle.with_flags (Rsvg.HandleFlags flags);
		public bool write ([CCode (array_length_cname = "count", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] buf) throws GLib.Error;
		public string base_uri { get; set construct; }
		[Deprecated (since = "2.36")]
		[NoAccessorMethod]
		public string desc { owned get; }
		[NoAccessorMethod]
		public double dpi_x { get; set construct; }
		[NoAccessorMethod]
		public double dpi_y { get; set construct; }
		[NoAccessorMethod]
		public double em { get; }
		[NoAccessorMethod]
		public double ex { get; }
		[NoAccessorMethod]
		public Rsvg.HandleFlags flags { get; construct; }
		[NoAccessorMethod]
		public int height { get; }
		[Deprecated (since = "2.36")]
		[NoAccessorMethod]
		public string metadata { owned get; }
		[Deprecated (since = "2.36")]
		[NoAccessorMethod]
		public string title { owned get; }
		[NoAccessorMethod]
		public int width { get; }
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	public struct DimensionData {
		public int width;
		public int height;
		public double em;
		public double ex;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", has_type_id = false)]
	public struct PositionData {
		public int x;
		public int y;
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", cprefix = "RSVG_HANDLE_", type_id = "rsvg_handle_flags_get_type ()")]
	[Flags]
	public enum HandleFlags {
		FLAGS_NONE,
		FLAG_UNLIMITED
	}
	[CCode (cheader_filename = "librsvg/rsvg.h", cprefix = "RSVG_ERROR_")]
	public errordomain Error {
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public delegate void SizeFunc (ref int width, ref int height);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	public static void cleanup ();
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated (since = "2.36")]
	public static void init ();
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public static Gdk.Pixbuf pixbuf_from_file (string file_name) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public static Gdk.Pixbuf pixbuf_from_file_at_max_size (string file_name, int max_width, int max_height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public static Gdk.Pixbuf pixbuf_from_file_at_size (string file_name, int width, int height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public static Gdk.Pixbuf pixbuf_from_file_at_zoom (string file_name, double x_zoom, double y_zoom) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated]
	public static Gdk.Pixbuf pixbuf_from_file_at_zoom_with_max (string file_name, double x_zoom, double y_zoom, int max_width, int max_height) throws GLib.Error;
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	public static void set_default_dpi (double dpi);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	public static void set_default_dpi_x_y (double dpi_x, double dpi_y);
	[CCode (cheader_filename = "librsvg/rsvg.h")]
	[Deprecated (since = "2.36")]
	public static void term ();
}
