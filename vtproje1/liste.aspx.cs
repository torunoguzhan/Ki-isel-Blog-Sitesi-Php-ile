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
    public partial class liste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["hoca"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (Request.QueryString["btn"]!=null)
            {
                user user = new user();


                MySqlCommand comm = new MySqlCommand("SELECT o.*,sum(s.staj_kabulgun) as kabul FROM staj as s, ogrenci as o where o.ogr_no = s.ogr_no group by ogr_no HAVING SUM(s.staj_kabulgun) >= 57 ", user.esas);
                MySqlDataReader reader;
                user.esas.Open();
                reader = comm.ExecuteReader();
                myRepeater.DataSource = reader;
                myRepeater.DataBind();
                reader.Close();
            }
            if (Request.QueryString["stajTarih1"] != null)
            {
                user user = new user();


                MySqlCommand comm = new MySqlCommand("SELECT staj_konu, (COUNT(staj_konu)*100)/SUM(COUNT(staj_konu)) OVER() AS dagilim,COUNT(staj_konu) as ksayi FROM staj where staj_bastarih > @tarih1 and staj_bastarih < @tarih2 GROUP BY staj_konu", user.esas);
                comm.Parameters.AddWithValue("@tarih1", Request.QueryString["stajTarih1"]);
                comm.Parameters.AddWithValue("@tarih2", Request.QueryString["stajTarih2"]);
                MySqlDataReader reader;
                user.esas.Open();
                reader = comm.ExecuteReader();
                Repeater2.DataSource = reader;
                Repeater2.DataBind();
                reader.Close();
            }
            if (Request.QueryString["tarih1"] != null)
            {
                user user = new user();


                MySqlCommand comm = new MySqlCommand("select *  from staj where mulakat_tarih between @tarih1 and @tarih2", user.esas);
                comm.Parameters.AddWithValue("@tarih1", Request.QueryString["tarih1"]);
                comm.Parameters.AddWithValue("@tarih2", Request.QueryString["tarih2"]);
                MySqlDataReader reader;
                user.esas.Open();
                reader = comm.ExecuteReader();
                Repeater1.DataSource = reader;
                Repeater1.DataBind();
                reader.Close();
            }

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Write("asda");
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            panelPDF.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlParser.Parse(sr);
            pdfDoc.Close();

            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }
    }
}