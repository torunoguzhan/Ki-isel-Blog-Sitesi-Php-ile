<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="vtproje1.home" %>

<div><!--#include file="headogr.aspx"--></div>
    <div style="margin-top:50px" class="container" >
        <div class="row">
            <div class="col-sm">
                <table class="table">
                    <thead >
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
                            <td><a name="" runat="server" href="dgs.aspx">Dgs Kayıt</a></td>
                            
                        </tr>


                    </tbody>
                </table>
            </div>
            <div class="col-sm">

                <form id="form1" action="islem.aspx" method="post" runat="server">

                    <div class="form-group">
                        <label for="formGroupExampleInput">Kurum</label>
                        <input list="browsers" type="text" required name="staj_kurum" class="form-control" id="formGroupExampleInput" placeholder="">
                        <datalist id="browsers">
                            <asp:Repeater ID="myRepeater" runat="server">
                                <ItemTemplate>
                                    <option value="<%# Eval("staj_kurum") %>"><%# Eval("staj_kurum") %></option>
                                </ItemTemplate>
                            </asp:Repeater>
                        </datalist>
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Şehir</label>
                        <input type="text" required name="staj_sehir" class="form-control" id="formGroupExampleInput" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Başlama Tarihi</label>
                        <input type="date" required name="staj_bastarih" class="form-control" id="formGroupExampleInput" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Bitiş Tarihi</label>
                        <input type="date" required name="staj_bittarih" class="form-control" id="formGroupExampleInput" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Staj Konusu</label>
                        <input  type="text" required name="staj_konu" class="form-control" id="konu" placeholder="">
                        
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Sınıf</label>
                        <input type="text" required name="staj_sinif" class="form-control" id="sinif" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="formGroupExampleInput">Gün</label>
                        <input type="text" required name="staj_gun" class="form-control" id="gun" placeholder="">
                    </div>
                    <button class="btn btn-primary " type="submit">Stajı Kaydet</button>


                </form>

            </div>
            <div class="col-sm">
            </div>
    </div>
 

    </div>
</body>
    <script>
        $('#gun').focusout(function () {
            console.log($('#gun').val());
            if (parseInt($('#gun').val())<15)
             {
                swal({
                    title: "Eksik Giriş",
                    text: "Gün 15'den az olamaz",
                     icon: "info",
                      });
                $('#gun').val("");
            }
            if (parseInt($('#sinif').val())==2) {
                if (parseInt($('#gun').val())>25 &&	$('#konu').val().toLowerCase()!=="arge") {
                    swal({
                    title: "Eksik Giriş",
                    text: "2. Sınıflar için gün 25'den fazla olamaz",
                        icon: "info",
                     button: "Anladım",
                      });
                    $('#gun').val("");
                }
                else if($('#konu').val().toLowerCase()=="arge" && parseInt($('#gun').val())>60)
                {
                    swal({
                    title: "Eksik Giriş",
                    text: "Konusu Arge olan stajlar için gün max 60 olabilir",
                        icon: "info",
                     button: "Anladım",
                    });
                    $('#gun').val("");

                }
            }
            if($('#konu').val().toLowerCase()=="arge" && parseInt($('#gun').val())>60)
                {
                    swal({
                    title: "Eksik Giriş",
                    text: "Konusu Arge olan stajlar için gün max 60 olabilir",
                        icon: "info",
                     button: "Anladım",
                });
                $('#gun').val("");
                }
            
            
            
        })
</script>
</html>
