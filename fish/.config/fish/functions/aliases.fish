# List all groups that a user belongs to
function ldapgroups
    ldapsearch -LLL -x -h ldap.dewire.com -b dc=dewire,dc=com member=uid=$argv[1],ou=people,dc=dewire,dc=com cn | grep "^cn:" | sed -e "s/^cn: //"
end