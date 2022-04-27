<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Staff.aspx.cs" Inherits="_181805036_181805051_Final.Staff" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <br />
&nbsp;
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="5" CellSpacing="7" Font-Names="Comic Sans MS" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="#FFFF99" Height="16px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatColumns="2" CssClass="CheckBoxList1">
    </asp:CheckBoxList>
&nbsp;
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="List selected courses" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    <strong><em>
    <span style="color: #FFFF99">Staffs:</span><span style="color: #FF0000">&nbsp; </span>
    </em>
    <span style="color: #990000"> <br />
    </span>
    </strong>
    <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get the Students List" />
    <br />
&nbsp;<p></p>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#525A65" BorderStyle="Solid" BorderWidth="3px" CellPadding="6" CellSpacing="5" HorizontalAlign="Center">
        <AlternatingRowStyle BorderStyle="Solid" BorderWidth="3px" />
        <EditRowStyle BorderStyle="Solid" BorderWidth="3px" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#3B4954" Font-Bold="True" ForeColor="White" BorderStyle="Solid" BorderWidth="3px" HorizontalAlign="Left" VerticalAlign="Middle" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" BorderStyle="Solid" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" BorderStyle="Solid" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" BorderStyle="Solid" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    

</asp:Content>
