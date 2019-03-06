<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mulakat.aspx.cs" Inherits="vtproje1.mulakat1" %>

<div><!--#include file="headogr.aspx"--></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12">
                    <table class="table">
                            <thead>
                              <tr>
                                
                                <th scope="col">Öğrenci NO</th>
                                  <th >Staj NO</th>
                                <th >Mülakat Saat</th>
                                <th >Mülakat Tarih</th>
                                <th >Mülakat Puan</th>
                                  <th >Staj Gün</th>
                                  <th>Kabul Gün</th>
                              </tr>
                            </thead>
                            <asp:repeater id="myRepeater" runat="server">
               <itemtemplate>
                            <tbody>
                              <tr>
                                <th scope="row"><%# Eval("ogr_no") %></th>
                                <td><%# Eval("staj_no") %></td>
                                <td><%# Eval("mulakat_tarih") %></td>
                                <td><%# Eval("mulakat_saat") %></td>
                                <td><%# Eval("mulakat_puan") %></td>
                                  <td><%# Eval("staj_gün") %></td>
                                  <td><%# Eval("staj_kabulgun") %></td>
                              </tr>
                              
                            </tbody>
                        </itemtemplate></asp:repeater> 
                          </table>

      
  
        
    
</div>
</div>
</div>
</body>
</html>
