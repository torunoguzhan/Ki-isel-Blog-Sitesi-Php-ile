using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class dgs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ogr"] == null)
            {
                Response.Redirect("login.aspx");
            }
            mulakat1.HRef = "mulakat.aspx?ogrno=" + Session["ogr_no"];
            if (Request.Form["staj_okul"] != null)
            {
                dgsClass k = new dgsClass();
                k.ogr_no = (int)Session["ogr_no"];
                k.dgs_okul = Request.Form["staj_okul"];
                k.dgs_kabulgun = int.Parse(Request.Form["staj_gun"]) / 2;
                k.dgs_kurum = Request.Form["staj_kurum"];
                dgsClass.insert(k);
                k.sa.Close();
                staj st = new staj();
                MySqlCommand komut = new MySqlCommand("UPDATE ogrenci SET ogr_dgs=@dgs where ogr_no=@ogr ", st.sa);
                komut.Parameters.AddWithValue("@ogr",k.ogr_no);
                komut.Parameters.AddWithValue("@dgs", 1);
                st.sa.Open();
                komut.ExecuteNonQuery();

                Response.Redirect("home.aspx");
            }
        }

       
    }
}