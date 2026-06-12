export function onRequestGet({ env }) {
  return Response.json({
    ok: true,
    app: env.APP_NAME || "米妞KIT",
    environment: env.APP_ENV || "local"
  });
}
