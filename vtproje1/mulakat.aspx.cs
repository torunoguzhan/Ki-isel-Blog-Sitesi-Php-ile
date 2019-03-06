using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class mulakat1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            user user = new user();
            int result = int.Parse(Request.QueryString["ogrno"]);
            if (Request.QueryString["ogrno"]!=null)
            {
                MySqlCommand comm = new MySqlCommand("SELECT staj_gün,staj_kabulgun,ogr_no,staj_no,mulakat_tarih,mulakat_saat,mulakat_puan FROM staj as s where s.ogr_no=@no", user.esas);
                comm.Parameters.AddWithValue("@no", Request.QueryString["ogrno"]);

                MySqlDataReader reader;

                try
                {
                    //Connection açma ve DataBinding işlemim
                    user.esas.Open();
                    reader = comm.ExecuteReader();
                    myRepeater.DataSource = reader;
                    myRepeater.DataBind();
                    reader.Close();
                }
                catch
                {
                    Response.Write("Veri okuma işleminde hata meydana geldi");
                }
                finally
                {
                    user.esas.Close();
                }
                

               
            }
            
            
        }
    }
}