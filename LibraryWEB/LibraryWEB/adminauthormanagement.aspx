<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="LibraryWEB.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
      
            //$(document).ready(function () {
            //$('.table').DataTable();
            // });
      
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
        </asp:Content>

            <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">

                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <h4>Yazar Ayrıntıları</h4>
                                            </center>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <img width="100px" src="imgs/writer.png" />

                                            </center>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <hr>
                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Yazar Kimliği</label>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" "></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Git" OnClick="Button1_Click1" />
                                    </div>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <label>Yazar Adı</label>
                                            <div class="form-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=" "></asp:TextBox>
        
                                </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-4">
                                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Ekle" OnClick="Button2_Click" />
                            </div>
                                    <div class="col-4">
                                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Güncelle" OnClick="Button3_Click1" />
                            </div>
                                    <div class="col-4">
                                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Sil" OnClick="Button4_Click1" />
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
                                                    <h4>Yazar Listesi</h4>
                                                </center>
                                            </div>
                                        </div>



                                        <div class="row">
                                            <div class="col">
                                                <hr>
                            </div>
                                            </div>

                                            <div class="row">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [yazar_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="yazar_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                                <asp:BoundField DataField="yazar_id" HeaderText="yazar_id" ReadOnly="True" SortExpression="yazar_id" />
                                        <asp:BoundField DataField="yazar_adi" HeaderText="yazar_adi" SortExpression="yazar_adi" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                                </div>


                            </div>
                        </div>


            </div>

        </div>
                </div>

</asp:Content>
