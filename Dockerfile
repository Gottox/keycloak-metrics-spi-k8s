FROM busybox:musl

ARG REPOSITORY=https://github.com/aerogear/keycloak-metrics-spi
ARG VERSION=1.0.4

ADD $REPOSITORY/releases/download/$VERSION/keycloak-metrics-spi-$VERSION.jar \
		/plugins/keycloak-metrics-spi-$VERSION.jar
COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh /keycloak-metrics-spi-$VERSION.jar
