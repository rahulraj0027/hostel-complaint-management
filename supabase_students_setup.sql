-- Run in the Supabase SQL Editor as the project owner.

create or replace function public.list_registered_students()
returns table(id uuid, full_name text, roll_number text, block_name text, room_number text, email text, registered_at timestamptz)
language plpgsql security definer set search_path = public, auth
as $$
begin
  if not exists (select 1 from public.profiles where id = auth.uid() and role = 'warden') then
    raise exception 'Warden access is required';
  end if;
  return query
  select p.id, p.full_name, p.roll_number, b.name, p.room_number, u.email, p.created_at
  from public.profiles p
  join auth.users u on u.id = p.id
  left join public.hostel_blocks b on b.id = p.block_id
  where p.role = 'student'
  order by p.full_name nulls last, p.roll_number nulls last;
end;
$$;

revoke all on function public.list_registered_students() from public;
grant execute on function public.list_registered_students() to authenticated;
