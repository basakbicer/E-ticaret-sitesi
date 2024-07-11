<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basari.aspx.cs" Inherits="ETicaretKitap.kullanici.basari" %>

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
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="SİPARİŞİNİZ BAŞARIYLA OLUŞTURULDU!"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            </strong>
        </div>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kart.aspx">Alışveriş Yap</asp:HyperLink>
                <br />
                <br />
            </div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/kullanici/hesap.aspx">Hesabınız</asp:HyperLink>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
