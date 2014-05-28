/* libsecret-1.vapi generated by vapigen-0.26, do not modify. */

[CCode (cprefix = "Secret", gir_namespace = "Secret", gir_version = "1", lower_case_cprefix = "secret_")]
namespace Secret {
	[CCode (cheader_filename = "libsecret/secret.h", type_id = "secret_collection_get_type ()")]
	public class Collection : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Collection ();
		public static async Secret.Collection create (Secret.Service? service, string label, string? alias, Secret.CollectionCreateFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public static Secret.Collection create_sync (Secret.Service? service, string label, string? alias, Secret.CollectionCreateFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool @delete (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool delete_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async Secret.Collection for_alias (Secret.Service? service, string alias, Secret.CollectionFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public static Secret.Collection for_alias_sync (Secret.Service? service, string alias, Secret.CollectionFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "secret_collection_new_for_dbus_path", has_construct_function = false)]
		public async Collection.for_dbus_path (Secret.Service? service, string collection_path, Secret.CollectionFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Collection.for_dbus_path_sync (Secret.Service? service, string collection_path, Secret.CollectionFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public uint64 get_created ();
		public Secret.CollectionFlags get_flags ();
		public GLib.List<Secret.Item> get_items ();
		public string get_label ();
		public bool get_locked ();
		public uint64 get_modified ();
		public unowned Secret.Service get_service ();
		public async bool load_items (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool load_items_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void refresh ();
		public async GLib.List<Secret.Item> search (Secret.Schema? schema, GLib.HashTable<string,string> attributes, Secret.SearchFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		public async string[] search_for_dbus_paths (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] search_for_dbus_paths_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public GLib.List<Secret.Item> search_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, Secret.SearchFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_label (string label, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_label_sync (string label, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoAccessorMethod]
		public uint64 created { get; set; }
		[NoAccessorMethod]
		public string label { owned get; set; }
		public bool locked { get; }
		[NoAccessorMethod]
		public uint64 modified { get; set; }
		public Secret.Service service { get; construct; }
	}
	[CCode (cheader_filename = "libsecret/secret.h", type_id = "secret_item_get_type ()")]
	public class Item : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Item ();
		public static async Secret.Item create (Secret.Collection collection, Secret.Schema? schema, GLib.HashTable<string,string> attributes, string label, Secret.Value value, Secret.ItemCreateFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public static Secret.Item create_sync (Secret.Collection collection, Secret.Schema? schema, GLib.HashTable<string,string> attributes, string label, Secret.Value value, Secret.ItemCreateFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool @delete (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool delete_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "secret_item_new_for_dbus_path", has_construct_function = false)]
		public async Item.for_dbus_path (Secret.Service? service, string item_path, Secret.ItemFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public Item.for_dbus_path_sync (Secret.Service? service, string item_path, Secret.ItemFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public GLib.HashTable<string,string> get_attributes ();
		public uint64 get_created ();
		public Secret.ItemFlags get_flags ();
		public string get_label ();
		public bool get_locked ();
		public uint64 get_modified ();
		public string get_schema_name ();
		public Secret.Value get_secret ();
		public unowned Secret.Service get_service ();
		public async bool load_secret (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool load_secret_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async bool load_secrets (GLib.List<Secret.Item> items, GLib.Cancellable? cancellable) throws GLib.Error;
		public static bool load_secrets_sync (GLib.List<Secret.Item> items, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public void refresh ();
		public async bool set_attributes (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_attributes_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_label (string label, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_label_sync (string label, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_secret (Secret.Value value, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_secret_sync (Secret.Value value, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[NoAccessorMethod]
		public GLib.HashTable<weak string,weak string> attributes { owned get; set; }
		[NoAccessorMethod]
		public uint64 created { get; set; }
		[NoAccessorMethod]
		public string label { owned get; set; }
		public bool locked { get; }
		[NoAccessorMethod]
		public uint64 modified { get; set; }
		public Secret.Service service { get; construct; }
	}
	[CCode (cheader_filename = "libsecret/secret.h", type_id = "secret_prompt_get_type ()")]
	public class Prompt : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Prompt ();
		public async GLib.Variant perform (string? window_id, GLib.VariantType return_type, GLib.Cancellable? cancellable) throws GLib.Error;
		public GLib.Variant perform_sync (string? window_id, GLib.Cancellable? cancellable, GLib.VariantType return_type) throws GLib.Error;
		public GLib.Variant run (string? window_id, GLib.Cancellable? cancellable, GLib.VariantType return_type) throws GLib.Error;
	}
	[CCode (cheader_filename = "libsecret/secret.h", ref_function = "secret_schema_ref", type_id = "secret_schema_get_type ()", unref_function = "secret_schema_unref")]
	[Compact]
	public class Schema {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak Secret.SchemaAttribute[] attributes;
		public Secret.SchemaFlags flags;
		public weak string name;
		[CCode (has_construct_function = false)]
		public Schema (string name, Secret.SchemaFlags flags, ...);
		[CCode (cname = "secret_schema_newv", has_construct_function = false)]
		public Schema.newv (string name, Secret.SchemaFlags flags, GLib.HashTable<string,Secret.SchemaAttributeType> attribute_names_and_types);
		public Secret.Schema @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libsecret/secret.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "secret_schema_attribute_get_type ()")]
	[Compact]
	public class SchemaAttribute {
		public weak string name;
		public Secret.SchemaAttributeType type;
	}
	[CCode (cheader_filename = "libsecret/secret.h", type_id = "secret_service_get_type ()")]
	public class Service : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected Service ();
		public async bool clear (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool clear_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async string create_collection_dbus_path (GLib.HashTable<string,GLib.Variant> properties, string? alias, Secret.CollectionCreateFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public string create_collection_dbus_path_sync (GLib.HashTable<string,GLib.Variant> properties, string? alias, Secret.CollectionCreateFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async string create_item_dbus_path (string collection_path, GLib.HashTable<string,GLib.Variant> properties, Secret.Value value, Secret.ItemCreateFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public string create_item_dbus_path_sync (string collection_path, GLib.HashTable<string,GLib.Variant> properties, Secret.Value value, Secret.ItemCreateFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public Secret.Value decode_dbus_secret (GLib.Variant value);
		public async bool delete_item_dbus_path (string item_path, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool delete_item_dbus_path_sync (string item_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static void disconnect ();
		public unowned GLib.Variant encode_dbus_secret (Secret.Value value);
		public async bool ensure_session (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool ensure_session_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async Secret.Service @get (Secret.ServiceFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public virtual GLib.Type get_collection_gtype ();
		public GLib.List<Secret.Collection> get_collections ();
		public Secret.ServiceFlags get_flags ();
		public virtual GLib.Type get_item_gtype ();
		public async Secret.Value get_secret_for_dbus_path (string item_path, GLib.Cancellable? cancellable) throws GLib.Error;
		public Secret.Value get_secret_for_dbus_path_sync (string item_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async GLib.HashTable<string,Secret.Value> get_secrets_for_dbus_paths (string item_paths, GLib.Cancellable? cancellable) throws GLib.Error;
		public GLib.HashTable<string,Secret.Value> get_secrets_for_dbus_paths_sync (string item_paths, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public unowned string get_session_algorithms ();
		public unowned string get_session_dbus_path ();
		public static Secret.Service get_sync (Secret.ServiceFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool load_collections (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool load_collections_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async int @lock (GLib.List<GLib.DBusProxy> objects, GLib.Cancellable? cancellable, out GLib.List<GLib.DBusProxy> locked) throws GLib.Error;
		public async int lock_dbus_paths (string paths, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] locked) throws GLib.Error;
		public int lock_dbus_paths_sync (string paths, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] locked) throws GLib.Error;
		public int lock_sync (GLib.List<GLib.DBusProxy> objects, GLib.Cancellable? cancellable, out GLib.List<GLib.DBusProxy> locked) throws GLib.Error;
		public async Secret.Value lookup (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
		public Secret.Value lookup_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static async Secret.Service open (GLib.Type service_gtype, string? service_bus_name, Secret.ServiceFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public static Secret.Service open_sync (GLib.Type service_gtype, string? service_bus_name, Secret.ServiceFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async GLib.Variant prompt (Secret.Prompt prompt, GLib.VariantType? return_type, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoWrapper]
		public virtual async GLib.Variant prompt_async (Secret.Prompt prompt, GLib.VariantType return_type, GLib.Cancellable? cancellable) throws GLib.Error;
		public async GLib.Variant prompt_at_dbus_path (string prompt_path, GLib.VariantType? return_type, GLib.Cancellable? cancellable) throws GLib.Error;
		public GLib.Variant prompt_at_dbus_path_sync (string prompt_path, GLib.Cancellable? cancellable, GLib.VariantType? return_type) throws GLib.Error;
		public virtual GLib.Variant prompt_sync (Secret.Prompt prompt, GLib.Cancellable? cancellable, GLib.VariantType return_type) throws GLib.Error;
		public async string read_alias_dbus_path (string alias, GLib.Cancellable? cancellable) throws GLib.Error;
		public string read_alias_dbus_path_sync (string alias, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async GLib.List<Secret.Item> search (Secret.Schema? schema, GLib.HashTable<string,string> attributes, Secret.SearchFlags flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool search_for_dbus_paths (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] unlocked, [CCode (array_length = false, array_null_terminated = true)] out string[] locked) throws GLib.Error;
		public bool search_for_dbus_paths_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] unlocked, [CCode (array_length = false, array_null_terminated = true)] out string[] locked) throws GLib.Error;
		public GLib.List<Secret.Item> search_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, Secret.SearchFlags flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_alias (string alias, Secret.Collection? collection, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_alias_sync (string alias, Secret.Collection? collection, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_alias_to_dbus_path (string alias, string? collection_path, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_alias_to_dbus_path_sync (string alias, string? collection_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool store (Secret.Schema? schema, GLib.HashTable<string,string> attributes, string? collection, string label, Secret.Value value, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool store_sync (Secret.Schema? schema, GLib.HashTable<string,string> attributes, string? collection, string label, Secret.Value value, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async int unlock (GLib.List<GLib.DBusProxy> objects, GLib.Cancellable? cancellable, out GLib.List<GLib.DBusProxy> unlocked) throws GLib.Error;
		public async int unlock_dbus_paths (string paths, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] unlocked) throws GLib.Error;
		public int unlock_dbus_paths_sync (string paths, GLib.Cancellable? cancellable, [CCode (array_length = false, array_null_terminated = true)] out string[] unlocked) throws GLib.Error;
		public int unlock_sync (GLib.List<GLib.DBusProxy> objects, GLib.Cancellable? cancellable, out GLib.List<GLib.DBusProxy> unlocked) throws GLib.Error;
	}
	[CCode (cheader_filename = "libsecret/secret.h", ref_function = "secret_value_ref", type_id = "secret_value_get_type ()", unref_function = "secret_value_unref")]
	[Compact]
	public class Value {
		[CCode (has_construct_function = false)]
		public Value (string secret, ssize_t length, string content_type);
		[CCode (has_construct_function = false)]
		public Value.full (string secret, ssize_t length, string content_type, GLib.DestroyNotify destroy);
		[CCode (array_length_pos = 0.1, array_length_type = "gsize")]
		public unowned uint8[] @get ();
		public unowned string get_content_type ();
		public unowned string get_text ();
		public Secret.Value @ref ();
		public void unref ();
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_COLLECTION_CREATE_", has_type_id = false)]
	[Flags]
	public enum CollectionCreateFlags {
		[CCode (cname = "SECRET_COLLECTION_CREATE_NONE")]
		COLLECTION_CREATE_NONE
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_COLLECTION_", has_type_id = false)]
	[Flags]
	public enum CollectionFlags {
		NONE,
		LOAD_ITEMS
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_ERROR_", has_type_id = false)]
	public enum Error {
		PROTOCOL,
		IS_LOCKED,
		NO_SUCH_OBJECT,
		ALREADY_EXISTS;
		public static GLib.Quark get_quark ();
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_ITEM_CREATE_", has_type_id = false)]
	[Flags]
	public enum ItemCreateFlags {
		NONE,
		REPLACE
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_ITEM_", has_type_id = false)]
	[Flags]
	public enum ItemFlags {
		NONE,
		LOAD_SECRET
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SCHEMA_ATTRIBUTE_", has_type_id = false)]
	public enum SchemaAttributeType {
		STRING,
		INTEGER,
		BOOLEAN
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SCHEMA_", has_type_id = false)]
	[Flags]
	public enum SchemaFlags {
		NONE,
		DONT_MATCH_NAME
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SEARCH_", has_type_id = false)]
	[Flags]
	public enum SearchFlags {
		NONE,
		ALL,
		UNLOCK,
		LOAD_SECRETS
	}
	[CCode (cheader_filename = "libsecret/secret.h", cprefix = "SECRET_SERVICE_", has_type_id = false)]
	[Flags]
	public enum ServiceFlags {
		NONE,
		OPEN_SESSION,
		LOAD_COLLECTIONS
	}
	[CCode (cheader_filename = "libsecret/secret.h", cname = "SECRET_COLLECTION_DEFAULT")]
	public const string COLLECTION_DEFAULT;
	[CCode (cheader_filename = "libsecret/secret.h", cname = "SECRET_COLLECTION_SESSION")]
	public const string COLLECTION_SESSION;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static GLib.HashTable<string,string> attributes_build (Secret.Schema schema, ...);
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static GLib.HashTable<string,string> attributes_buildv (Secret.Schema schema, va_list va);
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async bool password_clear (Secret.Schema schema, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_clear_sync (Secret.Schema schema, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_clear_finish")]
	public static async bool password_clearv (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_clearv_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async string password_lookup (Secret.Schema schema, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static string password_lookup_sync (Secret.Schema schema, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_lookup_finish")]
	public static async string password_lookupv (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static string password_lookupv_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static async bool password_store (Secret.Schema schema, string? collection, string label, string password, GLib.Cancellable? cancellable, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_store_sync (Secret.Schema schema, string? collection, string label, string password, GLib.Cancellable? cancellable = null, ...) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h", finish_name = "secret_password_store_finish")]
	public static async bool password_storev (Secret.Schema schema, GLib.HashTable<string,string> attributes, string? collection, string label, string password, GLib.Cancellable? cancellable) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static bool password_storev_sync (Secret.Schema schema, GLib.HashTable<string,string> attributes, string? collection, string label, string password, GLib.Cancellable? cancellable = null) throws GLib.Error;
	[CCode (cheader_filename = "libsecret/secret.h")]
	public static void password_wipe (string? password);
}
