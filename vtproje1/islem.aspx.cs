using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class islem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Form["staj_kurum"]!=null && Request.Form["staj_okul"] == null)
            {
                staj st = new staj();
                mulakat mt = new mulakat();
                st.staj_kurum = Request.Form["staj_kurum"];
                st.staj_sehir = Request.Form["staj_sehir"];
                st.staj_bastarih = Request.Form["staj_bastarih"];
                st.staj_bittarih = Request.Form["staj_bittarih"];
                st.staj_konu = Request.Form["staj_konu"];
                st.staj_sinif = int.Parse(Request.Form["staj_sinif"]);
                st.staj_gün = int.Parse(Request.Form["staj_gun"]);
                st.ogr_no = (int)Session["ogr_no"];




                staj.insert(st);
                
                Response.Redirect("home.aspx");
            }
            
            
            if (Request.Form["komisyonadi"] != null)
            {
                staj st = new staj();
                MySqlCommand komut = new MySqlCommand("INSERT INTO komisyon (komisyon_adi) VALUES (@komisyon)", st.sa);
                komut.Parameters.AddWithValue("@komisyon", Request.Form["komisyonadi"]);
                st.sa.Open();
                komut.ExecuteNonQuery();
                Response.Redirect("komisyon.aspx");
            }
            if (Request.QueryString["hocaid"] != null)
            {
                staj st = new staj();
                MySqlCommand komut = new MySqlCommand("UPDATE hoca SET komisyon_adi=@komisyon where hoca_id=@hid ", st.sa);
                komut.Parameters.AddWithValue("@komisyon", Request.Form["komisyon_adi"]);
                komut.Parameters.AddWithValue("@hid", Request.QueryString["hocaid"]);
                st.sa.Open();
                komut.ExecuteNonQuery();
                Response.Redirect("komisyon.aspx");
            }
            if (Request.QueryString["stajno"] != null)
            {
                staj st = new staj();
                if (Request.Form["mulakat_puan"] != "0")
                {
                    MySqlCommand komut2 = new MySqlCommand("SELECT staj_deger,staj_gün FROM staj where staj_no=@staj", st.sa);
                    komut2.Parameters.AddWithValue("@staj", Request.Form["staj_no"]);
                    st.sa.Open();
                    var reader = komut2.ExecuteReader();
                    reader.Read();
                    double gun = (double.Parse(Request.Form["mulakat_puan"]) / 100) * (int)reader["staj_gün"];
                    reader.Close();
                    MySqlCommand komut = new MySqlCommand("UPDATE staj SET staj_deger=@deger,mulakat_tarih=@tarih,mulakat_saat=@saat,mulakat_puan=@puan,komisyon_adi=@kadi,staj_kabulgun=@kgun where staj_no=@staj", st.sa);
                    komut.Parameters.AddWithValue("@tarih", Request.Form["mulakat_tarih"]);
                    komut.Parameters.AddWithValue("@saat", Request.Form["mulakat_saat"]);
                    komut.Parameters.AddWithValue("@staj", Request.Form["staj_no"]);
                    komut.Parameters.AddWithValue("@puan", Request.Form["mulakat_puan"]);
                    komut.Parameters.AddWithValue("@kadi", Request.Form["komisyon_adi"]);
                    komut.Parameters.AddWithValue("@kgun", gun);
                    komut.Parameters.AddWithValue("@deger", 1);
                    
                    komut.ExecuteNonQuery();
                    
                    Response.Redirect("home2.aspx");

                }
                else
                {
                    MySqlCommand komut = new MySqlCommand("UPDATE staj SET mulakat_tarih=@tarih,mulakat_saat=@saat,komisyon_adi=@kadi where staj_no=@staj", st.sa);
                    komut.Parameters.AddWithValue("@tarih", Request.Form["mulakat_tarih"]);
                    komut.Parameters.AddWithValue("@saat", Request.Form["mulakat_saat"]);
                    komut.Parameters.AddWithValue("@staj", Request.Form["staj_no"]);
                    komut.Parameters.AddWithValue("@kadi", Request.Form["komisyon_adi"]);
                    st.sa.Open();
                    komut.ExecuteNonQuery();
                    Response.Redirect("home2.aspx");

                }
                
            }
        }
    }
}


