using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class home1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["hoca"]==null)
            {
                Response.Redirect("login.aspx");
            }
            user user = new user();
            

            MySqlCommand comm = new MySqlCommand("SELECT komisyon_adi,ogr_no,staj_no,date_format(mulakat_tarih,'%Y-%m-%d') as mulakat_tarih,mulakat_saat,mulakat_puan FROM staj as s where s.staj_deger=0", user.esas);
                MySqlDataReader reader;         
                    //Connection açma ve DataBinding işlemim
                    user.esas.Open();
                    reader = comm.ExecuteReader();
                    myRepeater.DataSource = reader;
                    myRepeater.DataBind();
                    reader.Close();
            
                MySqlCommand comm2 = new MySqlCommand("select staj_sehir,(100*sum(staj_kabulgun))/sum(staj_gün) as oran,sum(staj_kabulgun) as kabul,sum(staj_gün) as gün  from staj where staj_deger=1 group by staj_sehir ", user.esas);
            MySqlDataReader reader2;
            //Connection açma ve DataBinding işlemim
            reader2 = comm2.ExecuteReader();
            Repeater2.DataSource = reader2;
            Repeater2.DataBind();
            reader2.Close();


        }
        protected void ItemBound(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater RepeaterArea = (Repeater)args.Item.FindControl("RepeaterArea");
                MySqlDataReader reader2;    
                user user = new user();
                MySqlCommand comm2 = new MySqlCommand("SELECT * FROM komisyon", user.esas);
                user.esas.Open();
                reader2 = comm2.ExecuteReader();
                RepeaterArea.DataSource = reader2;
                RepeaterArea.DataBind();
                
            }
        }
        


    }
}