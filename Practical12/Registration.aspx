<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        width: 301px;
    }
    .auto-style8 {
            width: 166px;
        }
</style>
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="auto-style6">
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="First Name:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox1" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="Last Name:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox2" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter the last name!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="User Name:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid username!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label4" runat="server" Text="Email:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox4" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid Mail_id!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Text="Password:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox5" runat="server" Width="287px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Must be enter the password!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label6" runat="server" Text="Confirm Password:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox6" runat="server" Width="287px" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter password!"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesn't match!"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label7" runat="server" Text="City:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox7" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter your City name!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label8" runat="server" Text="State:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox8" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter your state!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label9" runat="server" Text="Contact_No:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox9" runat="server" Width="287px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please Enter conact number!"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter required Contact no!" ValidationExpression="^([0-9]{10})$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label10" runat="server" Text="Date of birth:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox10" runat="server" Width="287px"></asp:TextBox>
            <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </cc1:ToolkitScriptManager>
            <cc1:CalendarExtender runat="server" ID="cal" TargetControlID="TextBox10"> </cc1:CalendarExtender>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter your Birthdate!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label11" runat="server" Text="Address:-"></asp:Label>
            <br />
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Width="287px"></asp:TextBox>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter your full address! "></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label12" runat="server" Text="Role:-"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="287px">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Define the role!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Button ID="Button1" runat="server" BackColor="#FFCCCC" BorderColor="#000066" Font-Names="Algerian" OnClick="Button1_Click" Text="Enter" Width="164px" />
        </td>
        <td class="auto-style7">
            <asp:Button ID="Button2" runat="server" BackColor="#FFCCCC" BorderColor="#000066" Font-Names="Algerian" OnClick="Button2_Click" Text="Submit" Width="162px" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>



