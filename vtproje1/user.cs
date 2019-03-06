using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vtproje1
{
    public class user
    {
      public int ogr_no;
        public string ogr_sifre;
        public MySqlConnection esas;

        public user()
        {
            esas = new MySqlConnection("Server=localhost;Database=deneme3;Uid=root;Pwd=hakan6161;CharSet = utf8; ");
        }
    }
}
