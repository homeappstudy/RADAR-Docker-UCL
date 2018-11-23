FROM jboss/keycloak:4.4.0.Final
ADD ./theme/ucl /opt/jboss/keycloak/themes/ucl
USER jboss
RUN sed -i -e 's/<web-context>auth<\/web-context>/<web-context>keycloak\/auth<\/web-context>/' $JBOSS_HOME/standalone/configuration/standalone.xml