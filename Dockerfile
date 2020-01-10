FROM busybox:musl

ARG REPOSITORY=aerogear/keycloak-metrics-spi
ARG VERSION=1.0.4

ADD https://github.com/$REPOSITORY/releases/download/$VERSION/keycloak-metrics-spi-$VERSION.jar \
		/local/keycloak-metrics-spi.jar
COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh /keycloak-metrics-spi.jar
