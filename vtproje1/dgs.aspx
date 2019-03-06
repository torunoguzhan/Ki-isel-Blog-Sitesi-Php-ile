<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dgs.aspx.cs" Inherits="vtproje1.dgs" %>

<div><!--#include file="headogr.aspx"--></div>
    <div class="container" >
        <div class="row">
            <div class="col-sm">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Menü</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td><a name="" id="mulakat1" runat="server" href="">Mülakatları Göster</a></td>
                            
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td><a name="" runat="server" href="gdsHome.aspx">Dgs Kayıt</a></td>
                            
                        </tr>


                    </tbody>
                </table>
            </div>
            <div class="col-sm">
                <form action="dgs.aspx" method="post">
                    <div class="form-group">
                        <label for="formGroupExampleInput">Kurum</label>
                        <input type="text" required name="staj_kurum" class="form-control" id="formGroupExampleInput" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Önceki Okul</label>
                        <input type="text" required name="staj_okul" class="form-control" id="formGroupExampleInput" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Gün</label>
                        <input type="text" required name="staj_gun" class="form-control" id="gun" placeholder="">
                    </div>
                    <button class="btn btn-primary " type="submit">Stajı Kaydet</button>

                </form>
            </div>
            <div class="col-sm">
                One of three columns
            </div>
    </div>
 

    </div>

</body>
</html>
