FROM python:3-alpine

# Install themekit
RUN wget https://raw.githubusercontent.com/Shopify/themekit/master/scripts/install.py
RUN python install.py

# Usage:
#   docker build . -t theme:dev
#   docker run --rm -v Theme:/Theme theme:dev

CMD theme watch
