# Shopify Site

Custom theme for a shopify site. See source code under [/theme](./theme)

```
# Use original domain from Settings > Domains
STORE=83637c-4.myshopify.com

cd Theme/
npm install -g @shopify/cli@latest
shopify theme pull --store $STORE
shopify theme dev
shopify theme push --ignore config/settings_data.json
```

Browse your development theme at http://127.0.0.1:9292/

## Optional: Generate a themeaccess password

Unless you have a staff account with theme access, you will need to generate a password to access the theme files.
1. Add [theme-access](https://apps.shopify.com/theme-access) app to your Shopify store
2. Create yourself a password. **You will receive the themekit password by email**

![image](https://github.com/IliasDeros/themekit-boilerplate/assets/9534435/2d0eda27-50a0-4a99-857f-ca87831d89b1)

```
PASS=shptka_abcd1234

# Include --password $PASS to all Shopify CLI commands.
shopify theme pull --store $STORE --password $PASS
```
