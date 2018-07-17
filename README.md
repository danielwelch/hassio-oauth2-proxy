# Hass.io Add-on: oauth2 proxy 

Add-on for running [oauth2 proxy](https://github.com/bitly/oauth2_proxy) in [Hass.io](https://github.com/home-assistant/hassio).

## Usage

### Installation

- Add the [repository URL](https://github.com/danielwelch/hassio-oauth2-proxy) in your **Hass.io > Add-on Store**

### Configuration

To configure this add-on, you must set the following parameters via the Hass.io user interface. You will need to register a project with your choice of Oauth2 providers supported by `oauth2_proxy`. See the [oauth2_proxy](https://github.com/bitly/oauth2_proxy) docs for information on setting up different Oauth2 providers. 

|Parameter|Type|Required|Description|
|---------|----|--------|-----------|
|`client_id`|string|Yes|Oauth2 Client ID|
|`client_secret`|string|Yes|Oauth2 Client secret|
|`cookie_name`|string|Yes|Cookie name of your choosing.|
|`cookie_secret`|string|Yes|Cookie secret. See [oauth2_proxy](https://github.com/bitly/oauth2_proxy) for tips on creating a secure cookie.|


Notes:
- The `auth_url` will of course depend on your specific Hass.io configuration. It is intended to be reachable via nginx proxy.

### Configuring nginx

TODO: nginx config instructions

### Issues

If you find any issues with the addon, please first check the [issue tracker](https://github.com/danielwelch/hassio-oauth2-proxy/issues).

Feel free to create a PR for fixes and enhancements. 

