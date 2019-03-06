using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Security.Cryptography;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class kayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["ogrogr"] != null)
            {

                staj st = new staj();
                string asd = FormsAuthentication.HashPasswordForStoringInConfigFile(Request.Form["sifre"], "SHA256");
                MySqlCommand komut = new MySqlCommand("INSERT INTO ogrenci (ogr_no,ogr_sifre,ogr_ad,ogr_soyad,ogr_ogretim,ogr_dgs) VALUES (@ogrno,@ogrsifre,@ograd,@ogrsoyad,@ogrogr,@ogrdgs)", st.sa);
                komut.Parameters.AddWithValue("@ogrno", int.Parse(Request.Form["ogrno"]));
                komut.Parameters.AddWithValue("@ogrsifre", asd);
                komut.Parameters.AddWithValue("@ograd", Request.Form["ograd"]);
                komut.Parameters.AddWithValue("@ogrsoyad", Request.Form["ogrsoyad"]);
                komut.Parameters.AddWithValue("@ogrogr", int.Parse(Request.Form["ogrogr"]));
                komut.Parameters.AddWithValue("@ogrdgs", 0);
                st.sa.Open();
                komut.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
            if (Request.Form["hocaad"] != null)
            {

                staj st = new staj();
                string asd = FormsAuthentication.HashPasswordForStoringInConfigFile(Request.Form["sifre"], "SHA256");
                MySqlCommand komut = new MySqlCommand("INSERT INTO hoca (hoca_ad,hoca_sifre) VALUES (@hoca_ad,@hoca_sifre)", st.sa);
                komut.Parameters.AddWithValue("@hoca_ad", Request.Form["hocaad"]);
                komut.Parameters.AddWithValue("@hoca_sifre", asd);
                st.sa.Open();
                komut.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }

        }
    }
}