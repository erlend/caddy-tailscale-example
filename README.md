# Caddy Tailscale reverse proxy

Reverse proxy with authentication using [erlend/caddy](https://hub.docker.com/r/erlend/caddy)@
Docker image. 

# Example

1. Clone this repository. 
1. Pull the docker image: `docker pull erlend/caddy`.
2. Generate a Tailscale "Auth key": [Tailscale Settings - Keys](https://login.tailscale.com/admin/settings/keys). 
3. Create a plain text file named `authkey.txt` in this directory and paste the key from step 2 into the file and save it.
4. Start the service: `docker compose up`.
5. Verify that the proxy is up with `curl example` or by browsing [http://example](http://example). Note: [MagicDNS](https://login.tailscale.com/admin/dns) required. Alternatively find the ip-address of the "example" machine here: [Tailscale Machines](https://login.tailscale.com/admin/machines) and connect to http://100.x.x.x

# Example: Authenticate to Grafana

You can [configure Grafana to let a HTTP reverse proxy handle authentication](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/auth-proxy/).
This enables you to access a Graphana instance from any device on your Tailscale network without entering credentials.