# Caddy Tailscale proxy example

Reverse proxy with authentication using [erlend/caddy](https://hub.docker.com/r/erlend/caddy)
Docker image.

1. Create a plain text file named `authkey.txt` in this directory and paste in
   the key you generated from the *Tailscale Settings* page.
2. Start the services with `docker compose up`.
3. Run `curl example` or open [http://example](http://example) in a browser
