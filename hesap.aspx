<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hesap.aspx.cs" Inherits="ETicaretKitap.kullanici.hesap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        body{
            font-family: 'Quicksand', sans-serif;
            background: orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div class="auto-style2">
                <asp:Label ID="Label1" runat="server" Font-Names="SansSerif" Text="HESABINIZA HOŞGELDİNİZ!"></asp:Label>
                <br />
            </div>
            <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl="~/img/resim.png" Width="130px" />
            <br />
            <p>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="SansSerif" NavigateUrl="~/kullanici/siparislerim.aspx">Siparişlerim</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/yonlendir.aspx">Anasayfa</asp:HyperLink>
            </p>
            <p>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/index.aspx">Çıkış Yap</asp:HyperLink>
            </p>
        </div>
    </form>
</body>
</html>
