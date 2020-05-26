#include "cpp_mysql.h"
#include <iostream>
#include <mysql.h>

void processError(MYSQL *con);

int main(int argc, char **argv)
{
    MYSQL *con = mysql_init(NULL);
    int status = 0;

    if (con == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        exit(1);
    }

    if (mysql_real_connect(con, "127.0.0.1", "user", "pass", "school", 3306, NULL, 0) == NULL)
    {
        fprintf(stderr, "%s\n", mysql_error(con));
        mysql_close(con);
        exit(1);
    }

    if(mysql_query(con, "select * from pupils where id >= 10 and id <= 30")) {
        processError(con);
    }

    do {
        MYSQL_RES *result = mysql_store_result(con);

        if (result == NULL)
            processError(con);

        int num_fields = mysql_num_fields(result);

        while (MYSQL_ROW row = mysql_fetch_row(result))
        {
            for(int i = 0; i < num_fields; i++)
            {
                printf("%s ", row[i] ? row[i] : "NULL");
            }
            printf("\n");
        }

        mysql_free_result(result);

        status = mysql_next_result(con);

        if (status > 0)
            processError(con);

    } while(status == 0);

    mysql_close(con);
    exit(0);
}

void processError(MYSQL *con)
{
    fprintf(stderr, "Error : %s\n", mysql_error(con));
    mysql_close(con);
    exit(1);
}
