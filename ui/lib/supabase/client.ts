// web/lib/supabase/client.ts
import { createBrowserClient } from '@supabase/ssr'

export function createClient() {
  // This special client automatically handles cookies in the browser
  // so the server middleware can see them.
  return createBrowserClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
  )
}