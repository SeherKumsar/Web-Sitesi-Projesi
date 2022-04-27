<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Student.aspx.cs" Inherits="_181805036_181805051_Final.Student" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Dotted" BorderWidth="2px" CellPadding="4" CellSpacing="4" ForeColor="Black" Height="4px" HorizontalAlign="Center" Width="4px">
        <AlternatingRowStyle BackColor="White" BorderColor="#CCCCFF" BorderStyle="Solid" BorderWidth="2px" />
        <EditRowStyle BorderColor="Aqua" BorderStyle="Solid" />
        <EmptyDataRowStyle BorderStyle="Solid" />
        <FooterStyle BackColor="#D0E8FF" BorderColor="#CCCCFF" BorderStyle="Solid" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" BorderColor="#CCCCFF" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" BorderColor="#CCCCFF" BorderStyle="Solid" BorderWidth="2px" VerticalAlign="Middle" />
        <RowStyle BackColor="#E4DDCB" BorderColor="#CCCCFF" BorderStyle="Double" BorderWidth="2px" Width="2px" />
        <SelectedRowStyle BackColor="#CCCCFF" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" BorderColor="#FFCCCC" BorderStyle="Double" BorderWidth="2px" Width="2px" />
        <SortedAscendingHeaderStyle BackColor="#848384" BorderColor="#CCCCFF" BorderStyle="Solid" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" BorderColor="#FFCCCC" BorderStyle="Double" BorderWidth="2px" Width="2px" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
</asp:Content>