/* folks.vapi generated by valac 0.17.1.30-9f74-dirty, do not modify. */

namespace Folks {
	[CCode (cheader_filename = "folks/folks.h")]
	public abstract class AbstractFieldDetails<T> : GLib.Object {
		public const string PARAM_TYPE;
		public const string PARAM_TYPE_HOME;
		public const string PARAM_TYPE_OTHER;
		public const string PARAM_TYPE_WORK;
		public AbstractFieldDetails ();
		public void add_parameter (string parameter_name, string parameter_value);
		public virtual bool equal (Folks.AbstractFieldDetails<T> that);
		public void extend_parameters (Gee.MultiMap<string,string> additional);
		public Gee.Collection<string>? get_parameter_values (string parameter_name);
		public virtual uint hash ();
		public virtual bool parameters_equal (Folks.AbstractFieldDetails<T> that);
		public void remove_parameter_all (string parameter_name);
		public void set_parameter (string parameter_name, string parameter_value);
		public virtual bool values_equal (Folks.AbstractFieldDetails<T> that);
		public virtual string id { get; set; }
		public virtual Gee.MultiMap<string,string> parameters { get; set construct; }
		public virtual T value { get; set construct; }
		public GLib.Type value_type { get; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class AvatarCache : GLib.Object {
		public string build_uri_for_avatar (string id);
		public static Folks.AvatarCache dup ();
		public async GLib.LoadableIcon? load_avatar (string id) throws GLib.Error;
		public async void remove_avatar (string id) throws GLib.Error;
		public async string store_avatar (string id, GLib.LoadableIcon avatar) throws GLib.Error;
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public abstract class Backend : GLib.Object {
		public Backend ();
		public abstract async void prepare () throws GLib.Error;
		public abstract async void unprepare () throws GLib.Error;
		public abstract bool is_prepared { get; }
		public abstract bool is_quiescent { get; }
		public abstract string name { get; }
		public abstract Gee.Map<string,Folks.PersonaStore> persona_stores { get; }
		public signal void persona_store_added (Folks.PersonaStore store);
		public signal void persona_store_removed (Folks.PersonaStore store);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class BackendStore : GLib.Object {
		public static string KEY_FILE_GROUP_ALL_OTHERS;
		public void add_backend (Folks.Backend backend);
		public async void disable_backend (string name);
		public static Folks.BackendStore dup ();
		public Folks.Backend? dup_backend_by_name (string name);
		public async void enable_backend (string name);
		public Gee.Collection<Folks.Backend> list_backends ();
		public async void load_backends () throws GLib.Error;
		public async void prepare ();
		public Gee.Map<string,Folks.Backend> enabled_backends { get; private set; }
		public bool is_prepared { get; private set; }
		public signal void backend_available (Folks.Backend backend);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class Debug : GLib.Object {
		public const string STATUS_LOG_DOMAIN;
		public static Folks.Debug dup ();
		public static Folks.Debug dup_with_flags (string? debug_flags, bool colour_enabled);
		public void emit_print_status ();
		public void indent ();
		[PrintfFormat]
		public void print_heading (string domain, GLib.LogLevelFlags level, string format, ...);
		public void print_key_value_pairs (string domain, GLib.LogLevelFlags level, ...);
		[PrintfFormat]
		public void print_line (string domain, GLib.LogLevelFlags level, string format, ...);
		public void unindent ();
		public bool colour_enabled { get; set; }
		public bool debug_output_enabled { get; set; }
		public signal void print_status ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class EmailFieldDetails : Folks.AbstractFieldDetails<string> {
		public EmailFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public override uint hash ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class ImFieldDetails : Folks.AbstractFieldDetails<string> {
		public ImFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public override uint hash ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class Individual : GLib.Object, Folks.AliasDetails, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GenderDetails, Folks.GroupDetails, Folks.ImDetails, Folks.InteractionDetails, Folks.LocalIdDetails, Folks.NameDetails, Folks.NoteDetails, Folks.PresenceDetails, Folks.PhoneDetails, Folks.PostalAddressDetails, Folks.RoleDetails, Folks.UrlDetails, Folks.WebServiceDetails {
		public Individual (Gee.Set<Folks.Persona>? personas);
		public string id { get; private set; }
		public bool is_user { get; private set; }
		public Gee.Set<Folks.Persona> personas { get; set; }
		public Folks.TrustLevel trust_level { get; private set; }
		public signal void personas_changed (Gee.Set<Folks.Persona> added, Gee.Set<Folks.Persona> removed);
		public signal void removed (Folks.Individual? replacement_individual);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class IndividualAggregator : GLib.Object {
		public IndividualAggregator ();
		public async Folks.Persona? add_persona_from_details (Folks.Individual? parent, Folks.PersonaStore persona_store, GLib.HashTable<string,GLib.Value?> details) throws Folks.IndividualAggregatorError;
		public async Folks.Persona ensure_individual_property_writeable (Folks.Individual individual, string property_name) throws Folks.IndividualAggregatorError;
		public Gee.Map<Folks.Individual,Gee.Map<Folks.Individual,Folks.MatchResult>> get_all_potential_matches (Folks.MatchResult min_threshold = MatchResult.VERY_HIGH);
		public Gee.Map<Folks.Individual,Folks.MatchResult> get_potential_matches (Folks.Individual matchee, Folks.MatchResult min_threshold = MatchResult.VERY_HIGH);
		public async void link_personas (Gee.Set<Folks.Persona> personas) throws Folks.IndividualAggregatorError;
		public async Folks.Individual? look_up_individual (string id) throws GLib.Error;
		public async void prepare () throws GLib.Error;
		public async void remove_individual (Folks.Individual individual) throws GLib.Error;
		public async void remove_persona (Folks.Persona persona) throws GLib.Error;
		public async void unlink_individual (Folks.Individual individual) throws GLib.Error;
		public Gee.Map<string,Folks.Individual> individuals { get; private set; }
		public bool is_prepared { get; }
		public bool is_quiescent { get; }
		public Folks.PersonaStore? primary_store { get; }
		public Folks.Individual? user { get; private set; }
		[Deprecated (replacement = "IndividualAggregator.individuals_changed_detailed", since = "0.6.2")]
		public signal void individuals_changed (Gee.Set<Folks.Individual> added, Gee.Set<Folks.Individual> removed, string? message, Folks.Persona? actor, Folks.GroupDetails.ChangeReason reason);
		public signal void individuals_changed_detailed (Gee.MultiMap<Folks.Individual?,Folks.Individual?> changes);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class NoteFieldDetails : Folks.AbstractFieldDetails<string> {
		public NoteFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null, string? uid = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public override uint hash ();
		public override string id { get; set; }
		[Deprecated (replacement = "AbstractFieldDetails.id", since = "0.6.5")]
		public string uid { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public abstract class ObjectCache<T> : GLib.Object {
		protected ObjectCache (string type_id, string id);
		public async void clear_cache ();
		protected abstract T deserialise_object (GLib.Variant variant, uint8 object_version);
		protected abstract GLib.VariantType? get_serialised_object_type (uint8 object_version);
		protected abstract uint8 get_serialised_object_version ();
		public async Gee.Set<T>? load_objects (GLib.Cancellable? cancellable = null);
		protected abstract GLib.Variant serialise_object (T object);
		public async void store_objects (Gee.Set<T> objects, GLib.Cancellable? cancellable = null);
		public string id { get; construct; }
		public string type_id { get; construct; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public abstract class Persona : GLib.Object {
		public delegate void LinkablePropertyCallback (string link);
		public Persona ();
		public static string build_uid (string backend_name, string persona_store_id, string persona_id);
		public virtual void linkable_property_to_links (string prop_name, Folks.Persona.LinkablePropertyCallback callback);
		public static void split_uid (string uid, out string backend_name, out string persona_store_id, out string persona_id);
		public string display_id { get; construct; }
		public string iid { get; construct; }
		public Folks.Individual? individual { get; internal set; }
		public bool is_user { get; construct; }
		public abstract string[] linkable_properties { get; }
		public Folks.PersonaStore store { get; construct; }
		public string uid { get; construct; }
		public abstract string[] writeable_properties { get; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public abstract class PersonaStore : GLib.Object {
		public PersonaStore ();
		protected void _emit_personas_changed (Gee.Set<Folks.Persona>? added, Gee.Set<Folks.Persona>? removed, string? message = null, Folks.Persona? actor = null, Folks.GroupDetails.ChangeReason reason = GroupDetails.ChangeReason.NONE);
		public abstract async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		public static unowned string? detail_key (Folks.PersonaDetail detail);
		public virtual async void flush ();
		public abstract async void prepare () throws GLib.Error;
		public abstract async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		public abstract string[] always_writeable_properties { get; }
		public abstract Folks.MaybeBool can_add_personas { get; }
		[Deprecated (replacement = "PersonaStore.always_writeable_properties", since = "0.6.3.1")]
		public abstract Folks.MaybeBool can_alias_personas { get; }
		[Deprecated (replacement = "PersonaStore.always_writeable_properties", since = "0.6.3.1")]
		public abstract Folks.MaybeBool can_group_personas { get; }
		public abstract Folks.MaybeBool can_remove_personas { get; }
		public string display_name { get; construct; }
		public string id { get; construct; }
		public abstract bool is_prepared { get; }
		public bool is_primary_store { get; internal set; }
		public abstract bool is_quiescent { get; }
		public bool is_user_set_default { get; internal set; }
		[Deprecated (replacement = "PersonaStore.is_primary_store", since = "0.6.3")]
		public bool is_writeable { get; set; }
		public abstract Gee.Map<string,Folks.Persona> personas { get; }
		public Folks.PersonaStoreTrust trust_level { get; set; }
		public abstract string type_id { get; }
		public signal void personas_changed (Gee.Set<Folks.Persona> added, Gee.Set<Folks.Persona> removed, string? message, Folks.Persona? actor, Folks.GroupDetails.ChangeReason reason);
		public signal void removed ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class PhoneFieldDetails : Folks.AbstractFieldDetails<string> {
		public PhoneFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public string get_normalised ();
		public override uint hash ();
		public override bool values_equal (Folks.AbstractFieldDetails<string> that);
		public override string id { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class PostalAddress : GLib.Object {
		public PostalAddress (string? po_box, string? extension, string? street, string? locality, string? region, string? postal_code, string? country, string? address_format, string? uid);
		public bool equal (Folks.PostalAddress with);
		public bool is_empty ();
		public string to_string ();
		public string address_format { get; set construct; }
		public string country { get; set construct; }
		public string extension { get; set construct; }
		public string locality { get; set construct; }
		public string po_box { get; set construct; }
		public string postal_code { get; set construct; }
		public string region { get; set construct; }
		public string street { get; set construct; }
		[Deprecated (replacement = "AbstractFieldDetails.id", since = "0.6.5")]
		public string uid { get; set construct; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class PostalAddressFieldDetails : Folks.AbstractFieldDetails<Folks.PostalAddress> {
		public PostalAddressFieldDetails (Folks.PostalAddress value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<Folks.PostalAddress> that);
		public override uint hash ();
		public override string id { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class PotentialMatch : GLib.Object {
		public static Gee.Set<string> known_email_aliases;
		public PotentialMatch ();
		public Folks.MatchResult potential_match (Folks.Individual a, Folks.Individual b);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class Role : GLib.Object {
		public Role (string? title = null, string? organisation_name = null, string? uid = null);
		public static bool equal (Folks.Role a, Folks.Role b);
		public static uint hash (Folks.Role r);
		public bool is_empty ();
		public string to_string ();
		public string organisation_name { get; set; }
		public string role { get; set; }
		public string title { get; set; }
		[Deprecated (replacement = "AbstractFieldDetails.id", since = "0.6.5")]
		public string uid { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class RoleFieldDetails : Folks.AbstractFieldDetails<Folks.Role> {
		public RoleFieldDetails (Folks.Role value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<Folks.Role> that);
		public override uint hash ();
		public override string id { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class StructuredName : GLib.Object {
		public StructuredName (string? family_name, string? given_name, string? additional_names, string? prefixes, string? suffixes);
		public bool equal (Folks.StructuredName other);
		public bool is_empty ();
		public StructuredName.simple (string? family_name, string? given_name);
		public string to_string ();
		public string additional_names { get; set construct; }
		public string family_name { get; set construct; }
		public string given_name { get; set construct; }
		public string prefixes { get; set construct; }
		public string suffixes { get; set construct; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class UrlFieldDetails : Folks.AbstractFieldDetails<string> {
		public const string PARAM_TYPE_BLOG;
		public const string PARAM_TYPE_FTP;
		public const string PARAM_TYPE_HOME_PAGE;
		public const string PARAM_TYPE_PROFILE;
		public UrlFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public override uint hash ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class Utils : GLib.Object {
		public Utils ();
		public static bool multi_map_str_afd_equal (Gee.MultiMap<string,Folks.AbstractFieldDetails> a, Gee.MultiMap<string,Folks.AbstractFieldDetails> b);
		public static bool multi_map_str_str_equal (Gee.MultiMap<string,string> a, Gee.MultiMap<string,string> b);
		public static bool set_afd_equal (Gee.Set<Folks.AbstractFieldDetails> a, Gee.Set<Folks.AbstractFieldDetails> b);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public class WebServiceFieldDetails : Folks.AbstractFieldDetails<string> {
		public WebServiceFieldDetails (string value, Gee.MultiMap<string,string>? parameters = null);
		public override bool equal (Folks.AbstractFieldDetails<string> that);
		public override uint hash ();
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface AliasDetails : GLib.Object {
		public virtual async void change_alias (string alias) throws Folks.PropertyError;
		public abstract string alias { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface AvatarDetails : GLib.Object {
		public virtual async void change_avatar (GLib.LoadableIcon? avatar) throws Folks.PropertyError;
		public abstract GLib.LoadableIcon? avatar { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface BirthdayDetails : GLib.Object {
		public virtual async void change_birthday (GLib.DateTime? birthday) throws Folks.PropertyError;
		public virtual async void change_calendar_event_id (string? event_id) throws Folks.PropertyError;
		public abstract GLib.DateTime? birthday { get; set; }
		public abstract string? calendar_event_id { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface EmailDetails : GLib.Object {
		public virtual async void change_email_addresses (Gee.Set<Folks.EmailFieldDetails> email_addresses) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.EmailFieldDetails> email_addresses { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface FavouriteDetails : GLib.Object {
		public virtual async void change_is_favourite (bool is_favourite) throws Folks.PropertyError;
		public abstract bool is_favourite { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface GenderDetails : GLib.Object {
		public virtual async void change_gender (Folks.Gender gender) throws Folks.PropertyError;
		public abstract Folks.Gender gender { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface GroupDetails : GLib.Object {
		public enum ChangeReason {
			NONE,
			OFFLINE,
			KICKED,
			BUSY,
			INVITED,
			BANNED,
			ERROR,
			INVALID_MEMBER,
			NO_ANSWER,
			RENAMED,
			PERMISSION_DENIED,
			SEPARATED
		}
		public abstract async void change_group (string group, bool is_member) throws GLib.Error;
		public virtual async void change_groups (Gee.Set<string> groups) throws Folks.PropertyError;
		public abstract Gee.Set<string> groups { get; set; }
		public signal void group_changed (string group, bool is_member);
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface ImDetails : GLib.Object {
		public virtual async void change_im_addresses (Gee.MultiMap<string,Folks.ImFieldDetails> im_addresses) throws Folks.PropertyError;
		public static string normalise_im_address (string im_address, string protocol) throws Folks.ImDetailsError;
		public abstract Gee.MultiMap<string,Folks.ImFieldDetails> im_addresses { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface InteractionDetails : GLib.Object {
		public abstract uint call_interaction_count { get; }
		public abstract uint im_interaction_count { get; }
		public abstract GLib.DateTime? last_call_interaction_datetime { get; }
		public abstract GLib.DateTime? last_im_interaction_datetime { get; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface LocalIdDetails : GLib.Object {
		public virtual async void change_local_ids (Gee.Set<string> local_ids) throws Folks.PropertyError;
		public abstract Gee.Set<string> local_ids { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface NameDetails : GLib.Object {
		public virtual async void change_full_name (string full_name) throws Folks.PropertyError;
		public virtual async void change_nickname (string nickname) throws Folks.PropertyError;
		public virtual async void change_structured_name (Folks.StructuredName? name) throws Folks.PropertyError;
		public abstract string full_name { get; set; }
		public abstract string nickname { get; set; }
		public abstract Folks.StructuredName? structured_name { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface NoteDetails : GLib.Object {
		public virtual async void change_notes (Gee.Set<Folks.NoteFieldDetails> notes) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.NoteFieldDetails> notes { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface PhoneDetails : GLib.Object {
		public virtual async void change_phone_numbers (Gee.Set<Folks.PhoneFieldDetails> phone_numbers) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.PhoneFieldDetails> phone_numbers { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface PostalAddressDetails : GLib.Object {
		public virtual async void change_postal_addresses (Gee.Set<Folks.PostalAddressFieldDetails> postal_addresses) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.PostalAddressFieldDetails> postal_addresses { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface PresenceDetails : GLib.Object {
		public static unowned string get_default_message_from_type (Folks.PresenceType type);
		public bool is_online ();
		public static int typecmp (Folks.PresenceType type_a, Folks.PresenceType type_b);
		public abstract string presence_message { get; set; }
		public abstract string presence_status { get; set; }
		public abstract Folks.PresenceType presence_type { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface RoleDetails : GLib.Object {
		public virtual async void change_roles (Gee.Set<Folks.RoleFieldDetails> roles) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.RoleFieldDetails> roles { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface UrlDetails : GLib.Object {
		public virtual async void change_urls (Gee.Set<Folks.UrlFieldDetails> urls) throws Folks.PropertyError;
		public abstract Gee.Set<Folks.UrlFieldDetails> urls { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public interface WebServiceDetails : GLib.Object {
		public virtual async void change_web_service_addresses (Gee.MultiMap<string,Folks.WebServiceFieldDetails> web_service_addresses) throws Folks.PropertyError;
		public abstract Gee.MultiMap<string,Folks.WebServiceFieldDetails> web_service_addresses { get; set; }
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum Gender {
		UNSPECIFIED,
		MALE,
		FEMALE
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum MatchResult {
		NONE,
		VERY_LOW,
		LOW,
		MEDIUM,
		HIGH,
		VERY_HIGH,
		MIN,
		MAX
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum MaybeBool {
		UNSET,
		FALSE,
		TRUE
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum PersonaDetail {
		INVALID,
		ALIAS,
		AVATAR,
		BIRTHDAY,
		EMAIL_ADDRESSES,
		FULL_NAME,
		GENDER,
		IM_ADDRESSES,
		IS_FAVOURITE,
		LOCAL_IDS,
		NICKNAME,
		NOTES,
		PHONE_NUMBERS,
		POSTAL_ADDRESSES,
		ROLES,
		STRUCTURED_NAME,
		URLS,
		WEB_SERVICE_ADDRESSES,
		GROUPS,
		IM_INTERACTION_COUNT,
		LAST_IM_INTERACTION_DATETIME,
		CALL_INTERACTION_COUNT,
		LAST_CALL_INTERACTION_DATETIME
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum PersonaStoreTrust {
		NONE,
		PARTIAL,
		FULL
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum PresenceType {
		UNSET,
		OFFLINE,
		AVAILABLE,
		AWAY,
		EXTENDED_AWAY,
		HIDDEN,
		BUSY,
		UNKNOWN,
		ERROR
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public enum TrustLevel {
		NONE,
		PERSONAS
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public errordomain ImDetailsError {
		INVALID_IM_ADDRESS
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public errordomain IndividualAggregatorError {
		ADD_FAILED,
		[Deprecated (replacement = "IndividualAggregatorError.NO_PRIMARY_STORE", since = "0.6.2.1")]
		NO_WRITEABLE_STORE,
		STORE_OFFLINE,
		PROPERTY_NOT_WRITEABLE,
		NO_PRIMARY_STORE
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public errordomain PersonaStoreError {
		INVALID_ARGUMENT,
		CREATE_FAILED,
		UNSUPPORTED_ON_USER,
		STORE_OFFLINE,
		READ_ONLY,
		PERMISSION_DENIED,
		REMOVE_FAILED,
		UNSUPPORTED_ON_NON_USER
	}
	[CCode (cheader_filename = "folks/folks.h")]
	public errordomain PropertyError {
		NOT_WRITEABLE,
		INVALID_VALUE,
		UNKNOWN_ERROR
	}
}
