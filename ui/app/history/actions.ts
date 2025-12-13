'use server'

import { createClient } from '@/lib/supabase/server';
import { revalidatePath } from 'next/cache';

export async function deleteIdentification(id: number) {
  const supabase = await createClient();

  // Check auth again for security
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) throw new Error("Unauthorized");

  // Delete the record matching the ID and the User ID (security rule)
  const { error } = await supabase
    .from('identifications')
    .delete()
    .match({ id, user_id: user.id });

  if (error) {
    throw new Error(error.message);
  }

  // Refresh the history page to show the item is gone
  revalidatePath('/history');
}