<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="LibraryWEB.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Kitap Detayları</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="100px" src="imgs/books.png" />
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Kitap Kimliği</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" "></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Kitap Adı</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" "></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Dil</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Türkçe" Value="Türkçe" />
                                        <asp:ListItem Text="İngilizce" Value="İngilizce" />
                                        <asp:ListItem Text="Fransızca" Value="Fransızca" />
                                        <asp:ListItem Text="İtalyanca" Value="İtalyanca" />
                                        <asp:ListItem Text="Almanca" Value="Almanca" />
                                        <asp:ListItem Text="İspanyolca" Value="İspanyolca" />
                                    </asp:DropDownList>
                                </div>
                                <label>Yayıncı Adı</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Çiçek Yayınevi" Value="Publisher 1" />
                                        <asp:ListItem Text="Kürdan Yayınevi" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Yazar Adı</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Yazar 1" Value="a1" />
                                        <asp:ListItem Text="Yazar 2" Value="a2" />
                                        <asp:ListItem Text="Yazar 3" Value="a3" />
                                    </asp:DropDownList>
                                </div>
                                <label>Yayın Tarihi</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" " TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Tür</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Aksiyon" Value="Aksiyon" />
                                        <asp:ListItem Text="Macera" Value="Macera" />
                                        <asp:ListItem Text="Çizgi Roman" Value="Çizgi Roman" />
                                        <asp:ListItem Text="Kişisel Gelişim" Value="Kişisel Gelişim" />
                                        <asp:ListItem Text="Motivasyon" Value="Motivasyon" />
                                        <asp:ListItem Text="Sağlıklı Yaşam" Value="Sağlıklı Yaşam" />
                                        <asp:ListItem Text="Suç" Value="Suç" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantastik" Value="Fantastik" />
                                        <asp:ListItem Text="Korku" Value="Korku" />
                                        <asp:ListItem Text="Şiir" Value="Şiir" />
                                        <asp:ListItem Text="Romantik" Value="Romantik" />
                                        <asp:ListItem Text="Bilimkurgu" Value="Bilimkurgu" />
                                        <asp:ListItem Text="Gerilim" Value="Gerilim" />
                                        <asp:ListItem Text="Spor" Value="Spor" />
                                        <asp:ListItem Text="Sanat" Value="Sanat" />
                                        <asp:ListItem Text="Otobiyografi" Value="Otobiyografi" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Baskı</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Kitap Maliyeti(Birim Başına)</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Sayfa Sayısı</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Gerçek Stok</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Mevcut Stok</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" " TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Yayınlanan Kitaplar</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder=" " TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Kitap Açıklaması</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder=" " TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Ekle" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Güncelle" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Sil" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Anasayfaya Dön</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Kitap Listesi</h4>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                &nbsp;<asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
