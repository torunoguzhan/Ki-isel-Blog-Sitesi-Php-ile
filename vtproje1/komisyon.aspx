<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="komisyon.aspx.cs" Inherits="vtproje1.komisyon" %>

    <div><!--#include file="header.aspx"--></div>
    <div style="margin-top:50px" class="container">
        <div class="row">
            <div class="col-2">
    </div>
        <div class="col-8">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Hoca Adı</th>
                        <th>Komisyonu</th>
                        <th>Yeni Komisyon</th>
                        <th>Kaydet</th>
                    </tr>
                </thead>

                <tbody>
                    <asp:Repeater OnItemDataBound="ItemBound" ID="myRepeater" runat="server">
                        <ItemTemplate>
                            <form action="islem.aspx?hocaid=<%# Eval("hoca_id") %>" method="post">
                                <tr>
                                    <th scope="row"><%# Eval("hoca_ad") %></th>
                                    <td><%# Eval("komisyon_adi") %></td>
                                    <td>
                                        <select name="komisyon_adi">
                                            <asp:Repeater ID="RepeaterArea" runat="server">
                                                <ItemTemplate>
                                                    <option value="<%# Eval("komisyon_adi") %>"><%# Eval("komisyon_adi") %></option>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </select>
                                    </td>
                                    <td>
                                        <button class="btn btn-primary" type="submit">Değiştir</button>
                                    </td>
                            </form>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>

            </table>

            <form action="islem.aspx" method="post">
                <div>
                    <label for="exampleInputEmail1">Komisyon Ekle</label>
          <input type="text" name="komisyonadi">
        <button class="btn btn-primary"type="submit"> Ekle</button>
                    </div>
    </form>
                
        </div>
    
            <div class="col-2">
    </div>
            </div>
    </div>
</body>
</html>
