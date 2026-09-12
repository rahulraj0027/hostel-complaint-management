-- Run in the Supabase SQL Editor as the project owner.
-- This changes only future uploads to the existing private bucket; it does not
-- alter existing objects, bucket privacy, or Storage RLS policies.
update storage.buckets
set file_size_limit = 3145728,
    allowed_mime_types = array['image/jpeg', 'image/png', 'image/webp']::text[]
where id = 'complaint-attachments';

