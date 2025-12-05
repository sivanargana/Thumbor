# Use the community Thumbor image
FROM ghcr.io/minimalcompact/thumbor:latest

# Optional: copy your own thumbor.conf
# (you can skip this if defaults are fine)
COPY thumbor.conf /etc/thumbor/thumbor.conf

# Render expects the app to listen on $PORT
# The base image normally uses 80, we map it to $PORT
ENV PORT=8080

# Thumbor default command is already defined in the image
# but we override just to be safe and bind to all interfaces and $PORT
CMD ["thumbor", "-p", "8080", "-b", "0.0.0.0"]
