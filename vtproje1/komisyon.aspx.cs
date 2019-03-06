using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vtproje1
{
    public partial class komisyon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["hoca"] == null)
            {
                Response.Redirect("login.aspx");
            }
            user user = new user();


            MySqlCommand comm = new MySqlCommand("SELECT * FROM komisyon NATURAL JOIN hoca; ", user.esas);
            MySqlDataReader reader;
            //Connection açma ve DataBinding işlemim
            user.esas.Open();
            reader = comm.ExecuteReader();
            myRepeater.DataSource = reader;
            myRepeater.DataBind();
            reader.Close();

        }
        protected void ItemBound(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater RepeaterArea = (Repeater)args.Item.FindControl("RepeaterArea");
                MySqlDataReader reader2;
                user user = new user();
                MySqlCommand comm2 = new MySqlCommand("SELECT komisyon_adi FROM komisyon", user.esas);
                user.esas.Open();
                reader2 = comm2.ExecuteReader();
                RepeaterArea.DataSource = reader2;
                RepeaterArea.DataBind();

            }
        }
    }
}