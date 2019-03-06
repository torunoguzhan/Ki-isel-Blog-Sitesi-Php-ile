<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liste.aspx.cs" Inherits="vtproje1.liste" %>

        <div><!--#include file="header.aspx"--></div>
    <form id="form1" runat="server">
    <div>
    <asp:Panel ID="panelPDF" runat="server">

    <% if(Request.QueryString["btn"]!=null)
        {
         
         %>
    <div class="row">
            <div class="col">
                

                
            </div>
            <div class="col">
                <table class="table ">
                    <tbody>
                        <tr>
                            <th>Öğrenci NO</th>
                            <th>Öğrenci Ad</th>
                            <th>Öğrenci Soyad</th>
                            <th>Öğretim</th>
                            <th>Kabul Edilen Gün</th>
                        </tr>
                        <asp:Repeater  ID="myRepeater" runat="server">
                            <ItemTemplate>
                                


                                <tr>
                                        <td>
                                            <%# Eval("ogr_no") %></td>
                                        <td>
                                            <%# Eval("ogr_ad") %></td>
                                        <td>
                                          <%# Eval("ogr_soyad") %></td>
                                        <td>
                                           <%# Eval("ogr_ogretim") %></td>
                                    <td>
                                           <%# Eval("kabul") %></td>
                                    
                                     
                                    

                                </tr>





                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>

            </div>
            <div class="col">
                
            </div>

   
    
</div>

<% } %>
    <% 
        if(Request.QueryString["tarih1"]!=null)
        { %>
       <div class="row">
            <div class="col">
                

                
            </div>
            <div class="col">
                <table class="table ">
                    <tbody>
                        <tr>
                            <th>Öğrenci NO</th>
                            <th>Staj NO</th>
                            <th>Mülakat Tarih</th>
                            <th>Mülakat Saat</th>
                            <th>Mülakat Puan</th>
                            <th>Komisyon Adı</th>
                        </tr>
                        <asp:Repeater  ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <footertemplate>
      </footertemplate>


                                <tr>
                                        <td>
                                            <%# Eval("ogr_no") %></td>
                                        <td>
                                            <%# Eval("staj_no") %></td>
                                        <td>
                                          <%# Eval("mulakat_tarih") %></td>
                                        <td>
                                           <%# Eval("mulakat_saat") %></td>
                                    <td>
                                           <%# Eval("mulakat_puan") %></td>
                                    <td>
                                           <%# Eval("komisyon_adi") %></td>
                                    
                                     
                                    

                                </tr>





                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>

            </div>
            <div class="col">
                
            </div>

   
    
</div>



    <% } %>
         <% if(Request.QueryString["stajTarih1"]!=null)
        {
         
         %>
    <div class="row">
            <div class="col">
                

                
            </div>
            <div class="col">
                <table class="table ">
                    <tbody>
                        <tr>
                            <th>Staj Konusu</th>
                            <th>Dağılım Yüzdesi</th>
                            <th>Konu Kullanım</th>
                        </tr>
                        <asp:Repeater  ID="Repeater2" runat="server">
                            <ItemTemplate>
                                


                                <tr>
                                        <td>
                                            <%# Eval("staj_konu") %></td>
                                        <td>
                                            <%# Eval("dagilim") %></td>
                                        <td>
                                          <%# Eval("ksayi") %></td>
                                    
                                     
                                    

                                </tr>





                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>

            </div>
            <div class="col">
                
            </div>

   
    
</div>

<% } %>
        </asp:Panel>
        <div class="container">
            <div class="row">
                <div class="col" align="center">
                    
                  <asp:LinkButton class="btn btn-primary center-block" ID="btnPrint" Text="Pdf Al" OnClick="btnPrint_Click" runat="server" />

                </div>


            </div>

        </div>
    


    </div>

       </form>
</body>
</html>
