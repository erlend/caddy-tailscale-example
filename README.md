# Caddy Tailscale reverse proxy example

Reverse proxy with authentication using [erlend/caddy](https://hub.docker.com/r/erlend/caddy)
Docker image.

1. Clone this repository. 
1. Pull the docker image: `docker pull erlend/caddy`.
2. Generate a Tailscale "Auth key": [Tailscale Settings - Keys](https://login.tailscale.com/admin/settings/keys). 
3. Create a plain text file named `authkey.txt` in this directory and paste the key from step 2 into the file and save it.
4. Start the service: `docker compose up`.
5. Verify that the proxy is up with `curl example` or by browsing [http://example](http://example). Note: [MagicDNS](https://login.tailscale.com/admin/dns) required. Alternatively find the ip-address of the "example" machine here: [Tailscale Machines](https://login.tailscale.com/admin/machines) and connect to http://100.x.x.x