<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="vtproje1.search" %>

        <div><!--#include file="header.aspx"--></div>
    <form id="form1" method="post" runat="server">
        <div>
            <table class="table">
                <tbody>
                    <tr>

                        <th>Staj No</th>
                        <th>Kurum</th>
                        <th>Şehir</th>
                        <th>Başlama Tarihi</th>
                        <th>Bitiş Tarihi</th>
                        <th>Gün</th>
                        <th>Konu</th>
                        <th>Sınıf</th>
                        <th>Kabul Gün</th>
                        <th>Değer</th>
                        <th>Öğrenci NO</th>
                        <th>Öğrenci Ad</th>
                        <th>Öğrenci Soyad</th>
                        <th>Öğrenci Öğretim</th>


                    </tr>
                    <asp:Repeater ID="arama" runat="server">
                        <ItemTemplate>
                            <footertemplate>
      </footertemplate>


                            <tr>

                                <td>
                                    <%# Eval("staj_no") %></td>
                                <td>
                                    <%# Eval("staj_kurum") %></td>
                                <td>
                                    <%# Eval("staj_sehir") %></td>
                                <td>
                                  <%# Eval("staj_bastarih") %></td>
                                <td>
                                    <%# Eval("staj_bittarih") %></td>
                                <td>
                                    <%# Eval("staj_gün") %></td>
                                <td>
                                    <%# Eval("staj_konu") %></td>

                                <td>
                                    <%# Eval("staj_sinif") %></td>

                                <td class="asd">
                                    <%# Eval("staj_kabulgun") %></td>
                                <td>
                                    <%# Eval("staj_deger") %></td>
                                <td>
                                   <%# Eval("ogr_no") %></td>
                                <td>
                                    <%# Eval("ogr_ad") %></td>
                                <td>
                                    <%# Eval("ogr_soyad") %></td>
                                <td>
                                    <%# Eval("ogr_ogretim") %></td>




                            </tr>



                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table> 
        </div>
    </form>
<div class="container">
            <p style="display:inline-block" class="text-info">Staj Durumu</p>
<div class="progress">
  <div class="progress-bar" id="deneme" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div>
    </div>

</body>
<script>
    $(document).ready(function () {

        let tot = 0;
        $(".asd").each(function () {
            if ($(this).text().trim() == "") {
                $(this).html() = 0;
            }
            tot += parseInt($(this).html().trim());
             if (tot >= 57) {
                $(deneme).width("100%");
                $(deneme).addClass("bg-success");
            }
             else {
                 let a = (100 * tot) / 57;
                 $(deneme).width(a + "%");
                 $(deneme).html( Math.floor(a) +"%");
            }

        });

        
        
    

    });
   



</script>
</html>
