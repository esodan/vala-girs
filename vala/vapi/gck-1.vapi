/* gck-1.vapi generated by vapigen-0.44, do not modify. */

[CCode (cprefix = "Gck", gir_namespace = "Gck", gir_version = "1", lower_case_cprefix = "gck_")]
namespace Gck {
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_attribute_get_type ()")]
	[Compact]
	public class Attribute {
		public global::ulong type;
		[CCode (has_construct_function = false)]
		public Attribute (global::ulong attr_type, uint8 value, size_t length);
		[CCode (has_construct_function = false)]
		public Attribute.boolean (global::ulong attr_type, bool value);
		public void clear ();
		[CCode (has_construct_function = false)]
		public Attribute.date (global::ulong attr_type, GLib.Date value);
		public void dump ();
		public Gck.Attribute dup ();
		[CCode (has_construct_function = false)]
		public Attribute.empty (global::ulong attr_type);
		public bool equal (Gck.Attribute attr2);
		public void free ();
		public bool get_boolean ();
		[CCode (array_length_pos = 0.1, array_length_type = "gsize")]
		public unowned uint8[] get_data ();
		public void get_date (GLib.Date value);
		public global::string? get_string ();
		public global::ulong get_ulong ();
		public uint hash ();
		public void init_copy (Gck.Attribute src);
		[CCode (has_construct_function = false)]
		public Attribute.invalid (global::ulong attr_type);
		public bool is_invalid ();
		[CCode (has_construct_function = false)]
		public Attribute.string (global::ulong attr_type, global::string value);
		[CCode (has_construct_function = false)]
		public Attribute.ulong (global::ulong attr_type, global::ulong value);
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_attributes_get_type ()")]
	[Compact]
	public class Attributes {
		[CCode (has_construct_function = false)]
		public Attributes (ulong reserved);
		public unowned Gck.Attribute at (uint index);
		public bool contains (Gck.Attribute match);
		public ulong count ();
		public void dump ();
		public unowned Gck.Attribute find (ulong attr_type);
		public bool find_boolean (ulong attr_type, out bool value);
		public bool find_date (ulong attr_type, out GLib.Date value);
		public bool find_string (ulong attr_type, out string value);
		public bool find_ulong (ulong attr_type, out ulong value);
		public Gck.Attributes @ref ();
		public Gck.Attributes ref_sink ();
		public string to_string ();
		public static void unref (void* attrs);
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_builder_get_type ()")]
	[Compact]
	public class Builder {
		[CCode (has_construct_function = false)]
		public Builder (Gck.BuilderFlags flags);
		public void add_all (Gck.Attributes attrs);
		public void add_attribute (Gck.Attribute attr);
		public void add_boolean (ulong attr_type, bool value);
		public void add_data (ulong attr_type, [CCode (array_length_cname = "length", array_length_pos = 2.1, array_length_type = "gsize")] uint8[] value);
		public void add_date (ulong attr_type, GLib.Date value);
		public void add_empty (ulong attr_type);
		public void add_invalid (ulong attr_type);
		public void add_onlyv (Gck.Attributes attrs, [CCode (array_length_cname = "n_only_types", array_length_pos = 2.1, array_length_type = "guint")] ulong[] only_types);
		public void add_string (ulong attr_type, string? value);
		public void add_ulong (ulong attr_type, ulong value);
		public void clear ();
		public Gck.Builder copy ();
		public unowned Gck.Attributes end ();
		public unowned Gck.Attribute find (ulong attr_type);
		public bool find_boolean (ulong attr_type, out bool value);
		public bool find_date (ulong attr_type, out GLib.Date value);
		public bool find_string (ulong attr_type, out string value);
		public bool find_ulong (ulong attr_type, out ulong value);
		public void init ();
		public void init_full (Gck.BuilderFlags flags);
		public Gck.Builder @ref ();
		public void set_all (Gck.Attributes attrs);
		public void set_boolean (ulong attr_type, bool value);
		public void set_data (ulong attr_type, [CCode (array_length_cname = "length", array_length_pos = 2.1, array_length_type = "gsize")] uint8[] value);
		public void set_date (ulong attr_type, GLib.Date value);
		public void set_empty (ulong attr_type);
		public void set_invalid (ulong attr_type);
		public void set_string (ulong attr_type, string value);
		public void set_ulong (ulong attr_type, ulong value);
		public Gck.Attributes steal ();
		public void take_data (ulong attr_type, owned uint8 value, size_t length);
		public static void unref (void* builder);
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_enumerator_get_type ()")]
	public class Enumerator : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Enumerator ();
		public Gck.Enumerator? get_chained ();
		public GLib.TlsInteraction? get_interaction ();
		public GLib.Type get_object_type ();
		public Gck.Object? next (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async GLib.List<Gck.Object> next_async (int max_objects, GLib.Cancellable? cancellable) throws GLib.Error;
		public GLib.List<Gck.Object> next_n (int max_objects, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void set_chained (Gck.Enumerator? chained);
		public void set_interaction (GLib.TlsInteraction? interaction);
		[CCode (cname = "gck_enumerator_set_object_type_full")]
		public void set_object_type (GLib.Type object_type, [CCode (array_length_cname = "attr_count", array_length_pos = 2.1)] ulong[] attr_types);
		public Gck.Enumerator chained { owned get; set; }
		public GLib.TlsInteraction interaction { owned get; set; }
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_mechanism_info_get_type ()")]
	[Compact]
	public class MechanismInfo {
		public ulong flags;
		public ulong max_key_size;
		public ulong min_key_size;
		public Gck.MechanismInfo copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_module_get_type ()")]
	public class Module : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Module ();
		public bool equal (Gck.Module module2);
		public Gck.ModuleInfo get_info ();
		public unowned string get_path ();
		public GLib.List<Gck.Slot> get_slots (bool token_present);
		public uint hash ();
		public static Gck.Module initialize (string path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async Gck.Module? initialize_async (string path, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool match (Gck.UriData uri);
		[NoAccessorMethod]
		public void* functions { get; construct; }
		public string path { get; construct; }
		[Version (deprecated = true)]
		public virtual signal bool authenticate_object (Gck.Object object, string label, void* password);
		[Version (deprecated = true)]
		public virtual signal bool authenticate_slot (Gck.Slot slot, string label, void* password);
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_module_info_get_type ()")]
	[Compact]
	public class ModuleInfo {
		public ulong flags;
		public string library_description;
		public uint8 library_version_major;
		public uint8 library_version_minor;
		public string manufacturer_id;
		public uint8 pkcs11_version_major;
		public uint8 pkcs11_version_minor;
		public Gck.ModuleInfo copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_object_get_type ()")]
	public class Object : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Object ();
		public Gck.Attributes cache_lookup ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5)] ulong[] attr_types, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Attributes cache_lookup_async ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5)] ulong[] attr_types, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool destroy (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool destroy_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool equal (Gck.Object object2);
		public static Gck.Object from_handle (Gck.Session session, ulong object_handle);
		public async Gck.Attributes get_async ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5, array_length_type = "guint")] ulong[] attr_types, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 2.1, array_length_type = "gsize")]
		public uint8[] get_data (ulong attr_type, GLib.Cancellable? cancellable) throws GLib.Error;
		public async uint8[] get_data_async (ulong attr_type, Gck.Allocator allocator, GLib.Cancellable? cancellable) throws GLib.Error;
		public Gck.Attributes get_full ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5, array_length_type = "guint")] ulong[] attr_types, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public ulong get_handle ();
		public Gck.Module get_module ();
		public Gck.Session get_session ();
		public Gck.Attributes get_template (ulong attr_type, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Attributes get_template_async (ulong attr_type, GLib.Cancellable? cancellable) throws GLib.Error;
		public uint hash ();
		public bool @set (Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_async (Gck.Attributes attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_template (ulong attr_type, Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_template_async (ulong attr_type, Gck.Attributes attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		public ulong handle { get; construct; }
		public Gck.Module module { owned get; construct; }
		public Gck.Session session { owned get; construct; }
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_password_get_type ()")]
	public class Password : GLib.TlsPassword {
		[CCode (has_construct_function = false)]
		protected Password ();
		public Gck.Object get_key ();
		public Gck.Module get_module ();
		public Gck.Slot get_token ();
		public Gck.Object key { owned get; construct; }
		public Gck.Module module { owned get; }
		public Gck.Slot token { owned get; construct; }
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_session_get_type ()")]
	public class Session : GLib.Object, GLib.AsyncInitable, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Session ();
		public Gck.Object create_object (Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Object create_object_async (Gck.Attributes attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 3.66667, array_length_type = "gsize")]
		public uint8[] decrypt (Gck.Object key, ulong mech_type, [CCode (array_length_cname = "n_input", array_length_pos = 3.33333, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async uint8[] decrypt_async (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 3.66667, array_length_type = "gsize")]
		public uint8[] decrypt_full (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.33333, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public Gck.Object derive_key (Gck.Object @base, ulong mech_type, Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Object derive_key_async (Gck.Object @base, Gck.Mechanism mechanism, Gck.Attributes attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		public Gck.Object derive_key_full (Gck.Object @base, Gck.Mechanism mechanism, Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (array_length_pos = 3.66667, array_length_type = "gsize")]
		public uint8[] encrypt (Gck.Object key, ulong mech_type, [CCode (array_length_cname = "n_input", array_length_pos = 3.33333, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async uint8[] encrypt_async (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 3.66667, array_length_type = "gsize")]
		public uint8[] encrypt_full (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.33333, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public Gck.Enumerator enumerate_objects (Gck.Attributes match);
		[CCode (array_length_pos = 2.1, array_length_type = "gulong")]
		public ulong[]? find_handles (Gck.Attributes match, GLib.Cancellable? cancellable) throws GLib.Error;
		public async ulong[]? find_handles_async (Gck.Attributes match, GLib.Cancellable? cancellable) throws GLib.Error;
		public GLib.List<Gck.Object> find_objects (Gck.Attributes match, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async GLib.List<Gck.Object> find_objects_async (Gck.Attributes match, GLib.Cancellable? cancellable) throws GLib.Error;
		public static Gck.Session from_handle (Gck.Slot slot, ulong session_handle, Gck.SessionOptions options);
		public bool generate_key_pair (ulong mech_type, Gck.Attributes public_attrs, Gck.Attributes private_attrs, out Gck.Object public_key, out Gck.Object private_key, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool generate_key_pair_async (Gck.Mechanism mechanism, Gck.Attributes public_attrs, Gck.Attributes private_attrs, GLib.Cancellable? cancellable, out Gck.Object public_key, out Gck.Object private_key) throws GLib.Error;
		public bool generate_key_pair_full (Gck.Mechanism mechanism, Gck.Attributes public_attrs, Gck.Attributes private_attrs, out Gck.Object public_key, out Gck.Object private_key, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public ulong get_handle ();
		public Gck.SessionInfo get_info ();
		public GLib.TlsInteraction? get_interaction ();
		public Gck.Module get_module ();
		public Gck.SessionOptions get_options ();
		public Gck.Slot get_slot ();
		public ulong get_state ();
		public bool init_pin ([CCode (array_length_cname = "n_pin", array_length_pos = 1.5, array_length_type = "gsize")] uint8[]? pin, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool init_pin_async ([CCode (array_length_cname = "n_pin", array_length_pos = 1.5, array_length_type = "gsize")] uint8[]? pin, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool login (ulong user_type, [CCode (array_length_cname = "n_pin", array_length_pos = 2.5, array_length_type = "gsize")] uint8[]? pin, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool login_async (ulong user_type, [CCode (array_length_cname = "n_pin", array_length_pos = 2.5, array_length_type = "gsize")] uint8[]? pin, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool login_interactive (ulong user_type, GLib.TlsInteraction? interaction, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool login_interactive_async (ulong user_type, GLib.TlsInteraction? interaction, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool logout (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool logout_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public static Gck.Session open (Gck.Slot slot, Gck.SessionOptions options, GLib.TlsInteraction? interaction, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async Gck.Session open_async (Gck.Slot slot, Gck.SessionOptions options, GLib.TlsInteraction? interaction, GLib.Cancellable? cancellable) throws GLib.Error;
		public void set_interaction (GLib.TlsInteraction? interaction);
		public bool set_pin ([CCode (array_length_cname = "n_old_pin", array_length_pos = 1.5, array_length_type = "gsize")] uint8[]? old_pin, [CCode (array_length_cname = "n_new_pin", array_length_pos = 2.5, array_length_type = "gsize")] uint8[]? new_pin, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_pin_async ([CCode (array_length_cname = "n_new_pin", array_length_pos = 3.5, array_length_type = "gsize")] uint8[]? old_pin, size_t n_old_pin, [CCode (array_length_cname = "n_new_pin", array_length_pos = 3.5, array_length_type = "gsize")] uint8[]? new_pin, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 3.66667, array_length_type = "gsize")]
		public uint8[] sign (Gck.Object key, ulong mech_type, [CCode (array_length_cname = "n_input", array_length_pos = 3.33333, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async uint8[] sign_async (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, GLib.Cancellable? cancellable) throws GLib.Error;
		public uint8 sign_full (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, size_t n_result, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public Gck.Object unwrap_key (Gck.Object wrapper, ulong mech_type, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Object unwrap_key_async (Gck.Object wrapper, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, Gck.Attributes attrs, GLib.Cancellable? cancellable) throws GLib.Error;
		public Gck.Object unwrap_key_full (Gck.Object wrapper, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, Gck.Attributes attrs, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool verify (Gck.Object key, ulong mech_type, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, [CCode (array_length_cname = "n_signature", array_length_pos = 4.5, array_length_type = "gsize")] uint8[] signature, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool verify_async (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, [CCode (array_length_cname = "n_signature", array_length_pos = 4.5, array_length_type = "gsize")] uint8[] signature, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool verify_full (Gck.Object key, Gck.Mechanism mechanism, [CCode (array_length_cname = "n_input", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] input, [CCode (array_length_cname = "n_signature", array_length_pos = 4.5, array_length_type = "gsize")] uint8[] signature, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (array_length_pos = 3.5, array_length_type = "gsize")]
		public uint8[] wrap_key (Gck.Object wrapper, ulong mech_type, Gck.Object wrapped, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async uint8[] wrap_key_async (Gck.Object wrapper, Gck.Mechanism mechanism, Gck.Object wrapped, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length_pos = 3.5, array_length_type = "gsize")]
		public uint8[] wrap_key_full (Gck.Object wrapper, Gck.Mechanism mechanism, Gck.Object wrapped, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoAccessorMethod]
		public void* app_data { construct; }
		public ulong handle { get; construct; }
		public GLib.TlsInteraction interaction { owned get; set; }
		public Gck.Module module { owned get; }
		[NoAccessorMethod]
		public ulong opening_flags { construct; }
		public Gck.SessionOptions options { get; construct; }
		public Gck.Slot slot { owned get; construct; }
		public signal bool discard_handle (ulong handle);
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_session_info_get_type ()")]
	[Compact]
	public class SessionInfo {
		public ulong device_error;
		public ulong flags;
		public ulong slot_id;
		public ulong state;
		public Gck.SessionInfo copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_slot_get_type ()")]
	public class Slot : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Slot ();
		public Gck.Enumerator enumerate_objects (Gck.Attributes match, Gck.SessionOptions options);
		public bool equal (Gck.Slot slot2);
		public static Gck.Slot from_handle (Gck.Module module, ulong slot_id);
		public ulong get_handle ();
		public Gck.SlotInfo get_info ();
		public Gck.MechanismInfo get_mechanism_info (ulong mech_type);
		public GLib.Array<ulong> get_mechanisms ();
		public Gck.Module get_module ();
		public Gck.TokenInfo get_token_info ();
		public bool has_flags (ulong flags);
		public uint hash ();
		public bool match (Gck.UriData uri);
		public Gck.Session open_session (Gck.SessionOptions options, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async Gck.Session open_session_async (Gck.SessionOptions options, GLib.Cancellable? cancellable) throws GLib.Error;
		public ulong handle { get; construct; }
		public Gck.Module module { owned get; construct; }
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_slot_info_get_type ()")]
	[Compact]
	public class SlotInfo {
		public uint8 firmware_version_major;
		public uint8 firmware_version_minor;
		public ulong flags;
		public uint8 hardware_version_major;
		public uint8 hardware_version_minor;
		public string manufacturer_id;
		public string slot_description;
		public Gck.SlotInfo copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_token_info_get_type ()")]
	[Compact]
	public class TokenInfo {
		public uint8 firmware_version_major;
		public uint8 firmware_version_minor;
		public ulong flags;
		public long free_private_memory;
		public long free_public_memory;
		public uint8 hardware_version_major;
		public uint8 hardware_version_minor;
		public string label;
		public string manufacturer_id;
		public long max_pin_len;
		public long max_rw_session_count;
		public long max_session_count;
		public long min_pin_len;
		public string model;
		public long rw_session_count;
		public string serial_number;
		public long session_count;
		public long total_private_memory;
		public long total_public_memory;
		public int64 utc_time;
		public Gck.TokenInfo copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gck_uri_data_get_type ()")]
	[Compact]
	public class UriData {
		public bool any_unrecognized;
		public Gck.Attributes attributes;
		public Gck.ModuleInfo module_info;
		public Gck.TokenInfo token_info;
		[CCode (has_construct_function = false)]
		public UriData ();
		public Gck.UriData copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gck/gck.h", type_id = "gck_object_cache_get_type ()")]
	public interface ObjectCache : Gck.Object {
		public abstract void fill (Gck.Attributes attrs);
		public void set_attributes (Gck.Attributes? attrs);
		public bool update ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5)] ulong[] attr_types, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool update_async ([CCode (array_length_cname = "n_attr_types", array_length_pos = 1.5)] ulong[] attr_types, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public abstract Gck.Attributes attributes { owned get; set; }
	}
	[CCode (cheader_filename = "gck/gck.h", has_type_id = false)]
	public struct Mechanism {
		public ulong type;
		public void* parameter;
		public ulong n_parameter;
	}
	[CCode (cheader_filename = "gck/gck.h", cprefix = "GCK_BUILDER_", type_id = "gck_builder_flags_get_type ()")]
	public enum BuilderFlags {
		NONE,
		SECURE_MEMORY
	}
	[CCode (cheader_filename = "gck/gck.h", cprefix = "GCK_ERROR_MODULE_", type_id = "gck_error_get_type ()")]
	public enum Error {
		PROBLEM;
		public static GLib.Quark get_quark ();
	}
	[CCode (cheader_filename = "gck/gck.h", cprefix = "GCK_SESSION_", type_id = "gck_session_options_get_type ()")]
	[Flags]
	public enum SessionOptions {
		READ_ONLY,
		READ_WRITE,
		LOGIN_USER,
		AUTHENTICATE
	}
	[CCode (cheader_filename = "gck/gck.h", cprefix = "GCK_URI_", type_id = "gck_uri_error_get_type ()")]
	public enum UriError {
		BAD_SCHEME,
		BAD_ENCODING,
		BAD_SYNTAX,
		BAD_VERSION,
		NOT_FOUND;
		public static GLib.Quark get_quark ();
	}
	[CCode (cheader_filename = "gck/gck.h", cprefix = "GCK_URI_", type_id = "gck_uri_flags_get_type ()")]
	[Flags]
	public enum UriFlags {
		FOR_OBJECT,
		FOR_TOKEN,
		FOR_MODULE,
		WITH_VERSION,
		FOR_ANY
	}
	[CCode (cheader_filename = "gck/gck.h", has_target = false)]
	public delegate void* Allocator (void* data, size_t length);
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_INVALID")]
	public const ulong INVALID;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_URI_FOR_MODULE_WITH_VERSION")]
	public const int URI_FOR_MODULE_WITH_VERSION;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_URI_FOR_OBJECT_ON_TOKEN")]
	public const int URI_FOR_OBJECT_ON_TOKEN;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_URI_FOR_OBJECT_ON_TOKEN_AND_MODULE")]
	public const int URI_FOR_OBJECT_ON_TOKEN_AND_MODULE;
	[CCode (cheader_filename = "gck/gck.h", cname = "GCK_VENDOR_CODE")]
	public const int VENDOR_CODE;
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.Type list_get_boxed_type ();
	[CCode (cheader_filename = "gck/gck.h")]
	public static bool mechanisms_check (GLib.Array<ulong> mechanisms, ...);
	[CCode (cheader_filename = "gck/gck.h")]
	public static unowned string message_from_rv (ulong rv);
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.Enumerator modules_enumerate_objects (GLib.List<Gck.Module> modules, Gck.Attributes attrs, Gck.SessionOptions session_options);
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.Enumerator modules_enumerate_uri (GLib.List<Gck.Module> modules, string uri, Gck.SessionOptions session_options) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.List<Gck.Slot> modules_get_slots (GLib.List<Gck.Module> modules, bool token_present);
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.List<Gck.Module> modules_initialize_registered (GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static async GLib.List<Gck.Module> modules_initialize_registered_async (GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.Object? modules_object_for_uri (GLib.List<Gck.Module> modules, string uri, Gck.SessionOptions session_options) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.List<Gck.Object> modules_objects_for_uri (GLib.List<Gck.Module> modules, string uri, Gck.SessionOptions session_options) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.Slot modules_token_for_uri (GLib.List<Gck.Module> modules, string uri) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.List<Gck.Slot> modules_tokens_for_uri (GLib.List<Gck.Module> modules, string uri) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static GLib.List<Gck.Object> objects_from_handle_array (Gck.Session session, [CCode (array_length_cname = "n_object_handles", array_length_pos = 2.1, array_length_type = "gulong")] ulong[] object_handles);
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.Enumerator slots_enumerate_objects (GLib.List<Gck.Slot> slots, Gck.Attributes match, Gck.SessionOptions options);
	[CCode (cheader_filename = "gck/gck.h")]
	public static string uri_build (Gck.UriData uri_data, Gck.UriFlags flags);
	[CCode (cheader_filename = "gck/gck.h")]
	public static Gck.UriData uri_parse (string string, Gck.UriFlags flags) throws GLib.Error;
	[CCode (cheader_filename = "gck/gck.h")]
	public static bool value_to_boolean ([CCode (array_length_cname = "length", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] value, bool result);
	[CCode (cheader_filename = "gck/gck.h")]
	public static bool value_to_ulong ([CCode (array_length_cname = "length", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] value, ulong result);
}
