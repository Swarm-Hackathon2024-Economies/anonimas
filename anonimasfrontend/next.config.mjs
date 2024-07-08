/** @type {import('next').NextConfig} */

const isProd = process.env.NODE_ENV === "production";
const repoName = "anonimasfrontend";

const nextConfig = {
    output: "export",
    basePath: isProd ? `/${repoName}` : "",
    assetPrefix: isProd ? `/${repoName}/` : "",
    images: {
        unoptimized: true,
    },
    env: {
        BASE_PATH: isProd ? `/${repoName}` : "",
    },
};

export default nextConfig;