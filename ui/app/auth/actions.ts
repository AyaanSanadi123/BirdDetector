// web/app/auth/actions.ts
'use server'

import { createClient } from '@/lib/supabase/server';
import { createClient as createAdminClient } from '@supabase/supabase-js';
import { redirect } from 'next/navigation';
import { revalidatePath } from 'next/cache';

export async function signOut() {
  const supabase = await createClient();
  await supabase.auth.signOut();
  redirect('/login');
}

export async function deleteAccount() {
  const supabase = await createClient();
  
  // 1. Get Current User ID
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect('/login');

  const userId = user.id;

  // 2. Initialize Admin Client 
  // (Required to delete the user from the Auth system)
  // Ensure you have SUPABASE_SERVICE_ROLE_KEY in your .env.local
  const supabaseAdmin = createAdminClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY! 
  );

  try {
    // A. DELETE DATABASE RECORDS
    // Assuming you have a Foreign Key with 'ON DELETE CASCADE' setup in SQL,
    // this might happen automatically. If not, we delete manually:
    await supabase.from('identifications').delete().eq('user_id', userId);

    // B. DELETE STORAGE FILES
    // We must list files first, then delete them.
    const { data: files } = await supabase.storage
      .from('BIRDS-PICS')
      .list(userId + '/'); // List all files in user's "folder"

    if (files && files.length > 0) {
      const filesToRemove = files.map(f => `${userId}/${f.name}`);
      await supabase.storage
        .from('BIRDS-PICS')
        .remove(filesToRemove);
    }

    // C. DELETE AUTH USER (The final kill switch)
    const { error: deleteError } = await supabaseAdmin.auth.admin.deleteUser(userId);
    
    if (deleteError) {
      console.error("Auth Deletion Failed:", deleteError);
      throw new Error("Could not delete user account");
    }

  } catch (error) {
    console.error("Delete Account Error:", error);
    throw new Error("Failed to delete account");
  }

  // 3. Sign out and Redirect
  await supabase.auth.signOut();
  redirect('/login');
}