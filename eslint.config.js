import eslintPluginAstro from "eslint-plugin-astro";
import prettier from "eslint-config-prettier";

export default [...eslintPluginAstro.configs.recommended, prettier];
