<%--Some code in this assignment is based off the example provided in week 10--%>
<%@ Page Title="Statistic Calculator" Language="C#" AutoEventWireup="true" CodeFile="Statistic_Calculator.aspx.cs" Inherits="Statistic_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Title %></title>

    <style type="text/css">
        body {
            background: aquamarine;
        }
        .auto-style1 {
            width: 32%;
        }
        .auto-style3 {
            width: 229px;
            text-align: right;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 235px;
        }
    </style>

</head>
<body>
    <h1><%: Title %></h1>
    <p>Enter three numbers and click Submit button to find out the statistics</p>
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                <strong>First Number:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                <strong>Second Number:</strong></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                <strong>Third Number:</strong></td>
                <td class="auto-style5">
                <asp:TextBox ID="txtNum3" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" /><br /><br />
        <asp:Label ID="lblError" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label>
    </form>
    <h2>Statistics of the numbers you entered</h2>
    <table>
        <tr>
            <th class="auto-style4">Maximum:</th>
            <td>
                <asp:Label ID="maximumResult" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <th class="auto-style4">Minimum:</th>
            <td>
                <asp:Label ID="minimumResult" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <th class="auto-style4">Average:</th>
            <td>
                <asp:Label ID="averageResult" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <th class="auto-style4">Total:</th>
            <td>
                <asp:Label ID="totalResult" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</body>
</html>