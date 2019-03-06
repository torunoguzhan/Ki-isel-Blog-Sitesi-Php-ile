using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vtproje1
{
    public class dgsClass
    {
        public int ogr_no;
        public string dgs_okul;
        public int dgs_kabulgun;
        public string dgs_kurum;
        public MySqlConnection sa;
        public dgsClass()
        {
            sa = new MySqlConnection("Server=localhost;Database=deneme3;Uid=root;Pwd=hakan6161;CharSet = utf8; ");
        }
        public static void insert(dgsClass k)
        {
            MySqlCommand komut = new MySqlCommand("INSERT INTO dgs_staj (ogr_no,dgs_okul,dgs_kabulgun,dgs_kurum) VALUES (@ogr,@okul,@kabul,@kurum)", k.sa);
            komut.Parameters.AddWithValue("@ogr", k.ogr_no);
            komut.Parameters.AddWithValue("@okul", k.dgs_okul);
            komut.Parameters.AddWithValue("@kabul", k.dgs_kabulgun);
            komut.Parameters.AddWithValue("@kurum", k.dgs_kurum);
            k.sa.Open();
            komut.ExecuteNonQuery();
            k.sa.Close();

        }
    }
}