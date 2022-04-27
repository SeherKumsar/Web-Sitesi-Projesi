<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="_181805036_181805051_Final.LoginPage" MasterPageFile= "~/Site.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:Label ID="Label1" runat="server" BorderStyle="Solid" Text="Login Page"></asp:Label>
    </p>
    <p>Username:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>Password:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
    </p>
</asp:Content>



