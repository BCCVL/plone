FROM hub.bccvl.org.au/zope/zope:2.13.23

RUN yum install -y libxml2-devel \
                   libxslt-devel \
                   libjpeg-turbo-devel \
                   libtiff-devel \
                   libzip-devel \
                   freetype-devel \
                   lcms2-devel \
                   libwebp-devel \
                   openjpeg-devel \
                   libpng-devel \
                   && \
    yum clean all

COPY files/versions.cfg $ZOPE_HOME/
COPY files/base.cfg $ZOPE_HOME/

WORKDIR $ZOPE_HOME

RUN $ZOPE_HOME/build.sh

EXPOSE 8080

CMD ./bin/instance console
