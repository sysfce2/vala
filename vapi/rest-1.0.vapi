/* rest-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Rest", gir_namespace = "Rest", gir_version = "1.0", lower_case_cprefix = "rest_")]
namespace Rest {
	[CCode (cheader_filename = "rest/rest-oauth2-proxy.h", lower_case_cprefix = "oauth2_proxy_", type_id = "rest_oauth2_proxy_get_type ()")]
	public class OAuth2Proxy : Rest.Proxy {
		[CCode (cname = "rest_oauth2_proxy_new", has_construct_function = false)]
		public OAuth2Proxy (string authurl, string tokenurl, string redirecturl, string client_id, string client_secret, string baseurl);
		[CCode (cname = "rest_oauth2_proxy_build_authorization_url")]
		[Version (since = "0.8")]
		public string build_authorization_url (string code_challenge, string? scope, out string state);
		[CCode (cname = "rest_oauth2_proxy_fetch_access_token_async")]
		public async bool fetch_access_token_async (string authorization_code, string code_verifier, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "rest_oauth2_proxy_get_access_token")]
		public unowned string get_access_token ();
		[CCode (cname = "rest_oauth2_proxy_get_auth_url")]
		public unowned string get_auth_url ();
		[CCode (cname = "rest_oauth2_proxy_get_client_id")]
		public unowned string get_client_id ();
		[CCode (cname = "rest_oauth2_proxy_get_client_secret")]
		public unowned string get_client_secret ();
		[CCode (cname = "rest_oauth2_proxy_get_expiration_date")]
		public GLib.DateTime get_expiration_date ();
		[CCode (cname = "rest_oauth2_proxy_get_redirect_uri")]
		public unowned string get_redirect_uri ();
		[CCode (cname = "rest_oauth2_proxy_get_refresh_token")]
		public unowned string get_refresh_token ();
		[CCode (cname = "rest_oauth2_proxy_get_token_url")]
		public unowned string get_token_url ();
		[NoWrapper]
		public virtual void parse_access_token (GLib.Bytes payload, GLib.Task task);
		[CCode (cname = "rest_oauth2_proxy_refresh_access_token")]
		public bool refresh_access_token () throws GLib.Error;
		[CCode (cname = "rest_oauth2_proxy_refresh_access_token_async")]
		public async bool refresh_access_token_async (GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "rest_oauth2_proxy_set_access_token")]
		public void set_access_token (string access_token);
		[CCode (cname = "rest_oauth2_proxy_set_auth_url")]
		public void set_auth_url (string tokenurl);
		[CCode (cname = "rest_oauth2_proxy_set_client_id")]
		public void set_client_id (string client_id);
		[CCode (cname = "rest_oauth2_proxy_set_client_secret")]
		public void set_client_secret (string client_secret);
		[CCode (cname = "rest_oauth2_proxy_set_expiration_date")]
		public void set_expiration_date (GLib.DateTime expiration_date);
		[CCode (cname = "rest_oauth2_proxy_set_redirect_uri")]
		public void set_redirect_uri (string redirect_uri);
		[CCode (cname = "rest_oauth2_proxy_set_refresh_token")]
		public void set_refresh_token (string refresh_token);
		[CCode (cname = "rest_oauth2_proxy_set_token_url")]
		public void set_token_url (string tokenurl);
		[NoAccessorMethod]
		public string access_token { owned get; set; }
		[NoAccessorMethod]
		public string auth_url { owned get; set; }
		[NoAccessorMethod]
		public string client_id { owned get; set; }
		[NoAccessorMethod]
		public string client_secret { owned get; set; }
		[NoAccessorMethod]
		public GLib.DateTime expiration_date { owned get; set; }
		[NoAccessorMethod]
		public string redirect_uri { owned get; set; }
		[NoAccessorMethod]
		public string refresh_token { owned get; set; }
		[NoAccessorMethod]
		public string token_url { owned get; set; }
	}
	[CCode (cheader_filename = "rest/rest-oauth2-proxy-call.h", lower_case_cprefix = "oauth2_proxy_call_", type_id = "rest_oauth2_proxy_call_get_type ()")]
	public class OAuth2ProxyCall : Rest.ProxyCall {
		[CCode (has_construct_function = false)]
		protected OAuth2ProxyCall ();
	}
	[CCode (cheader_filename = "rest/rest-param.h", ref_function = "rest_param_ref", type_id = "rest_param_get_type ()", unref_function = "rest_param_unref")]
	[Compact]
	public class Param {
		[CCode (has_construct_function = false)]
		public Param.full (global::string name, Rest.MemoryUse use, [CCode (array_length_cname = "length", array_length_pos = 3.5, array_length_type = "gsize")] uint8[] data, global::string content_type, global::string? filename);
		public void* get_content ();
		public size_t get_content_length ();
		public unowned global::string get_content_type ();
		public unowned global::string get_file_name ();
		public unowned global::string get_name ();
		public bool is_string ();
		public unowned Rest.Param @ref ();
		[CCode (has_construct_function = false)]
		public Param.string (global::string name, Rest.MemoryUse use, global::string string);
		public void unref ();
		[CCode (has_construct_function = false)]
		public Param.with_owner (global::string name, [CCode (array_length_cname = "length", array_length_pos = 2.5, array_length_type = "gsize")] uint8[] data, global::string content_type, global::string? filename, owned void* owner, GLib.DestroyNotify? owner_dnotify);
	}
	[CCode (cheader_filename = "rest/rest-params.h", ref_function = "rest_params_ref", type_id = "rest_params_get_type ()", unref_function = "rest_params_unref")]
	[Compact]
	public class Params {
		[CCode (has_construct_function = false)]
		public Params ();
		public void add (owned Rest.Param param);
		public bool are_strings ();
		public GLib.HashTable<weak string,weak string> as_string_hash_table ();
		public Rest.Params copy ();
		public unowned Rest.Param? @get (string name);
		public unowned Rest.Params @ref ();
		public void remove (string name);
		public void unref ();
	}
	[CCode (cheader_filename = "rest/rest-pkce-code-challenge.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "rest_pkce_code_challenge_get_type ()")]
	[Compact]
	public class PkceCodeChallenge {
		public Rest.PkceCodeChallenge copy ();
		public void free ();
		public unowned string get_challenge ();
		public unowned string get_verifier ();
		[CCode (has_construct_function = false)]
		public PkceCodeChallenge.random ();
	}
	[CCode (cheader_filename = "rest/rest-proxy.h", type_id = "rest_proxy_get_type ()")]
	public class Proxy : GLib.Object {
		[CCode (has_construct_function = false)]
		public Proxy (string url_format, bool binding_required);
		[Version (since = "0.7.92")]
		public void add_soup_feature (Soup.SessionFeature feature);
		[NoWrapper]
		public virtual bool authenticate (Rest.ProxyAuth auth, bool retrying);
		public bool bind (...);
		public unowned string get_user_agent ();
		public virtual Rest.ProxyCall new_call ();
		public void set_user_agent (string user_agent);
		[CCode (has_construct_function = false)]
		public Proxy.with_authentication (string url_format, bool binding_required, string username, string password);
		[NoAccessorMethod]
		public bool binding_required { get; set; }
		[NoAccessorMethod]
		public bool disable_cookies { get; construct; }
		[NoAccessorMethod]
		public string password { owned get; set; }
		[NoAccessorMethod]
		public string ssl_ca_file { owned get; set; }
		[NoAccessorMethod]
		public bool ssl_strict { get; set; }
		[NoAccessorMethod]
		public string url_format { owned get; set; }
		public string user_agent { get; set; }
		[NoAccessorMethod]
		public string username { owned get; set; }
	}
	[CCode (cheader_filename = "rest/rest-proxy-auth.h", type_id = "rest_proxy_auth_get_type ()")]
	public class ProxyAuth : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ProxyAuth ();
		[Version (deprecated = true, deprecated_since = "0.9")]
		public void cancel ();
		[Version (deprecated = true, deprecated_since = "0.9")]
		public void pause ();
		[Version (deprecated = true, deprecated_since = "0.9")]
		public void unpause ();
	}
	[CCode (cheader_filename = "rest/rest-proxy-call.h", type_id = "rest_proxy_call_get_type ()")]
	public class ProxyCall : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ProxyCall ();
		public void add_header (string header, string value);
		public void add_headers (...);
		public void add_param (string name, string value);
		public void add_param_full (owned Rest.Param param);
		public void add_params (...);
		public bool cancel ();
		public bool continuous ([CCode (delegate_target_pos = 2.1)] Rest.ProxyCallContinuousCallback callback, GLib.Object weak_object) throws GLib.Error;
		[Version (since = "0.7.92")]
		public unowned string get_function ();
		public unowned string get_method ();
		public unowned Rest.Params get_params ();
		public unowned string get_payload ();
		public int64 get_payload_length ();
		public GLib.HashTable<weak string,weak string> get_response_headers ();
		public uint get_status_code ();
		public unowned string get_status_message ();
		public async bool invoke_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public unowned string lookup_header (string header);
		public unowned Rest.Param? lookup_param (string name);
		public unowned string lookup_response_header (string header);
		[NoWrapper]
		public virtual bool prepare () throws GLib.Error;
		public void remove_header (string header);
		public void remove_param (string name);
		public virtual bool serialize_params (out string content_type, out string content, out size_t content_len) throws GLib.Error;
		public void set_function (string function);
		public void set_method (string method);
		public bool sync () throws GLib.Error;
		public bool upload ([CCode (delegate_target_pos = 2.1, scope = "async")] Rest.ProxyCallUploadCallback callback, GLib.Object weak_object) throws GLib.Error;
		[NoAccessorMethod]
		public Rest.Proxy proxy { owned get; construct; }
	}
	[CCode (cheader_filename = "rest/rest-xml-node.h", ref_function = "rest_xml_node_ref", type_id = "rest_xml_node_get_type ()", unref_function = "rest_xml_node_unref")]
	[Compact]
	public class XmlNode {
		public weak GLib.HashTable<void*,void*> attrs;
		public weak GLib.HashTable<void*,void*> children;
		public weak string content;
		public weak string name;
		public weak Rest.XmlNode next;
		public void add_attr (string attribute, string value);
		public unowned Rest.XmlNode add_child (string tag);
		public Rest.XmlNode find (string tag);
		public unowned string get_attr (string attr_name);
		public string print ();
		public unowned Rest.XmlNode @ref ();
		public void set_content (string value);
		public void unref ();
	}
	[CCode (cheader_filename = "rest/rest-xml-parser.h", type_id = "rest_xml_parser_get_type ()")]
	public class XmlParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public XmlParser ();
		public Rest.XmlNode parse_from_data (string data, int64 len);
	}
	[CCode (cheader_filename = "rest/rest-params.h", has_type_id = false)]
	public struct ParamsIter {
		public void init (Rest.Params @params);
		public bool next (out string name, out Rest.Param? param);
	}
	[CCode (cheader_filename = "rest/rest-param.h", cprefix = "REST_MEMORY_", has_type_id = false)]
	public enum MemoryUse {
		STATIC,
		TAKE,
		COPY
	}
	[CCode (cheader_filename = "rest/rest-proxy-call.h", cprefix = "REST_PROXY_CALL_", type_id = "rest_proxy_call_error_get_type ()")]
	public errordomain ProxyCallError {
		FAILED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "rest/rest-proxy.h", cprefix = "REST_PROXY_ERROR_", type_id = "rest_proxy_error_get_type ()")]
	public errordomain ProxyError {
		CANCELLED,
		RESOLUTION,
		CONNECTION,
		SSL,
		IO,
		FAILED,
		URL_INVALID,
		BINDING_REQUIRED,
		HTTP_MULTIPLE_CHOICES,
		HTTP_MOVED_PERMANENTLY,
		HTTP_FOUND,
		HTTP_SEE_OTHER,
		HTTP_NOT_MODIFIED,
		HTTP_USE_PROXY,
		HTTP_THREEOHSIX,
		HTTP_TEMPORARY_REDIRECT,
		HTTP_BAD_REQUEST,
		HTTP_UNAUTHORIZED,
		HTTP_FOUROHTWO,
		HTTP_FORBIDDEN,
		HTTP_NOT_FOUND,
		HTTP_METHOD_NOT_ALLOWED,
		HTTP_NOT_ACCEPTABLE,
		HTTP_PROXY_AUTHENTICATION_REQUIRED,
		HTTP_REQUEST_TIMEOUT,
		HTTP_CONFLICT,
		HTTP_GONE,
		HTTP_LENGTH_REQUIRED,
		HTTP_PRECONDITION_FAILED,
		HTTP_REQUEST_ENTITY_TOO_LARGE,
		HTTP_REQUEST_URI_TOO_LONG,
		HTTP_UNSUPPORTED_MEDIA_TYPE,
		HTTP_REQUESTED_RANGE_NOT_SATISFIABLE,
		HTTP_EXPECTATION_FAILED,
		HTTP_INTERNAL_SERVER_ERROR,
		HTTP_NOT_IMPLEMENTED,
		HTTP_BAD_GATEWAY,
		HTTP_SERVICE_UNAVAILABLE,
		HTTP_GATEWAY_TIMEOUT,
		HTTP_HTTP_VERSION_NOT_SUPPORTED;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "rest/rest-proxy-call.h", instance_pos = 3.9)]
	public delegate void ProxyCallAsyncCallback (Rest.ProxyCall call, GLib.Error? error, GLib.Object? weak_object);
	[CCode (cheader_filename = "rest/rest-proxy-call.h", instance_pos = 5.9)]
	public delegate void ProxyCallContinuousCallback (Rest.ProxyCall call, string buf, size_t len, GLib.Error? error, GLib.Object? weak_object);
	[CCode (cheader_filename = "rest/rest-proxy-call.h", instance_pos = 5.9)]
	public delegate void ProxyCallUploadCallback (Rest.ProxyCall call, size_t total, size_t uploaded, GLib.Error? error, GLib.Object? weak_object);
	[CCode (cheader_filename = "rest/rest-enum-types.h,rest/rest-oauth2-proxy-call.h,rest/rest-oauth2-proxy.h,rest/rest-param.h,rest/rest-params.h,rest/rest-pkce-code-challenge.h,rest/rest-proxy-auth.h,rest/rest-proxy-call.h,rest/rest-proxy.h,rest/rest-utils.h,rest/rest-xml-node.h,rest/rest-xml-parser.h,rest/rest.h")]
	public static GLib.Quark oauth2_error_quark ();
	[CCode (cheader_filename = "rest/rest-enum-types.h,rest/rest-oauth2-proxy-call.h,rest/rest-oauth2-proxy.h,rest/rest-param.h,rest/rest-params.h,rest/rest-pkce-code-challenge.h,rest/rest-proxy-auth.h,rest/rest-proxy-call.h,rest/rest-proxy.h,rest/rest-utils.h,rest/rest-xml-node.h,rest/rest-xml-parser.h,rest/rest.h")]
	[Version (replacement = "ProxyCallError.quark")]
	public static GLib.Quark proxy_call_error_quark ();
	[CCode (cheader_filename = "rest/rest-enum-types.h,rest/rest-oauth2-proxy-call.h,rest/rest-oauth2-proxy.h,rest/rest-param.h,rest/rest-params.h,rest/rest-pkce-code-challenge.h,rest/rest-proxy-auth.h,rest/rest-proxy-call.h,rest/rest-proxy.h,rest/rest-utils.h,rest/rest-xml-node.h,rest/rest-xml-parser.h,rest/rest.h")]
	[Version (replacement = "ProxyError.quark")]
	public static GLib.Quark proxy_error_quark ();
	[CCode (cheader_filename = "rest/rest-utils.h", cname = "random_string")]
	public static string random_string (uint length);
}