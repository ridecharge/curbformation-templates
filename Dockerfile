FROM registry.gocurb.internal:80/ansible

RUN mkdir /opt/curbformation-templates
COPY . /opt/curbformation-templates
WORKDIR /opt/curbformation

ENTRYPOINT ["curbformation"]
