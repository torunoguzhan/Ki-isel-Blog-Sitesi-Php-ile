using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vtproje1
{
    public class mulakat
    {
        public int staj_no;
        public string mulakat_tarih;
        public string mulakat_saat;
        public int mulakat_puan;
        public int ogr_no;
        public MySqlConnection sa;
        public mulakat()
        {

            sa = new MySqlConnection("Server=localhost;Database=deneme3;Uid=root;Pwd=hakan6161;CharSet = utf8; ");

        }
        public static void insert(mulakat st)
        {

            MySqlCommand komut = new MySqlCommand("INSERT INTO mulakat (staj_no, ogr_no) VALUES(@staj_no,@ogr_no)", st.sa);
            komut.Parameters.AddWithValue("@staj_no", st.staj_no);
            komut.Parameters.AddWithValue("@ogr_no", st.ogr_no);
            st.sa.Open();
            komut.ExecuteNonQuery();
        }
    }

}