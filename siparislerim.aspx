<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="siparislerim.aspx.cs" Inherits="ETicaretKitap.kullanici.siparislerim" %>

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
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="SİPARİŞLERİNİZ"></asp:Label>
            </strong>
        </div>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="222px" Width="1271px">
            <Columns>
                <asp:BoundField DataField="siparisId" HeaderText="Sipariş ID" />
                <asp:BoundField DataField="adres" HeaderText="Adres" />
                <asp:BoundField DataField="telno" HeaderText="Telefon Numarası" />
                <asp:BoundField DataField="urunId" HeaderText="Ürün ID" />
                <asp:BoundField DataField="urunAd" HeaderText="Ürün" />
                <asp:BoundField DataField="toplamFiyat" HeaderText="Tutar" />
            </Columns>
        </asp:GridView>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kullanici/hesap.aspx">Hesaba Dön</asp:HyperLink>
        </p>
    </form>
</body>
</html>
