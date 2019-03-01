<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageQuiz.aspx.cs" Inherits="ManageQuiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <td>Question Description</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtQuestionDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Course Name</td>
            <td>
                <asp:DropDownList CssClass="form-control" ID="ddlCourseName" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Choice One</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtCoice1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Choice Two</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtCoice2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Choice Three</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtCoice3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Choice Four</td>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtCoice4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Correct Choice</td>
            <td>
                <asp:RadioButtonList ID="rdoCorrectChoice" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected="True">One</asp:ListItem>
                    <asp:ListItem Value="2">Two</asp:ListItem>
                    <asp:ListItem Value="3">Three</asp:ListItem>
                    <asp:ListItem Value="4">Four</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button CssClass="btn btn-lag btn-primary" ID="btnAddQuestion" runat="server" Text="Add New Questiom" OnClick="btnAddQuestion_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

