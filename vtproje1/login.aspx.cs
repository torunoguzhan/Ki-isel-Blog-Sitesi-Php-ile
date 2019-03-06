using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request.Form["kadi"]!=null)
            {
                user user = new user();
                user.esas.Open();
                string a = Request.Form["kadi"];
                string b = FormsAuthentication.HashPasswordForStoringInConfigFile(Request.Form["sifre"], "SHA256");
                MySqlDataReader dr;
                MySqlDataReader dr2;

                MySqlCommand cmd = new MySqlCommand("select * from ogrenci where ogr_no=@no and ogr_sifre=@sifre", user.esas);
                cmd.Parameters.AddWithValue("@no", a);
                cmd.Parameters.AddWithValue("@sifre", b);
                MySqlCommand cmd2 = new MySqlCommand("select * from hoca where hoca_ad=@ad and hoca_sifre=@sifre", user.esas);
                cmd2.Parameters.AddWithValue("@ad",a);
                cmd2.Parameters.AddWithValue("@sifre", b);


                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Session.Add("ogr_ad", Convert.ToString(dr["ogr_ad"]));
                    Session.Add("ogr_no", Convert.ToInt32(dr["ogr_no"]));
                    Session.Add("ogr", 1);

                    Response.Redirect("home.aspx");
                    
                }
                dr.Close();
                dr2 = cmd2.ExecuteReader();
                
                if(dr2.Read())
                {
                    Session.Add("hoca_ad", Convert.ToString(dr2["hoca_ad"]));
                    Session.Add("hoca_id", Convert.ToInt32(dr2["hoca_id"]));
                    Session.Add("hoca", 1);

                    Response.Redirect("home2.aspx");

                }
                

            }





        }
    }
}