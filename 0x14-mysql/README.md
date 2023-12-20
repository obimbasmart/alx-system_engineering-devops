# MySQL
In this project, I've installed MySQL version 5.7.* on two web servers. To enhance scalability, redundancy, and high availability, I've established a primary-replica cluster. The database on my `web-01` functions as the master, handling both read and write operations. Simultaneously, the database on `web-02` is configured as a replica or slave to the `web-01` master, which allows only `read` operation. This ensures redundancy and distributing the load for improved performance and reliability. The steps used for setting up a `primary-replica` cluster is outlined below

<div align="center">
<img src="https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/280/KkrkDHT.png">
</div>

## To Setup `MYSQL` replication:
- Follow this [digital ocean guild on how to setup mysql replication](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)

## Configuration files:
- `4-mysql_configuration_primary` - primary configuration file
- `4-mysql_configuration_replica` - replica configuration file