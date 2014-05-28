/* folks-telepathy.vapi generated by valac 0.24.0.69-0559f-dirty, do not modify. */

[CCode (gir_namespace = "FolksTelepathy", gir_version = "0.6")]
namespace Tpf {
	[CCode (cheader_filename = "folks/folks-telepathy.h")]
	public class Persona : Folks.Persona, Folks.AliasDetails, Folks.AvatarDetails, Folks.BirthdayDetails, Folks.EmailDetails, Folks.FavouriteDetails, Folks.GroupDetails, Folks.InteractionDetails, Folks.ImDetails, Folks.NameDetails, Folks.PhoneDetails, Folks.PresenceDetails, Folks.UrlDetails {
		public Persona (TelepathyGLib.Contact contact, Tpf.PersonaStore store);
		public override void constructed ();
		public static Tpf.Persona? dup_for_contact (TelepathyGLib.Contact contact);
		public TelepathyGLib.Contact? contact { get; construct; }
		public bool is_in_contact_list { get; set; }
		public override string[] linkable_properties { get; }
		public override string[] writeable_properties { get; }
	}
	[CCode (cheader_filename = "folks/folks-telepathy.h")]
	public class PersonaStore : Folks.PersonaStore {
		public PersonaStore (TelepathyGLib.Account account);
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		public static Tpf.PersonaStore dup_for_account (TelepathyGLib.Account account);
		public override async void flush ();
		public static unowned Gee.Map<string,Tpf.PersonaStore> list_persona_stores ();
		public override async void prepare () throws GLib.Error;
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		[Property (blurb = "Telepathy account this store is based upon", nick = "basis account")]
		public TelepathyGLib.Account account { get; construct; }
		public override string[] always_writeable_properties { get; }
		public override Folks.MaybeBool can_add_personas { get; }
		public override Folks.MaybeBool can_alias_personas { get; }
		public override Folks.MaybeBool can_group_personas { get; }
		public override Folks.MaybeBool can_remove_personas { get; }
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		public override Gee.Map<string,Tpf.Persona> personas { get; }
		public override string type_id { get; }
	}
}
