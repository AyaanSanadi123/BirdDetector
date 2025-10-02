import DashboardHeader from "./components/DashboardHeader";
import DashboardClient from "./components/DashboardClient";

export default function DashboardPage() {
  return (
    <div className="flex flex-col w-full min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* The Header component goes at the top */}
      <DashboardHeader />

      {/* The main content area where the client component is rendered */}
      <div className="p-4 sm:p-6 md:p-8">
        <DashboardClient />
      </div>
    </div>
  );
}