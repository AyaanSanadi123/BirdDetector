import { createClient } from '@/lib/supabase/server';
import { redirect } from 'next/navigation';
import HistoryCard from './HistoryCard';

export default async function HistoryPage() {
  const supabase = await createClient();

  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect('/login');

  const { data: identifications, error } = await supabase
    .from('identifications')
    .select('*')
    .eq('user_id', user.id)
    .order('created_at', { ascending: false });

  if (error) {
    return <div className="p-8 text-red-500">Failed to load history.</div>;
  }

  return (
    <div className="max-w-6xl mx-auto p-6">
      <h1 className="text-3xl font-bold mb-8">Your Bird Sightings</h1>

      {identifications && identifications.length === 0 ? (
        <div className="text-center py-12 bg-gray-50 rounded-lg">
          <p className="text-gray-500">You haven't identified any birds yet.</p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {identifications?.map((item) => (
            <HistoryCard key={item.id} item={item} />
          ))}
        </div>
      )}
    </div>
  );
}