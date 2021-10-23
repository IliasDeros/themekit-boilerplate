FROM python:3-alpine

# Install themekit
RUN wget https://shopify.dev/themekit.py
RUN python themekit.py

# Usage:
#   docker build . -t theme:dev
#   docker run --rm -v Theme:/Theme theme:dev

CMD theme watch
