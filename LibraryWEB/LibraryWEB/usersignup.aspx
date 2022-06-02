<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="LibraryWEB.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <h4>Profil</h4>
                           <span>Hesap Durumu -</span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Durumunuz"></asp:Label>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Ad Soyad</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Doğum Tarihi</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" " TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>İletişim Numarası</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>E-Mail</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder=" " TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Ülke</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Seç" Value="select" />
                                        <asp:ListItem Text="Afganistan" Value="Afganistan" />
                                        <asp:ListItem Text="Almanya" Value="Almanya" />
                                        <asp:ListItem Text="ABD" Value="ABD" />
                                        <asp:ListItem Text="Arnavutluk" Value="Arnavutluk" />
                                        <asp:ListItem Text="Bahreyn" Value="Bahreyn" />
                                        <asp:ListItem Text="Belçika" Value="Belçika" />
                                        <asp:ListItem Text="Belarus" Value="Belarus" />
                                        <asp:ListItem Text="Bosna-Hersek" Value="Bosna-Hersek" />
                                        <asp:ListItem Text="Cezayir" Value="Cezayir" />
                                        <asp:ListItem Text="Çek Cumhuriyeti" Value="Çek Cumhuriyeti" />
                                        <asp:ListItem Text="Çin" Value="Çin" />
                                        <asp:ListItem Text="Danimarka" Value="Danimarka" />
                                        <asp:ListItem Text="Ekvador" Value="Ekvador" />
                                        <asp:ListItem Text="Endonezya" Value="Endonezya" />
                                        <asp:ListItem Text="Fas" Value="Fas" />
                                        <asp:ListItem Text="Filistin" Value="Filistin" />
                                        <asp:ListItem Text="Fransa" Value="Fransa" />
                                        <asp:ListItem Text="Gana" Value="Gana" />
                                        <asp:ListItem Text="Hırvatistan" Value="Hırvatistan" />
                                        <asp:ListItem Text="Hollanda" Value="Hollanda" />
                                        <asp:ListItem Text="Irak" Value="Irak" />
                                        <asp:ListItem Text="İran" Value="İran" />
                                        <asp:ListItem Text="İspanya" Value="İspanya" />
                                        <asp:ListItem Text="İtalya" Value="İtalya" />
                                        <asp:ListItem Text="Rusya" Value="Rusya" />
                                        <asp:ListItem Text="Suriye" Value="Suriye" />
                                        <asp:ListItem Text="Şili" Value="Şili" />
                                        <asp:ListItem Text="Türkiye" Value="Türkiye" />
                                        <asp:ListItem Text="Ukrayna" Value="Ukrayna" />
                                        <asp:ListItem Text="Yunanistan" Value="Yunanistan" />
                                        <asp:ListItem Text="Venezuela" Value="Venezuela" />
                                        <asp:ListItem Text="Zimbabve" Value="Zimbabve" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Şehir</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder=" "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Posta Kodu</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder=" " TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Adres</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" " TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                           <span class="badge badge-pill badge-info">Giriş Bilgileriniz</span>
                        </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Kullanıcı Adı</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder=" "></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Şifre</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder=" " TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click" />
                           </div>
                        </center>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Anasayfaya Dön</a><br>
                <br>
            </div>
        </div>
</asp:Content>
