<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="vtproje1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/css/bootstrap.css" rel="stylesheet" />
    <link href="css/css/signin.css" rel="stylesheet" />
</head>

        <body class="text-center">
                <form class="form-signin" id="form1" method="post" action="login.aspx" runat="server">
                  <img class="mb-4" src="http://www.ktu.edu.tr/images/logo/Logo_KTU_en.png" alt="" width="72" height="72">
                  <h1 class="h3 mb-3 font-weight-normal">Giriş  Yap</h1>
                  <label for="inputEmail" class="sr-only">Kullanıcı Adı</label>
                  <input  type="text"  name="kadi"  class="form-control" placeholder="Email address" required autofocus>
                    <label for="inputPassword" class="sr-only">Şifre</label>
                  <input name="sifre" type="password"  class="form-control" placeholder="Password" required>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Giriş Yap</button>
                    <a class="btn btn-lg btn-primary btn-block" href="kayit.aspx?ogr=1">Öğrenci Kayıt</a> <a class="btn btn-lg btn-primary btn-block" href="kayit.aspx?hoca=1">Hoca Kayıt</a>
                    
                </form>


            
              </body>
        




</html>
