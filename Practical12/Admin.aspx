<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder7">
    <p>
        <asp:Label ID="Admin_txt" runat="server" Text="Label" align="Center"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#FF9999" BorderColor="#000066" BorderStyle="Solid" OnClick="Button1_Click" Text="ShowData" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="227px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" BackColor="#FF9999" Text="Search" Width="101px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#FF9999" Text="Remove" Width="100px" OnClick="Button3_Click" />
    </p>
</asp:Content>


