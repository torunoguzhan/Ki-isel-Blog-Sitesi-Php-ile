using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ogr"] == null)
            {
                Response.Redirect("login.aspx");
            }
            mulakat1.HRef = "mulakat.aspx?ogrno=" + Session["ogr_no"];
            user user = new user();


            MySqlCommand comm = new MySqlCommand("SELECT DISTINCT staj_kurum FROM staj ", user.esas);
            MySqlDataReader reader;
            //Connection açma ve DataBinding işlemim
            user.esas.Open();
            reader = comm.ExecuteReader();
            myRepeater.DataSource = reader;
            myRepeater.DataBind();
            reader.Close();

        }
    }
}