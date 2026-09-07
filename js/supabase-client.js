/* Public browser credentials for the existing project. Never put a service_role key here. */
const SUPABASE_URL = 'https://dgjoziquszkfnyhxtyte.supabase.co';
const SUPABASE_PUBLISHABLE_KEY = 'sb_publishable_Gt-IlkZJ0wxLXHrUlKkClQ_DDMJVPiy';
if (!window.supabase) throw new Error('The Supabase JavaScript CDN did not load.');
const db = window.supabase.createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY, {auth:{persistSession:true,autoRefreshToken:true,detectSessionInUrl:true}});
