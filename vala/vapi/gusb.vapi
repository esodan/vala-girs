/* gusb.vapi generated by vapigen-0.26, do not modify. */

[CCode (cprefix = "GUsb", gir_namespace = "GUsb", gir_version = "1.0", lower_case_cprefix = "g_usb_")]
namespace GUsb {
	[CCode (cheader_filename = "gusb.h", type_id = "g_usb_context_get_type ()")]
	public class Context : GLib.Object {
		[CCode (has_construct_function = false)]
		public Context () throws GLib.Error;
		public static GLib.Quark error_quark ();
		public unowned GUsb.Source get_source (GLib.MainContext main_ctx);
		public void set_debug (GLib.LogLevelFlags flags);
		[NoAccessorMethod]
		public int debug_level { get; set; }
		[NoAccessorMethod]
		public void* libusb_context { get; construct; }
	}
	[CCode (cheader_filename = "gusb.h", type_id = "g_usb_device_get_type ()")]
	public class Device : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Device ();
		public bool bulk_transfer (uint8 endpoint, [CCode (array_length_cname = "length", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, size_t actual_length, uint timeout, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async ssize_t bulk_transfer_async (uint8 endpoint, [CCode (array_length_cname = "length", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, uint timeout, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool claim_interface (int @interface, GUsb.DeviceClaimInterfaceFlags flags) throws GLib.Error;
		public bool close () throws GLib.Error;
		public bool control_transfer (GUsb.DeviceDirection direction, GUsb.DeviceRequestType request_type, GUsb.DeviceRecipient recipient, uint8 request, uint16 value, uint16 idx, [CCode (array_length_cname = "length", array_length_pos = 7.5, array_length_type = "gsize")] uint8[] data, size_t actual_length, uint timeout, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async ssize_t control_transfer_async (GUsb.DeviceDirection direction, GUsb.DeviceRequestType request_type, GUsb.DeviceRecipient recipient, uint8 request, uint16 value, uint16 idx, [CCode (array_length_cname = "length", array_length_pos = 7.5, array_length_type = "gsize")] uint8[] data, uint timeout, GLib.Cancellable? cancellable) throws GLib.Error;
		public static GLib.Quark error_quark ();
		public uint8 get_address ();
		public uint8 get_bus ();
		public int get_configuration () throws GLib.Error;
		public uint8 get_manufacturer_index ();
		public uint16 get_pid ();
		public unowned string get_platform_id ();
		public uint8 get_product_index ();
		public uint8 get_serial_number_index ();
		public string get_string_descriptor (uint8 desc_index) throws GLib.Error;
		public uint16 get_vid ();
		public bool interrupt_transfer (uint8 endpoint, [CCode (array_length_cname = "length", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, size_t actual_length, uint timeout, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async ssize_t interrupt_transfer_async (uint8 endpoint, [CCode (array_length_cname = "length", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, uint timeout, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool open () throws GLib.Error;
		public bool release_interface (int @interface, GUsb.DeviceClaimInterfaceFlags flags) throws GLib.Error;
		public bool reset () throws GLib.Error;
		public bool set_configuration (int configuration) throws GLib.Error;
		public GUsb.Context context { construct; }
		[NoAccessorMethod]
		public void* libusb_device { get; construct; }
		public string platform_id { construct; }
	}
	[CCode (cheader_filename = "gusb.h", type_id = "g_usb_device_list_get_type ()")]
	public class DeviceList : GLib.Object {
		[CCode (has_construct_function = false)]
		public DeviceList (GUsb.Context context);
		public void coldplug ();
		public GUsb.Device find_by_bus_address (uint8 bus, uint8 address) throws GLib.Error;
		public GUsb.Device find_by_vid_pid (uint16 vid, uint16 pid) throws GLib.Error;
		[NoAccessorMethod]
		public GUsb.Context context { owned get; construct; }
		public virtual signal void device_added (GUsb.Device device);
		public virtual signal void device_removed (GUsb.Device device);
	}
	[CCode (cheader_filename = "gusb.h")]
	[Compact]
	public class Source {
		public void set_callback (owned GLib.SourceFunc func);
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_CONTEXT_ERROR_", has_type_id = false)]
	public enum ContextError {
		[CCode (cname = "G_USB_CONTEXT_ERROR_INTERNAL")]
		CONTEXT_ERROR_INTERNAL
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_DEVICE_CLAIM_INTERFACE_BIND_KERNEL_", has_type_id = false)]
	[Flags]
	public enum DeviceClaimInterfaceFlags {
		[CCode (cname = "G_USB_DEVICE_CLAIM_INTERFACE_BIND_KERNEL_DRIVER")]
		DEVICE_CLAIM_INTERFACE_BIND_KERNEL_DRIVER
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_DEVICE_DIRECTION_", has_type_id = false)]
	public enum DeviceDirection {
		DEVICE_TO_HOST,
		HOST_TO_DEVICE
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_DEVICE_ERROR_", has_type_id = false)]
	public enum DeviceError {
		INTERNAL,
		IO,
		TIMED_OUT,
		NOT_SUPPORTED,
		NO_DEVICE,
		NOT_OPEN,
		ALREADY_OPEN,
		CANCELLED,
		FAILED,
		LAST
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_DEVICE_RECIPIENT_", has_type_id = false)]
	public enum DeviceRecipient {
		DEVICE,
		INTERFACE,
		ENDPOINT,
		OTHER
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_DEVICE_REQUEST_TYPE_", has_type_id = false)]
	public enum DeviceRequestType {
		STANDARD,
		CLASS,
		VENDOR,
		RESERVED
	}
	[CCode (cheader_filename = "gusb.h", cprefix = "G_USB_SOURCE_ERROR_")]
	public errordomain SourceError {
		[CCode (cname = "G_USB_SOURCE_ERROR_INTERNAL")]
		SOURCE_ERROR_INTERNAL;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "gusb.h", cname = "G_USB_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "gusb.h", cname = "G_USB_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "gusb.h", cname = "G_USB_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "gusb.h", cname = "G_USB_RESERVED_PADDING")]
	public const int RESERVED_PADDING;
	[CCode (cheader_filename = "gusb.h")]
	public static unowned string strerror (int error_code);
}
