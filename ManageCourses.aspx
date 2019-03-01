<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageCourses.aspx.cs" Inherits="ManageCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <td>COURSE NAME</td>
            <td>
                <asp:TextBox cssClass="form-control" ID="txtCourseName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button cssClass="btn btn-lg btn-primary" ID="Button1" runat="server" Text="Add New Course" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label Message"></asp:Label>
            </td>
        </tr>
    </table>
    <div>
        <asp:gridview cssClass="table table-dark table-bordered table-hover" id="GridView1" runat="server"></asp:gridview>
    </div>
</asp:Content>

