using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RentalHouse.Models
{
    public class Contact
    {
        public String QueryName { get; set; }
        public String QueryEmail { get; set; }
        public String QueryContact { get; set; }
        public String QueryMsg { get; set; }

        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-IRKUHHC\\SQLEXPRESS;Initial Catalog=RentalHouse;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //this statement is related to insert delete update query that is the main statement of any database record 
        public void sendQuery(String Query)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();


            sqlCmd = new SqlCommand(Query, sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();

        }



    }
}