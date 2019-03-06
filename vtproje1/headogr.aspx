<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ktü Staj</title>
    <link href="css/css/bootstrap.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        <img src="http://www.ktu.edu.tr/images/logo/Logo_KTU_en.png" width="30" height="30" alt="">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.aspx">Ana Sayfa <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto  ">
            <li class="nav-item active">
                <a class="nav-link" href="home.aspx"><span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
    <form action="home.aspx" class="form-inline my-2 my-lg-0">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><% Response.Write(Session["ogr_no"]);    %> - <% Response.Write(Session["ogr_ad"]);    %> </button>
    </form>
</nav>

