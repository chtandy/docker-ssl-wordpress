FROM wordpress:5.7.2
RUN apt-get update \
  && apt-get install -y  --no-install-recommends ssl-cert \
  && rm -r /var/lib/apt/lists/* \
  && a2enmod ssl \
  && a2ensite default-ssl
