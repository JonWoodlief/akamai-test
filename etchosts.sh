while read line; do
    if [ "$line" = "globalcatalog.test.cloud.ibm.com" ]
    then
        edgehost="globalcatalog.test.cloud.ibm.com.edgekey-staging.net"
    else
        edgehost="edge.globalcatalog.test.cloud.ibm.com.edgekey-staging.net"
    fi
    EDGE_IP=$(dig +short "$edgehost" | tail -n1)
    
    echo "${EDGE_IP} ${line}";

done <hosts
