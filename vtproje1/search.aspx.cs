using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["hoca"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (Request.Form["search_no"] != null)
            {
                user st = new user();
                string no = Request.Form["search_no"];
                MySqlCommand komut = new MySqlCommand("SELECT DISTINCT  * FROM staj as s,ogrenci as o where s.ogr_no =@ogr and s.ogr_no=o.ogr_no ", st.esas);
                komut.Parameters.AddWithValue("@ogr", no );
                MySqlDataReader reader;

               
                    //Connection açma ve DataBinding işlemim
                    st.esas.Open();
                    reader = komut.ExecuteReader();
                    arama.DataSource = reader;
                     arama.DataBind();
                    reader.Close();
                
            }
        }

    }
}