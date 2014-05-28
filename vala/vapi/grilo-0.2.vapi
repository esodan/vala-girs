/* grilo-0.2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Grl", lower_case_cprefix = "grl_")]
namespace Grl {
	[CCode (cheader_filename = "grilo.h")]
	public class Caps : GLib.Object {
		[CCode (has_construct_function = false)]
		public Caps ();
		public unowned GLib.List get_key_filter ();
		public unowned GLib.List get_key_range_filter ();
		public Grl.TypeFilter get_type_filter ();
		public bool is_key_filter (Grl.KeyID key);
		public bool is_key_range_filter (Grl.KeyID key);
		public void set_key_filter (GLib.List keys);
		public void set_key_range_filter (GLib.List keys);
		public void set_type_filter (Grl.TypeFilter filter);
		public bool test_option (string key, GLib.Value value);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Config : GLib.Object {
		[CCode (has_construct_function = false)]
		public Config (string plugin, string? source);
		public unowned string get_api_key ();
		public uchar get_api_key_blob (size_t size);
		public unowned string get_api_secret ();
		public unowned string get_api_token ();
		public unowned string get_api_token_secret ();
		public uchar get_binary (string param, size_t size);
		public bool get_boolean (string param);
		public float get_float (string param);
		public int get_int (string param);
		public unowned string get_password ();
		public unowned string get_plugin ();
		public unowned string get_source ();
		public unowned string get_string (string param);
		public unowned string get_username ();
		public bool has_param (string param);
		public void @set (string param, GLib.Value value);
		public void set_api_key (string key);
		public void set_api_key_blob (uchar blob, size_t size);
		public void set_api_secret (string secret);
		public void set_api_token (string token);
		public void set_api_token_secret (string secret);
		public void set_binary (string param, uchar blob, size_t size);
		public void set_boolean (string param, bool value);
		public void set_float (string param, float value);
		public void set_int (string param, int value);
		public void set_password (string password);
		public void set_plugin (string plugin);
		public void set_source (string source);
		public void set_string (string param, string value);
		public void set_username (string username);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Data : GLib.Object {
		[CCode (has_construct_function = false)]
		public Data ();
		public void add_binary (Grl.KeyID key, uchar buf, size_t size);
		public void add_boxed (Grl.KeyID key, void* boxed);
		public void add_float (Grl.KeyID key, float floatvalue);
		public void add_int (Grl.KeyID key, int intvalue);
		public void add_related_keys (Grl.RelatedKeys relkeys);
		public void add_string (Grl.KeyID key, string strvalue);
		public unowned Grl.Data dup ();
		public GLib.Value @get (Grl.KeyID key);
		public uchar get_binary (Grl.KeyID key, size_t size);
		public bool get_boolean (Grl.KeyID key);
		public void* get_boxed (Grl.KeyID key);
		public float get_float (Grl.KeyID key);
		public int get_int (Grl.KeyID key);
		public GLib.List<weak Grl.KeyID> get_keys ();
		public unowned Grl.RelatedKeys get_related_keys (Grl.KeyID key, uint index);
		public unowned GLib.List get_single_values_for_key (Grl.KeyID key);
		public unowned GLib.List get_single_values_for_key_string (Grl.KeyID key);
		public unowned string get_string (Grl.KeyID key);
		public bool has_key (Grl.KeyID key);
		public uint length (Grl.KeyID key);
		public void remove (Grl.KeyID key);
		public void remove_nth (Grl.KeyID key, uint index);
		public void @set (Grl.KeyID key, GLib.Value value);
		public void set_binary (Grl.KeyID key, uchar buf, size_t size);
		public void set_boolean (Grl.KeyID key, bool boolvalue);
		public void set_boxed (Grl.KeyID key, void* boxed);
		public void set_float (Grl.KeyID key, float floatvalue);
		public void set_int (Grl.KeyID key, int intvalue);
		public void set_related_keys (Grl.RelatedKeys relkeys, uint index);
		public void set_string (Grl.KeyID key, string strvalue);
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class LogDomain {
		[CCode (has_construct_function = false)]
		public LogDomain (string name);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Media : Grl.Data {
		[CCode (has_construct_function = false)]
		public Media ();
		public void add_author (string author);
		public void add_external_player (string player);
		public void add_external_url (string url);
		public void add_keyword (string keyword);
		public void add_region_data (string region, GLib.DateTime publication_date, string certificate);
		public void add_thumbnail (string thumbnail);
		public void add_thumbnail_binary (uchar thumbnail, size_t size);
		public void add_url_data (string url, string mime);
		public unowned string get_author ();
		public unowned string get_author_nth (uint index);
		public unowned string get_certificate ();
		public unowned GLib.DateTime get_creation_date ();
		public unowned string get_description ();
		public int get_duration ();
		public unowned string get_external_url ();
		public unowned string get_external_url_nth (uint index);
		public bool get_favourite ();
		public unowned string get_id ();
		public unowned string get_keyword ();
		public unowned string get_keyword_nth (uint index);
		public unowned string get_last_played ();
		public int get_last_position ();
		public unowned string get_license ();
		public unowned string get_mime ();
		public unowned GLib.DateTime get_modification_date ();
		public int get_play_count ();
		public unowned string get_player ();
		public unowned string get_player_nth (uint index);
		public unowned GLib.DateTime get_publication_date ();
		public float get_rating ();
		public unowned string get_region ();
		public unowned string get_region_data (out unowned GLib.DateTime publication_date, string certificate);
		public unowned string get_region_data_nth (uint index, out unowned GLib.DateTime publication_date, string certificate);
		public unowned string get_site ();
		public int get_size ();
		public unowned string get_source ();
		public float get_start_time ();
		public unowned string get_studio ();
		public unowned string get_thumbnail ();
		public uchar get_thumbnail_binary (size_t size);
		public uchar get_thumbnail_binary_nth (size_t size, uint index);
		public unowned string get_thumbnail_nth (uint index);
		public unowned string get_title ();
		public unowned string get_url ();
		public unowned string get_url_data (string mime);
		public unowned string get_url_data_nth (uint index, string mime);
		public unowned string serialize ();
		public unowned string serialize_extended (Grl.MediaSerializeType serial_type);
		public void set_author (string author);
		public void set_certificate (string certificate);
		public void set_creation_date (GLib.DateTime creation_date);
		public void set_description (string description);
		public void set_duration (int duration);
		public void set_external_player (string player);
		public void set_external_url (string url);
		public void set_favourite (bool favourite);
		public void set_id (string id);
		public void set_keyword (string keyword);
		public void set_last_played (string last_played);
		public void set_last_position (int last_position);
		public void set_license (string license);
		public void set_mime (string mime);
		public void set_modification_date (GLib.DateTime modification_date);
		public void set_play_count (int play_count);
		public void set_publication_date (GLib.DateTime date);
		public void set_rating (float rating, float max);
		public void set_region (string region);
		public void set_region_data (string region, GLib.DateTime publication_date, string certificate);
		public void set_site (string site);
		public void set_size (int size);
		public void set_source (string source);
		public void set_studio (string studio);
		public void set_thumbnail (string thumbnail);
		public void set_thumbnail_binary (uchar thumbnail, size_t size);
		public void set_title (string title);
		public void set_url (string url);
		public void set_url_data (string url, string mime);
		public static unowned Grl.Media unserialize (string serial);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaAudio : Grl.Media {
		[CCode (has_construct_function = false, type = "GrlMedia*")]
		public MediaAudio ();
		public void add_artist (string artist);
		public void add_genre (string genre);
		public void add_lyrics (string lyrics);
		public void add_url_data (string url, string mime, int bitrate);
		public unowned string get_album ();
		public unowned string get_artist ();
		public unowned string get_artist_nth (uint index);
		public int get_bitrate ();
		public unowned string get_genre ();
		public unowned string get_genre_nth (uint index);
		public unowned string get_lyrics ();
		public unowned string get_lyrics_nth (uint index);
		public int get_track_number ();
		public unowned string get_url_data (string mime, int bitrate);
		public unowned string get_url_data_nth (uint index, string mime, int bitrate);
		public void set_album (string album);
		public void set_artist (string artist);
		public void set_bitrate (int bitrate);
		public void set_genre (string genre);
		public void set_lyrics (string lyrics);
		public void set_track_number (int track_number);
		public void set_url_data (string url, string mime, int bitrate);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaBox : Grl.Media {
		[CCode (has_construct_function = false, type = "GrlMedia*")]
		public MediaBox ();
		public int get_childcount ();
		public void set_childcount (int childcount);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaImage : Grl.Media {
		[CCode (has_construct_function = false, type = "GrlMedia*")]
		public MediaImage ();
		public void add_url_data (string url, string mime, int width, int height);
		public unowned string get_camera_model ();
		public float get_exposure_time ();
		public unowned string get_flash_used ();
		public int get_height ();
		public float get_iso_speed ();
		public int get_orientation ();
		public unowned string get_url_data (string mime, int width, int height);
		public unowned string get_url_data_nth (uint index, string mime, int width, int height);
		public int get_width ();
		public void set_camera_model (string camera_model);
		public void set_exposure_time (float exposure_time);
		public void set_flash_used (string flash_used);
		public void set_height (int height);
		public void set_iso_speed (float iso_speed);
		public void set_orientation (int orientation);
		public void set_size (int width, int height);
		public void set_url_data (string url, string mime, int width, int height);
		public void set_width (int width);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class MediaVideo : Grl.Media {
		[CCode (has_construct_function = false, type = "GrlMedia*")]
		public MediaVideo ();
		public void add_director (string director);
		public void add_performer (string performer);
		public void add_producer (string producer);
		public void add_url_data (string url, string mime, float framerate, int width, int height);
		public unowned string get_director ();
		public unowned string get_director_nth (uint index);
		public int get_episode ();
		public float get_framerate ();
		public int get_height ();
		public unowned string get_original_title ();
		public unowned string get_performer ();
		public unowned string get_performer_nth (uint index);
		public unowned string get_producer ();
		public unowned string get_producer_nth (uint index);
		public int get_season ();
		public unowned string get_show ();
		public unowned string get_url_data (string mime, float framerate, int width, int height);
		public unowned string get_url_data_nth (uint index, string mime, float framerate, int width, int height);
		public int get_width ();
		public void set_director (string director);
		public void set_episode (int episode);
		public void set_framerate (float framerate);
		public void set_height (int height);
		public void set_original_title (string original_title);
		public void set_performer (string performer);
		public void set_producer (string producer);
		public void set_season (int season);
		public void set_show (string show);
		public void set_size (int width, int height);
		public void set_url_data (string url, string mime, float framerate, int width, int height);
		public void set_width (int width);
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class MetadataKey {
		[CCode (cname = "GRL_METADATA_KEY_ALBUM")]
		public static Grl.KeyID ALBUM;
		[CCode (cname = "GRL_METADATA_KEY_ARTIST")]
		public static Grl.KeyID ARTIST;
		[CCode (cname = "GRL_METADATA_KEY_AUTHOR")]
		public static Grl.KeyID AUTHOR;
		[CCode (cname = "GRL_METADATA_KEY_BITRATE")]
		public static Grl.KeyID BITRATE;
		[CCode (cname = "GRL_METADATA_KEY_CAMERA_MODEL")]
		public static Grl.KeyID CAMERA_MODEL;
		[CCode (cname = "GRL_METADATA_KEY_CERTIFICATE")]
		public static Grl.KeyID CERTIFICATE;
		[CCode (cname = "GRL_METADATA_KEY_CHILDCOUNT")]
		public static Grl.KeyID CHILDCOUNT;
		[CCode (cname = "GRL_METADATA_KEY_CREATION_DATE")]
		public static Grl.KeyID CREATION_DATE;
		[CCode (cname = "GRL_METADATA_KEY_DESCRIPTION")]
		public static Grl.KeyID DESCRIPTION;
		[CCode (cname = "GRL_METADATA_KEY_DIRECTOR")]
		public static Grl.KeyID DIRECTOR;
		[CCode (cname = "GRL_METADATA_KEY_DURATION")]
		public static Grl.KeyID DURATION;
		[CCode (cname = "GRL_METADATA_KEY_EPISODE")]
		public static Grl.KeyID EPISODE;
		[CCode (cname = "GRL_METADATA_KEY_EXPOSURE_TIME")]
		public static Grl.KeyID EXPOSURE_TIME;
		[CCode (cname = "GRL_METADATA_KEY_EXTERNAL_PLAYER")]
		public static Grl.KeyID EXTERNAL_PLAYER;
		[CCode (cname = "GRL_METADATA_KEY_EXTERNAL_URL")]
		public static Grl.KeyID EXTERNAL_URL;
		[CCode (cname = "GRL_METADATA_KEY_FLASH_USED")]
		public static Grl.KeyID FLASH_USED;
		[CCode (cname = "GRL_METADATA_KEY_FRAMERATE")]
		public static Grl.KeyID FRAMERATE;
		[CCode (cname = "GRL_METADATA_KEY_GENRE")]
		public static Grl.KeyID GENRE;
		[CCode (cname = "GRL_METADATA_KEY_HEIGHT")]
		public static Grl.KeyID HEIGHT;
		[CCode (cname = "GRL_METADATA_KEY_ID")]
		public static Grl.KeyID ID;
		[CCode (cname = "GRL_METADATA_KEY_ISO_SPEED")]
		public static Grl.KeyID ISO_SPEED;
		[CCode (cname = "GRL_METADATA_KEY_KEYWORD")]
		public static Grl.KeyID KEYWORD;
		[CCode (cname = "GRL_METADATA_KEY_LAST_PLAYED")]
		public static Grl.KeyID LAST_PLAYED;
		[CCode (cname = "GRL_METADATA_KEY_LAST_POSITION")]
		public static Grl.KeyID LAST_POSITION;
		[CCode (cname = "GRL_METADATA_KEY_LICENSE")]
		public static Grl.KeyID LICENSE;
		[CCode (cname = "GRL_METADATA_KEY_LYRICS")]
		public static Grl.KeyID LYRICS;
		[CCode (cname = "GRL_METADATA_KEY_MIME")]
		public static Grl.KeyID MIME;
		[CCode (cname = "GRL_METADATA_KEY_MODIFICATION_DATE")]
		public static Grl.KeyID MODIFICATION_DATE;
		[CCode (cname = "GRL_METADATA_KEY_ORIENTATION")]
		public static Grl.KeyID ORIENTATION;
		[CCode (cname = "GRL_METADATA_KEY_ORIGINAL_TITLE")]
		public static Grl.KeyID ORIGINAL_TITLE;
		[CCode (cname = "GRL_METADATA_KEY_PERFORMER")]
		public static Grl.KeyID PERFORMER;
		[CCode (cname = "GRL_METADATA_KEY_PLAY_COUNT")]
		public static Grl.KeyID PLAY_COUNT;
		[CCode (cname = "GRL_METADATA_KEY_PRODUCER")]
		public static Grl.KeyID PRODUCER;
		[CCode (cname = "GRL_METADATA_KEY_PUBLICATION_DATE")]
		public static Grl.KeyID PUBLICATION_DATE;
		[CCode (cname = "GRL_METADATA_KEY_RATING")]
		public static Grl.KeyID RATING;
		[CCode (cname = "GRL_METADATA_KEY_REGION")]
		public static Grl.KeyID REGION;
		[CCode (cname = "GRL_METADATA_KEY_SEASON")]
		public static Grl.KeyID SEASON;
		[CCode (cname = "GRL_METADATA_KEY_SHOW")]
		public static Grl.KeyID SHOW;
		[CCode (cname = "GRL_METADATA_KEY_SITE")]
		public static Grl.KeyID SITE;
		[CCode (cname = "GRL_METADATA_KEY_SOURCE")]
		public static Grl.KeyID SOURCE;
		[CCode (cname = "GRL_METADATA_KEY_START_TIME")]
		public static Grl.KeyID START_TIME;
		[CCode (cname = "GRL_METADATA_KEY_STUDIO")]
		public static Grl.KeyID STUDIO;
		[CCode (cname = "GRL_METADATA_KEY_THUMBNAIL")]
		public static Grl.KeyID THUMBNAIL;
		[CCode (cname = "GRL_METADATA_KEY_THUMBNAIL_BINARY")]
		public static Grl.KeyID THUMBNAIL_BINARY;
		[CCode (cname = "GRL_METADATA_KEY_TITLE")]
		public static Grl.KeyID TITLE;
		[CCode (cname = "GRL_METADATA_KEY_TRACK_NUMBER")]
		public static Grl.KeyID TRACK_NUMBER;
		[CCode (cname = "GRL_METADATA_KEY_URL")]
		public static Grl.KeyID URL;
		[CCode (cname = "GRL_METADATA_KEY_WIDTH")]
		public static Grl.KeyID WIDTH;
		public static unowned GLib.List list_new (Grl.KeyID p, ...);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class OperationOptions : GLib.Object {
		[CCode (has_construct_function = false)]
		public OperationOptions (Grl.Caps? caps);
		public unowned Grl.OperationOptions copy ();
		public int get_count ();
		public Grl.ResolutionFlags get_flags ();
		public GLib.Value get_key_filter (Grl.KeyID key);
		public unowned GLib.List get_key_filter_list ();
		public void get_key_range_filter (Grl.KeyID key, out GLib.Value min_value, out GLib.Value max_value);
		public unowned GLib.List get_key_range_filter_list ();
		public uint get_skip ();
		public Grl.TypeFilter get_type_filter ();
		public bool obey_caps (Grl.Caps caps, out unowned Grl.OperationOptions supported_options, out unowned Grl.OperationOptions unsupported_options);
		public bool set_count (int count);
		public bool set_flags (Grl.ResolutionFlags flags);
		public bool set_key_filter_dictionary (GLib.HashTable filters);
		public bool set_key_filter_value (Grl.KeyID key, GLib.Value value);
		public bool set_key_filters ();
		public bool set_key_range_filter ();
		public bool set_key_range_filter_value (Grl.KeyID key, GLib.Value min_value, GLib.Value max_value);
		public bool set_skip (uint skip);
		public bool set_type_filter (Grl.TypeFilter filter);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Plugin : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Plugin ();
		public unowned string get_author ();
		public unowned string get_description ();
		public unowned string get_filename ();
		public unowned string get_id ();
		public unowned string get_info (string key);
		public GLib.List<weak string> get_info_keys ();
		public unowned string get_license ();
		public unowned GLib.Module get_module ();
		public unowned string get_name ();
		public unowned string get_site ();
		public unowned GLib.List get_sources ();
		public unowned string get_version ();
		[NoAccessorMethod]
		public bool loaded { get; }
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class PluginDescriptor {
		public weak GLib.Module module;
		public weak GLib.Callback plugin_deinit;
		public weak string plugin_id;
		public weak GLib.Callback plugin_init;
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Registry : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Registry ();
		public bool add_config (owned Grl.Config config) throws GLib.Error;
		public bool add_config_from_file (string config_file) throws GLib.Error;
		public bool add_config_from_resource (string resource_path) throws GLib.Error;
		public void add_directory (string path);
		public static unowned Grl.Registry get_default ();
		public GLib.List<weak Grl.KeyID> get_metadata_keys ();
		public unowned GLib.List get_plugins (bool only_loaded);
		public GLib.List<weak Grl.Plugin> get_sources (bool ranked);
		public GLib.List<weak Grl.Plugin> get_sources_by_operations (Grl.SupportedOps ops, bool ranked);
		public bool load_all_plugins () throws GLib.Error;
		public bool load_plugin (string library_filename) throws GLib.Error;
		public bool load_plugin_by_id (string plugin_id) throws GLib.Error;
		public bool load_plugin_directory (string path) throws GLib.Error;
		public Grl.KeyID lookup_metadata_key (string key_name);
		public unowned string lookup_metadata_key_desc (Grl.KeyID key);
		public unowned string lookup_metadata_key_name (Grl.KeyID key);
		public unowned GLib.List lookup_metadata_key_relation (Grl.KeyID key);
		public GLib.Type lookup_metadata_key_type (Grl.KeyID key);
		public unowned Grl.Plugin lookup_plugin (string plugin_id);
		public unowned Grl.Source lookup_source (string source_id);
		public bool metadata_key_validate (Grl.KeyID key, GLib.Value value);
		public Grl.KeyID register_metadata_key (GLib.ParamSpec param_spec) throws GLib.Error;
		public void register_metadata_key_relation (Grl.KeyID key1, Grl.KeyID key2);
		public bool register_source (Grl.Plugin plugin, Grl.Source source) throws GLib.Error;
		public bool unload_plugin (string plugin_id) throws GLib.Error;
		public bool unregister_source (Grl.Source source) throws GLib.Error;
		public virtual signal void metadata_key_added (string p0);
		public virtual signal void source_added (Grl.Source p0);
		public virtual signal void source_removed (Grl.Source p0);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class RelatedKeys : GLib.Object {
		[CCode (has_construct_function = false)]
		public RelatedKeys ();
		public unowned Grl.RelatedKeys dup ();
		public GLib.Value @get (Grl.KeyID key);
		public uchar get_binary (Grl.KeyID key, size_t size);
		public bool get_boolean (Grl.KeyID key);
		public void* get_boxed (Grl.KeyID key);
		public float get_float (Grl.KeyID key);
		public int get_int (Grl.KeyID key);
		public unowned GLib.List get_keys ();
		public unowned string get_string (Grl.KeyID key);
		public bool has_key (Grl.KeyID key);
		public void remove (Grl.KeyID key);
		public void @set (Grl.KeyID key, GLib.Value value);
		public void set_binary (Grl.KeyID key, uchar buf, size_t size);
		public void set_boolean (Grl.KeyID key, bool booleanvalue);
		public void set_boxed (Grl.KeyID key, void* boxed);
		public void set_float (Grl.KeyID key, float floatvalue);
		public void set_int (Grl.KeyID key, int intvalue);
		public void set_string (Grl.KeyID key, string strvalue);
		[CCode (has_construct_function = false)]
		public RelatedKeys.valist (Grl.KeyID key, void* args);
		[CCode (has_construct_function = false)]
		public RelatedKeys.with_keys (Grl.KeyID key);
	}
	[CCode (cheader_filename = "grilo.h")]
	public class Source : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Source ();
		public virtual void browse (Grl.Media? container, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options, Grl.SourceResultCb callback);
		public GLib.List<Grl.Media> browse_sync (Grl.Media container, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options) throws GLib.Error;
		[NoWrapper]
		public virtual void cancel (uint operation_id);
		public uint get_auto_split_threshold ();
		public virtual unowned Grl.Caps get_caps (Grl.SupportedOps operation);
		public unowned string get_description ();
		public unowned GLib.Icon get_icon ();
		public unowned string get_id ();
		public uint get_media_from_uri (string uri, GLib.List keys, Grl.OperationOptions options, Grl.SourceResolveCb callback);
		public unowned Grl.Media get_media_from_uri_sync (string uri, GLib.List keys, Grl.OperationOptions options) throws GLib.Error;
		public unowned string get_name ();
		public unowned Grl.Plugin get_plugin ();
		public int get_rank ();
		public Grl.MediaType get_supported_media ();
		public unowned string get_tags ();
		public virtual bool may_resolve (Grl.Media media, Grl.KeyID key_id, out GLib.List<weak Grl.KeyID> missing_keys);
		[NoWrapper]
		public virtual void media_from_uri (Grl.SourceMediaFromUriSpec mfus);
		public void notify_change (Grl.Media media, Grl.SourceChangeType change_type, bool location_unknown);
		public void notify_change_list (GLib.PtrArray changed_medias, Grl.SourceChangeType change_type, bool location_unknown);
		public virtual bool notify_change_start () throws GLib.Error;
		public virtual bool notify_change_stop () throws GLib.Error;
		public virtual void query (string query, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options, Grl.SourceResultCb callback);
		public GLib.List<Grl.Media> query_sync (string query, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options) throws GLib.Error;
		public virtual void remove (Grl.Media media, Grl.SourceRemoveCb callback);
		public void remove_sync (Grl.Media media) throws GLib.Error;
		public virtual void resolve (Grl.Media media, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options, Grl.SourceResolveCb callback);
		public unowned Grl.Media resolve_sync (Grl.Media media, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options) throws GLib.Error;
		public virtual void search (string text, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options, Grl.SourceResultCb callback);
		public GLib.List<Grl.Media> search_sync (string text, GLib.List<Grl.KeyID> keys, Grl.OperationOptions options) throws GLib.Error;
		public void set_auto_split_threshold (uint threshold);
		public virtual unowned GLib.List<weak Grl.KeyID> slow_keys ();
		public virtual void store (Grl.MediaBox parent, Grl.Media media, Grl.WriteFlags flags, Grl.SourceStoreCb callback);
		public virtual void store_metadata (Grl.Media media, GLib.List<Grl.KeyID> keys, Grl.WriteFlags flags, Grl.SourceStoreCb callback);
		public unowned GLib.List store_metadata_sync (Grl.Media media, GLib.List keys, Grl.WriteFlags flags) throws GLib.Error;
		public void store_sync (Grl.MediaBox parent, Grl.Media media, Grl.WriteFlags flags) throws GLib.Error;
		public virtual unowned GLib.List<weak Grl.KeyID> supported_keys ();
		public virtual Grl.SupportedOps supported_operations ();
		public virtual bool test_media_from_uri (string uri);
		public virtual unowned GLib.List<weak Grl.KeyID> writable_keys ();
		public uint auto_split_threshold { get; set; }
		[NoAccessorMethod]
		public Grl.Plugin plugin { owned get; set construct; }
		[NoAccessorMethod]
		public int rank { get; set construct; }
		[NoAccessorMethod]
		public string source_desc { owned get; set construct; }
		[NoAccessorMethod]
		public GLib.Icon source_icon { owned get; set construct; }
		[NoAccessorMethod]
		public string source_id { owned get; set construct; }
		[NoAccessorMethod]
		public string source_name { owned get; set construct; }
		[CCode (array_length = false, array_null_terminated = true)]
		[NoAccessorMethod]
		public string[] source_tags { owned get; set construct; }
		[NoAccessorMethod]
		public Grl.MediaType supported_media { get; set construct; }
		public virtual signal void content_changed (GLib.PtrArray p0, Grl.SourceChangeType p1, bool p2);
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceBrowseSpec {
		public weak Grl.SourceResultCb callback;
		public weak Grl.Media container;
		public weak GLib.List keys;
		public uint operation_id;
		public weak Grl.OperationOptions options;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceMediaFromUriSpec {
		public weak Grl.SourceResolveCb callback;
		public weak GLib.List keys;
		public uint operation_id;
		public weak Grl.OperationOptions options;
		public weak Grl.Source source;
		public weak string uri;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceQuerySpec {
		public weak Grl.SourceResultCb callback;
		public weak GLib.List keys;
		public uint operation_id;
		public weak Grl.OperationOptions options;
		public weak string query;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceRemoveSpec {
		public weak Grl.SourceRemoveCb callback;
		public weak Grl.Media media;
		public weak string media_id;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceResolveSpec {
		public weak Grl.SourceResolveCb callback;
		public weak GLib.List keys;
		public weak Grl.Media media;
		public uint operation_id;
		public weak Grl.OperationOptions options;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceSearchSpec {
		public weak Grl.SourceResultCb callback;
		public weak GLib.List keys;
		public uint operation_id;
		public weak Grl.OperationOptions options;
		public weak Grl.Source source;
		public weak string text;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceStoreMetadataSpec {
		public weak Grl.SourceStoreCb callback;
		public weak GLib.List failed_keys;
		public Grl.WriteFlags flags;
		public weak GLib.List keys;
		public weak Grl.Media media;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[Compact]
	public class SourceStoreSpec {
		public weak Grl.SourceStoreCb callback;
		public weak Grl.Media media;
		public weak Grl.MediaBox parent;
		public weak Grl.Source source;
		public void* user_data;
	}
	[CCode (cheader_filename = "grilo.h")]
	[SimpleType]
	public struct KeyID {
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_LOG_LEVEL_", has_type_id = false)]
	public enum LogLevel {
		NONE,
		ERROR,
		WARNING,
		MESSAGE,
		INFO,
		DEBUG,
		LAST
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_MEDIA_SERIALIZE_", has_type_id = false)]
	public enum MediaSerializeType {
		BASIC,
		PARTIAL,
		FULL
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_MEDIA_TYPE_", has_type_id = false)]
	public enum MediaType {
		NONE,
		AUDIO,
		VIDEO,
		IMAGE,
		ALL
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_RANK_", has_type_id = false)]
	public enum Rank {
		LOWEST,
		LOW,
		DEFAULT,
		HIGH,
		HIGHEST
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_RESOLVE_", has_type_id = false)]
	public enum ResolutionFlags {
		NORMAL,
		FULL,
		IDLE_RELAY,
		FAST_ONLY
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_CONTENT_", has_type_id = false)]
	public enum SourceChangeType {
		CHANGED,
		ADDED,
		REMOVED
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_OP_", has_type_id = false)]
	public enum SupportedOps {
		NONE,
		RESOLVE,
		BROWSE,
		SEARCH,
		QUERY,
		STORE,
		STORE_PARENT,
		STORE_METADATA,
		REMOVE,
		MEDIA_FROM_URI,
		NOTIFY_CHANGE
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_TYPE_FILTER_", has_type_id = false)]
	public enum TypeFilter {
		NONE,
		AUDIO,
		VIDEO,
		IMAGE,
		ALL
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_WRITE_", has_type_id = false)]
	public enum WriteFlags {
		NORMAL,
		FULL
	}
	[CCode (cheader_filename = "grilo.h", cprefix = "GRL_CORE_ERROR_")]
	public errordomain CoreError {
		BROWSE_FAILED,
		SEARCH_FAILED,
		SEARCH_NULL_UNSUPPORTED,
		QUERY_FAILED,
		RESOLVE_FAILED,
		MEDIA_NOT_FOUND,
		STORE_FAILED,
		STORE_METADATA_FAILED,
		REMOVE_FAILED,
		MEDIA_FROM_URI_FAILED,
		CONFIG_LOAD_FAILED,
		CONFIG_FAILED,
		UNREGISTER_SOURCE_FAILED,
		LOAD_PLUGIN_FAILED,
		UNLOAD_PLUGIN_FAILED,
		REGISTER_METADATA_KEY_FAILED,
		NOTIFY_CHANGED_FAILED,
		OPERATION_CANCELLED
	}
	[CCode (cheader_filename = "grilo.h", instance_pos = 2.1)]
	public delegate void SourceRemoveCb (Grl.Source source, Grl.Media? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 3.1)]
	public delegate void SourceResolveCb (Grl.Source source, uint operation_id, Grl.Media? media, GLib.Error error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 4.1)]
	public delegate void SourceResultCb (Grl.Source source, uint operation_id, Grl.Media? media, uint remaining, GLib.Error? error);
	[CCode (cheader_filename = "grilo.h", instance_pos = 3.1)]
	public delegate void SourceStoreCb (Grl.Source source, Grl.MediaBox? parent, Grl.Media? media, GLib.Error? error);
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_APIKEY;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_APIKEY_BLOB;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_APISECRET;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_APITOKEN;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_APITOKEN_SECRET;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_PASSWORD;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_PLUGIN;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_SOURCE;
	[CCode (cheader_filename = "grilo.h")]
	public const string CONFIG_KEY_USERNAME;
	[CCode (cheader_filename = "grilo.h")]
	public const int COUNT_INFINITY;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_AUTHOR;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_DESCRIPTION;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_LICENSE;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_LIST_VAR;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_NAME;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_PATH_VAR;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_RANKS_VAR;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_SITE;
	[CCode (cheader_filename = "grilo.h")]
	public const string PLUGIN_VERSION;
	[CCode (cheader_filename = "grilo.h")]
	public static unowned GLib.DateTime date_time_from_iso8601 (string date);
	[CCode (cheader_filename = "grilo.h")]
	public static void deinit ();
	[CCode (cheader_filename = "grilo.h")]
	public static void init ([CCode (array_length_pos = 0.9)] ref unowned string[] argv);
	[CCode (cheader_filename = "grilo.h")]
	public static unowned GLib.OptionGroup init_get_option_group ();
	[CCode (cheader_filename = "grilo.h")]
	public static unowned GLib.List list_from_va (void* p, ...);
	[CCode (cheader_filename = "grilo.h")]
	public static void log (Grl.LogDomain domain, Grl.LogLevel level, string strloc, string format);
	[CCode (cheader_filename = "grilo.h")]
	public static void log_configure (string config);
	[CCode (cheader_filename = "grilo.h")]
	public static void multiple_get_media_from_uri (string uri, GLib.List keys, Grl.OperationOptions options, Grl.SourceResolveCb callback);
	[CCode (cheader_filename = "grilo.h")]
	public static uint multiple_search (GLib.List sources, string text, GLib.List keys, Grl.OperationOptions options, Grl.SourceResultCb callback);
	[CCode (cheader_filename = "grilo.h")]
	public static unowned GLib.List multiple_search_sync (GLib.List sources, string text, GLib.List keys, Grl.OperationOptions options) throws GLib.Error;
	[CCode (cheader_filename = "grilo.h")]
	public static void paging_translate (uint skip, uint count, uint max_page_size, uint page_size, uint page_number, uint internal_offset);
}
