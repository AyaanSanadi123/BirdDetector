// middleware.ts
import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'

export async function middleware(request: NextRequest) {
  // 1. Initialize Response
  let response = NextResponse.next({
    request: {
      headers: request.headers,
    },
  })

  // 2. Initialize Supabase Client
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll()
        },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value, options }) =>
            request.cookies.set({name, value, ...options})
          )
          response = NextResponse.next({
            request: {
              headers: request.headers,
            },
          })
          cookiesToSet.forEach(({ name, value, options }) =>
            response.cookies.set(name, value, options)
          )
        },
      },
    }
  )

  // 3. Check User Session
  const { data: { user } } = await supabase.auth.getUser()

  // 4. Define Access Control
  const path = request.nextUrl.pathname;

  // List of public pages that don't require login
  const isPublicPage = 
    path === '/' || 
    path === '/login' || 
    path === '/signup';

  // We must also allow auth callback routes (for email confirmations/magic links)
  const isAuthRoute = path.startsWith('/auth');

  // We exclude API routes from this redirect logic.
  // Your API routes (like route.ts) already handle their own 401 checks returning JSON.
  // If we redirect them here, the frontend fetch will fail with a syntax error (HTML vs JSON).
  const isApiRoute = path.startsWith('/api');

  // 5. Redirect Logic
  // If user is NOT logged in AND the path is NOT public/api/auth -> Redirect to Login
  if (!user && !isPublicPage && !isAuthRoute && !isApiRoute) {
    return NextResponse.redirect(new URL('/login', request.url))
  }

  return response
}

export const config = {
  matcher: [
    // Match all request paths except for the ones starting with:
    // - _next/static (static files)
    // - _next/image (image optimization files)
    // - favicon.ico (favicon file)
    // - extension regex (svg, png, jpg, etc.)
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)',
  ],
}