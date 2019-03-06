using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace vtproje1
{
    public class staj
    {
        public int staj_no;
        public string staj_kurum;
        public string staj_sehir;
        public string staj_bastarih;
        public string staj_bittarih;
        public int staj_gün;
        public string staj_konu;
        public int staj_sinif;
        public int staj_kabulgun;
        public int staj_deger;
        public int ogr_no;
        public string mulakat_tarih;
        public string mulakat_saat;
        public int mulakat_puan;
        public MySqlConnection sa;
        public staj()
        {
            sa = new MySqlConnection("Server=localhost;Database=deneme3;Uid=root;Pwd=hakan6161;CharSet = utf8; ");
            
        }
        public static void insert(staj st)
        {
            
            MySqlCommand komut = new MySqlCommand("INSERT INTO staj (staj_kurum, staj_sehir, staj_bastarih,staj_bittarih,staj_gün,staj_konu,staj_sinif,ogr_no) VALUES(@kurum, @sehir,@bastarih,@bittarih,@gün,@konu,@sinif,@ogr_no)", st.sa);
            komut.Parameters.AddWithValue("@kurum", st.staj_kurum);
            komut.Parameters.AddWithValue("@sehir", st.staj_sehir);
            komut.Parameters.AddWithValue("@bastarih", st.staj_bastarih);
            komut.Parameters.AddWithValue("@bittarih", st.staj_bittarih);
            komut.Parameters.AddWithValue("@gün", st.staj_gün);
            komut.Parameters.AddWithValue("@konu", st.staj_konu);
            komut.Parameters.AddWithValue("@sinif", st.staj_sinif);
            komut.Parameters.AddWithValue("@ogr_no", st.ogr_no);
            st.sa.Open();
            komut.ExecuteNonQuery();
        }
    }
}