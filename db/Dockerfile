FROM mcr.microsoft.com/mssql/server
#ENV ACCEPT_EULA=Y
#ENV SA_PASSWORD=${SQL_SERVER_PASSWORD}
#USER root
WORKDIR /src
COPY filldata.sql filldata.sql
COPY import-data.sh import-data.sh
COPY entrypoint.sh entrypoint.sh
#RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" &&  /opt/mssql-tools/bin/sqlcmd -S127.0.0.1 -Usa -i filldata.sql
#RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" && /opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -Usa -P ${SQL_SERVER_PASSWORD} -i filldata.sql
#USER mssql
CMD /bin/bash ./entrypoint.sh
#RUN ["chmod", "+x", "/usr/src/app/import-data.sh"]

#ENTRYPOINT /bin/bash ./entrypoint.sh