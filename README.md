# ytnobody/kikyo

[Kikyo](https://github.com/ytnobody/Kikyo) - Information Base for managing server assets

## SYNOPSIS

    echo 'CREATE DATABASE kikyo; GRANT ALL ON kikyo.* to root@"172.17.%";' | mysql -u root
    curl -L https://raw.githubusercontent.com/ytnobody/Kikyo/master/etc/schema.sql | mysql -u root kikyo
    docker run -p 8901:8901 ytnobody/kikyo

## SEE ALSO

* [Kikyo](https://github.com/ytnobody/Kikyo)

* [kikyo-agent](https://github.com/ytnobody/kikyo-agent)
