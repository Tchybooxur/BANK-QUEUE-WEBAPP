<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PragimBankQueueWebApplicationFormProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="font-family:Arial; border:1px solid black; text-align:center">
                <tr>
                    <td>
                        <b>Counter 1:</b>
                    </td> 
                    <td>
                    </td> 
                    <td>
                        <b>Counter 2:</b>
                    </td> 
                    <td>
                    </td> 
                    <td>
                        <b>Counter 3:</b>
                    </td>
              </tr>
              <tr>
                    <td>
                        <asp:TextBox ID="TextCounter1" runat="server" BackColor="#000099" Font-Size="Small" ForeColor="White" Width="150px" Height="25px"></asp:TextBox>
                    </td> 
                    <td>
                    </td> 
                    <td>
                        <asp:TextBox ID="TextCounter2" runat="server" BackColor="#000099" Font-Size="Small" ForeColor="White" Width="150px" Height="25px"></asp:TextBox>
                    </td> 
                    <td>
                    </td> 
                    <td>
                        <asp:TextBox ID="TextCounter3" runat="server" BackColor="#000099" Font-Size="Small" ForeColor="White" Width="150px" Height="25px"></asp:TextBox>
                    </td>
                </tr>
              <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Next" Width="150px" OnClick="Button1_Click" />
                    </td> 
                    <td>

                    </td> 
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Next" Width="150px" OnClick="Button2_Click" />
                    </td> 
                    <td>

                    </td> 
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Next" Width="150px" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:TextBox ID="TextDisplay" runat="server" BackColor="#006600" Font-Size="Large" ForeColor="White" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:ListBox Font-Size="Large" ID="ListTokens" runat="server" Width="80px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Button ID="btnPrintToken" runat="server" Text="Print Token" OnClick="btnPrintToken_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <asp:Label ID="lblStatus" runat="server" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
