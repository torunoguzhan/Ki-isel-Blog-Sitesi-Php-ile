<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home2.aspx.cs" Inherits="vtproje1.home1" %>

<div><!--#include file="header.aspx"--></div>

        <div class="row" style="margin-top:50px">
            <div class="col-2">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Menü</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <th scope="row"><a href="komisyon.aspx">Komisyon ekle</a></th>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <th><a  style="display:inline-block" href="liste.aspx?btn=1">Stajı Biten Öğrenciler</a></th> 

                        </tr>
                        
                        
                    </tbody>
                </table>
            </div>

            <div class="col-8">
                <div id="content">
                <table class="table ">
                    <tbody class="thead-dark">
                        <tr>
                            <th>Öğrenci NO</th>
                            <th>Staj NO</th>
                            <th>Mülakat Tarih</th>
                            <th>Komisyon</th>
                            <th>Mülakat Saat</th>
                            <th>Mülakat Puan</th>
                            <th>Kaydet  </th>

                        </tr>
                        <asp:Repeater OnItemDataBound="ItemBound" ID="myRepeater" runat="server">
                            <ItemTemplate>
                                


                                <tr>
                                    <form action="islem.aspx?stajno=<%# Eval("staj_no") %>" method="post">
                                        <td>
                                            <input readonly="readonly" type="text" name="ogr_no" value="<%# Eval("ogr_no") %>"></td>
                                        <td>
                                            <input readonly="readonly" type="text" name="staj_no" value="<%# Eval("staj_no") %>"></td>
                                        <td>
                                            <input required type="date" name="mulakat_tarih" value="<%# Eval("mulakat_tarih") %>"></td>
                                        <td>
                                            <select name="komisyon_adi">
                                                <option  selected value="<%# Eval("komisyon_adi") %>"><%# Eval("komisyon_adi") %></option>
                                                <asp:Repeater ID="RepeaterArea" runat="server">
                                                    <ItemTemplate>
                                                        <option value="<%# Eval("komisyon_adi") %>"><%# Eval("komisyon_adi") %></option>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </select>
                                        </td>
                                        <td>
                                            <input type="time" name="mulakat_saat" value="<%# Eval("mulakat_saat") %>"></td>
                                        <td>
                                            <input type="text" name="mulakat_puan" value="0"</td>
                                        <td>
                                            <button class="btn btn-primary" type="submit">Kaydet</button></td>

                                    </form>
                                    

                                </tr>





                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
                    </div>



                
                <table style="margin-top:50px" class="table">
                    <tbody class="thead-dark">
                        <tr>
                            <th>Staj Şehir</th>
                            <th>Oran</th>
                            <th>Toplam Gün</th>
                            <th>Toplam Kabul</th>

                        </tr>
                        <asp:Repeater  ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <footertemplate>
      </footertemplate>


                                <tr>
                                        <td>
                                            <%# Eval("staj_sehir") %></td>
                                        <td>
                                           <%# Eval("oran") %></td>
                                        <td>
                                            <%# Eval("gün") %></td>
                                        <td>
                                            <%# Eval("kabul") %></td>
                      
                                    
                                 
                                </tr>





                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
                <label  for="inlineFormInputName">Staj Dağılım</label>
                <form method="get" action="liste.aspx">
                    <div class="row">
                        <div class="col">
                            <input type="text" name="stajTarih1" class="form-control" placeholder="Yıl">
                        </div>
                        <div class="col">
                            <input type="text" name="stajTarih2" class="form-control" placeholder="Yıl">
                        </div>
                        <div class="col">
                            <button class="btn btn-primary" type="submit" class="form-control">Ara</button>
                        </div>
                    </div>
                </form>

                <label  for="inlineFormInputName">Mülakat Ara</label>
                <form action="liste.aspx" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-sm-9 my-1">
                            <label class="sr-only" for="inlineFormInputName">Mülakat Ara</label>
                            <input required style="display:inline-block" name="tarih1" type="date" class="form-control" id="inlineFormInputName" placeholder="Tarih">
                        </div> 
                        <div class="col-sm-9 my-1">
                            <label class="sr-only" for="inlineFormInputName">Öğrenci Ara</label>
                            <input required style="display:inline-block" name="tarih2" type="date" class="form-control" id="inlineFormInputName" placeholder="Tarih">
                        </div> 
                        <div class="col-auto my-1">
                            <button type="submit" class="btn btn-primary">Ara</button>
                        </div>
                    </div>
                </form>

                
                
            </div>


   
    
</div>

    </body>
</html>
