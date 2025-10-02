// /helpers/axiosInstance.ts
import axios from 'axios';

const axiosInstance = axios.create({
    // You can set a base URL if all your API routes start with the same path
    // baseURL: '/api',
    withCredentials: true, // Ensures cookies are sent with every request
});

// Add a response interceptor
axiosInstance.interceptors.response.use(
    // If the response is successful, just return it
    (response) => response,
    // If the response has an error
    async (error) => {
        const originalRequest = error.config;

        // Check if the error is a 401 (Unauthorized) and we haven't already retried
        if (error.response.status === 401 && !originalRequest._retry) {
            originalRequest._retry = true; // Mark that we are retrying this request

            try {
                // Make the request to your refresh token endpoint
                await axios.post('/api/users/refresh-token', {}, {
                    withCredentials: true,
                });

                // If the refresh is successful, retry the original request
                return axiosInstance(originalRequest);
            } catch (refreshError) {
                // If the refresh token is also expired or invalid, handle the final logout
                // For example, redirect to the login page
                // window.location.href = '/login';
                console.error("Session expired. Please log in again.");
                return Promise.reject(refreshError);
            }
        }

        // For any other errors, just reject the promise
        return Promise.reject(error);
    }
);

export default axiosInstance;