<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="web_app_one.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">

            <form>
                <div class="form-group">
                    <label for="exampleInputEmail1">Member Id</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Member ID">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group form-check">     
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
               <a href="usersignup.aspx">
                 <button type="button" class="btn btn-outline-secondary">Sign Up</button>
               </a>
            </form>

        </div>
    </div>
    <a href="homepage.aspx">Go To Home </a>
</div>
</asp:Content>
