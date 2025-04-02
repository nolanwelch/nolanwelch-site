export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const ref = url.searchParams.get("ref");

    if (ref) {
      const source = url.searchParams.get("source") || "unknown";
      const ip = request.headers.get("CF-Connecting-IP") || "unknown";
      const timestamp = new Date().toISOString();
      const logKey = `ref-${ref}-${timestamp}`;

      await env.REFERRAL_KV.put(
        logKey,
        JSON.stringify({ ref, source, ip, timestamp }),
      );
    }

    // Remove ref param, redirect to homepage
    url.searchParams.delete("ref");
    url.searchParams.delete("source");
    url.hostname = "nolanwelch.com";
    return Response.redirect(url.toString(), 302);
  },
};
