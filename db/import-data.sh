for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S 127.0.0.1 -U sa -P Jaime9506 -i filldata.sql
    if [ $? -eq 0 ]
    then
        echo "setup.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done