// @ts-check
import { defineConfig } from "astro/config";

// https://astro.build/config
export default defineConfig({
  vite: {
    server: {
      hmr: {
        protocol: "ws",
        host: "localhost",
        port: 4321,
      },
    },
  },
});
