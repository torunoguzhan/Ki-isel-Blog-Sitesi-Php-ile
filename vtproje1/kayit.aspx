<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="vtproje1.kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/css/bootstrap.css" rel="stylesheet" />
    <link href="css/css/signin.css" rel="stylesheet" />
</head>

        <body class="text-center">
             <% if(Request.QueryString["ogr"]!=null)
        {
         
         %>
            <form class="form-signin" id="form1" method="post" action="kayit.aspx" runat="server">
                  <img class="mb-4" src="http://www.ktu.edu.tr/images/logo/Logo_KTU_en.png" alt="" width="72" height="72">
                  <h1 class="h3 mb-3 font-weight-normal">Giriş  Yap</h1>
                  <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input runat="server" type="text" id="ogrno" name="ogrno"  class="form-control" placeholder="Öğrenci NO" required autofocus>
                    <asp:RegularExpressionValidator id="RegularExpressionValidator1"
                   ControlToValidate="ogrno"
                   ValidationExpression="\d+"
                   Display="Dynamic"
                   EnableClientScript="true"
                   ErrorMessage="Lütfen sadece sayı giriniz"
                   
                   runat="server"/>
                    <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input type="text" name="ograd"  class="form-control" placeholder="Öğrenci Adı" required autofocus>
                    <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input type="text" name="ogrsoyad"  class="form-control" placeholder="Öğrenci Soyadı" required autofocus>
                    <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input runat="server" type="text" id="ogrogr" name="ogrogr"  class="form-control" placeholder="Öğretim" required autofocus>
                    <asp:RangeValidator
                        ControlToValidate="ogrogr"
                        MinimumValue="1"
                        MaximumValue="2"
                        Type="Integer"
                        Display="Dynamic"
                        EnableClientScript="true"
                        Text="1 veya 2 giriniz"
                        runat="server" />
                  <label for="inputPassword" class="sr-only">Şifre</label>
                  <input name="sifre" type="password"  class="form-control" placeholder="Password" required>
                  
                  <button class="btn btn-lg btn-primary btn-block" type="submit">Kayıt Ol</button>
                  
                </form>
            
   
<% } %>
            <% if(Request.QueryString["hoca"]!=null)
        {
         
         %>
            <form class="form-signin" id="form2" method="post" action="kayit.aspx" runat="server">
                  <img class="mb-4" src="http://www.ktu.edu.tr/images/logo/Logo_KTU_en.png" alt="" width="72" height="72">
                  <h1 class="h3 mb-3 font-weight-normal">Giriş  Yap</h1>
                    <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input type="text" name="hocaad"  class="form-control" placeholder="Hoca Adı" required autofocus>
                  <label for="inputPassword" class="sr-only">Şifre</label>
                  <input name="sifre" type="password"  class="form-control" placeholder="Password" required>
                  
                  <button class="btn btn-lg btn-primary btn-block" type="submit">Kayıt Ol</button>
                  
                </form>
            
   
<% } %>
                
              </body>
        




</html>
