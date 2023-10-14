# Shopify Site

Custom theme for a shopify site. See source code under [Theme](./Theme)

## Getting Started

See [Generate API credentials]:
1. Add [theme-access](https://apps.shopify.com/theme-access) app to your Shopify store
2. Create yourself a password. **You will receive the themekit password by email**

![image](https://github.com/IliasDeros/themekit-boilerplate/assets/9534435/2d0eda27-50a0-4a99-857f-ca87831d89b1)

```
PASS=<themekit password>
STORE=yourstore.myshopify.com

# List themes
docker-compose run --rm themekit theme get -s=$STORE -p=$PASS --list
> [<live theme id>][live] live theme
> [<theme id>] Dev theme

# Download live theme
docker-compose run --rm themekit theme get -s=$STORE -p=$PASS -e live -t <live theme id>

# Download "Dev theme"
docker-compose run --rm themekit theme get -s=$STORE -p=$PASS -t <theme id>

# https://yourstore.myshopify.com?preview_theme_id=<theme id>
docker-compose up
```

[Generate API credentials]: https://shopify.dev/themes/tools/theme-kit/getting-started#step-2-get-a-theme-kit-password
[private app]: https://help.shopify.com/en/manual/apps/private-apps#enable-private-app-development-from-the-shopify-admin
[Shopify CLI]: https://shopify.dev/themes/tools/cli

## Useful commands

```
# Pull changes
docker-compose run --rm themekit theme download # config/settings_data.json

# Push changes
docker-compose run --rm themekit theme deploy --ignores .themeignore # -e live --allow-live
```

### Optional: Live Reload

Refresh your browser anytime a file is updated

1. Install [browsersync](https://browsersync.io/) using `npm install -g browser-sync`
2. `browser-sync https://yourstore.myshopify.com?preview_theme_id=<theme id> -c livereload-config.js`
