<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mesaj.aspx.cs" Inherits="ETicaretKitap.admin.mesaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
        .auto-style2 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gelen Mesajları Listele" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="119px" Width="1232px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Geri Dön" Width="122px" />
        </div>
    </form>
</body>
</html>
