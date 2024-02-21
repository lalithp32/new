<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthor.aspx.cs" Inherits="web_app_one.adminauthor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Author Details</h2>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Author ID</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox cssclass="form-control" ID="TextBox1" runat="server" Placeholder="ID"></asp:TextBox>
                                <asp:Button class="btn-primary" ID="Button1" runat="server" text="Go"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <label>Author Name</label>
                        <div class="form-group">
                            <asp:TextBox cssclass="form-control" ID="TextBox2" runat="server" Placeholder="Author Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Button ID="Button2" class="btn btn-md btn-block btn-success" runat ="server" Text="Add"></asp:Button>
                        </div> <div class="col-md-4">
                            <asp:Button ID="Button3" class="btn btn-md btn-block btn-warning" runat ="server" Text="Update"></asp:Button>
                        </div> <div class="col-md-4">
                            <asp:Button ID="Button4" class="btn btn-md btn-block btn-danger" runat ="server" Text="Delete"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col">
                        <center>
                            Author Details
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat ="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
