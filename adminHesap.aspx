<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHesap.aspx.cs" Inherits="ETicaretKitap.admin.adminHesap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Quicksand', sans-serif;
        }

        body {
            min-height: 100vh;
            background: linear-gradient(to right, #F5A64A, #EA640D, #BF381A);
            background-size: cover;
            background-position: center;
        }
        .container {
            flex-wrap: wrap;
            display: flex; /* Kutuları yan yana dizmek için flex kullan */
            justify-content: center; /* İçerikleri yatay olarak ortala */
            margin-top: 20px; /* Sayfanın üstünden 50 piksel boşluk bırak */
        }

        .box {
            width: 100%; /* Kutu genişliği */
            height: 90vh; /* Kutu yüksekliği */
            background-color: #FBC57B; /* Kutu arka plan rengi */
            margin-right: 10px; /* Kutular arasındaki boşluk */
            overflow: hidden;
            width: calc(33.33% - 20px);
            padding: 20px;
        }
        .auto-style1 {
            width: 100%; /* Kutu genişliği */;
            height: 90vh; /* Kutu yüksekliği */;
            background-color: #FBC57B; /* Kutu arka plan rengi */;
            margin-right: 10px; /* Kutular arasındaki boşluk */;
            overflow: hidden;
            width: calc(33.33% - 20px);
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="auto-style1">
        
        <asp:Image ID="Image1" runat="server" Height="105px" ImageUrl="~/img/resim.png" Width="105px" />
        <br />
        <br />
        ADMİN PANELİ<br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/kullaniciIslem.aspx">Kullanıcı İşlem</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/urunKontrol.aspx">Ürün İşlem</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/mesaj.aspx">Gelen Mesajlar</asp:HyperLink>
        <br />
        
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Çıkış Yap" />
        
    </div>
</div>
    </form>
</body>
</html>
