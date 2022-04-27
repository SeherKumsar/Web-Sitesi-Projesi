<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Course.aspx.cs" Inherits="_181805036_181805051_Final.Course" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>

        <asp:Label ID="Label1" runat="server" Text="Course Code"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    </p>
<asp:Label ID="Label2" runat="server" Text="Course Name"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Credit"></asp:Label>
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add the course" />
<br />
<br />
<asp:Button ID="Button3" runat="server" Text="Delete the course" OnClick="Button3_Click" />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update the course" />
    <br />
<br />
<p>

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Course Data" />

    </p>
<p>

    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    </p>
</asp:Content>
