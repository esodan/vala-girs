/* folks-libsocialweb.vapi generated by valac 0.36.4, do not modify. */

[CCode (gir_namespace = "FolksLibsocialweb", gir_version = "0.6")]
namespace Swf {
	/**
	 * A persona subclass which represents a single libsocialweb contact.
	 *
	 * There is a one-to-one correspondence between {@link Swf.Persona}s and
	 * {@link SocialWebClient.Contact}s.
	 */
	[CCode (cheader_filename = "folks/folks-libsocialweb.h")]
	public class Persona : Folks.Persona, Folks.AvatarDetails, Folks.GenderDetails, Folks.ImDetails, Folks.NameDetails, Folks.UrlDetails, Folks.WebServiceDetails {
		/**
		 * Create a new persona.
		 *
		 * Create a new persona for the {@link PersonaStore} ``store``, representing
		 * the libsocialweb contact given by ``contact``.
		 *
		 * @param store the store which will contain the persona
		 * @param contact the libsocialweb contact being represented by the new
		 * persona
		 */
		public Persona (Swf.PersonaStore store, SocialWebClient.Contact contact);
		/**
		 * Get the ID of the libsocialweb contact.
		 *
		 * @param contact contact to return the ID from
		 * @return ID of ``contact``
		 *
		 * @since 0.5.0
		 */
		public static string? get_contact_id (SocialWebClient.Contact contact);
		/**
		 * Update the persona from the given contact.
		 *
		 * This will update the values of all the persona's properties from the
		 * properties of the given contact.
		 *
		 * @param contact contact to update the persona from
		 *
		 * @since 0.5.0
		 */
		public void update (SocialWebClient.Contact contact);
		/**
		 * The names of the Persona's linkable properties.
		 *
		 * See {@link Folks.Persona.linkable_properties}.
		 */
		public override string[] linkable_properties { get; }
		/**
		 * The Contact from libsocialweb
		 */
		public SocialWebClient.Contact lsw_contact { get; construct; }
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.0
		 */
		public override string[] writeable_properties { get; }
	}
	/**
	 * A persona store which is associated with a single libsocialweb service.
	 *
	 * It will create {@link Persona}s for each of the contacts known to that
	 * service.
	 */
	[CCode (cheader_filename = "folks/folks-libsocialweb.h")]
	public class PersonaStore : Folks.PersonaStore {
		/**
		 * Create a new PersonaStore.
		 *
		 * Create a new persona store to store the {@link Persona}s for the contacts
		 * provided by the ``service``.
		 *
		 * @param service the libsocialweb service being represented by the new
		 * persona store
		 */
		public PersonaStore (SocialWebClient.ClientService service);
		/**
		 * Add a new {@link Persona} to the PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.add_persona_from_details}.
		 *
		 * @throws Folks.PersonaStoreError.READ_ONLY every time — libsocialweb is
		 * read-only
		 */
		public override async Folks.Persona? add_persona_from_details (GLib.HashTable<string,GLib.Value?> details) throws Folks.PersonaStoreError;
		/**
		 * Prepare the PersonaStore for use.
		 *
		 * See {@link Folks.PersonaStore.prepare}.
		 *
		 * @throws Folks.PersonaStoreError.INVALID_ARGUMENT if the libsocialweb
		 * service capabilities couldn’t be retrieved, or if the ‘contacts’ capability
		 * wasn’t found, or if a view couldn’t be opened
		 */
		public override async void prepare () throws GLib.Error;
		/**
		 * Remove a {@link Persona} from the PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.remove_persona}.
		 *
		 * @throws Folks.PersonaStoreError.READ_ONLY every time — libsocialweb is
		 * read-only
		 */
		public override async void remove_persona (Folks.Persona persona) throws Folks.PersonaStoreError;
		/**
		 * {@inheritDoc}
		 *
		 * @since 0.6.2
		 */
		public override string[] always_writeable_properties { get; }
		/**
		 * Whether this PersonaStore can add {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_add_personas}.
		 *
		 * @since 0.5.0
		 */
		public override Folks.MaybeBool can_add_personas { get; }
		/**
		 * Whether this PersonaStore can set the alias of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_alias_personas}.
		 *
		 * @since 0.5.0
		 */
		public override Folks.MaybeBool can_alias_personas { get; }
		/**
		 * Whether this PersonaStore can set the groups of {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_group_personas}.
		 *
		 * @since 0.5.0
		 */
		public override Folks.MaybeBool can_group_personas { get; }
		/**
		 * Whether this PersonaStore can remove {@link Folks.Persona}s.
		 *
		 * See {@link Folks.PersonaStore.can_remove_personas}.
		 *
		 * @since 0.5.0
		 */
		public override Folks.MaybeBool can_remove_personas { get; }
		/**
		 * Whether this PersonaStore has been prepared.
		 *
		 * See {@link Folks.PersonaStore.is_prepared}.
		 *
		 * @since 0.5.0
		 */
		public override bool is_prepared { get; }
		public override bool is_quiescent { get; }
		/**
		 * The {@link Persona}s exposed by this PersonaStore.
		 *
		 * See {@link Folks.PersonaStore.personas}.
		 */
		public override Gee.Map<string,Folks.Persona> personas { get; }
		/**
		 * The libsocialweb {@link SocialWebClient.ClientService} associated with the
		 * persona store.
		 *
		 * @since 0.6.6
		 */
		public SocialWebClient.ClientService service { get; construct; }
		/**
		 * The type of persona store this is.
		 *
		 * See {@link Folks.PersonaStore.type_id}.
		 */
		public override string type_id { get; }
	}
}
