<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="ETicaretKitap.iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>İletisim</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c16913d491.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/iletisim.css"/>
</head>
<body>
    
                <header>
    <div class="navbar">
        <div class="logo"><a href="index.aspx">Kitap Satış Sitesi</a></div>
        <ul class="links">
            <li><a href="giris.aspx">Kategori</a>
                <ul>
                    <li><a href="">Roman</a></li>
                    <li><a href="">Hikaye</a></li>
                    <li><a href="">Polisiye</a></li>
                    <li><a href="">Edebiyat</a></li>
                    <li><a href="">Dünya Klasikleri</a></li>
                    <li><a href="">Şiir</a></li>
                    <li><a href="">Biyografi</a></li>
                    <li><a href="">Test Kitabı</a></li>
                    <li><a href="">Kişisel Gelişim</a></li>
                    <li><a href="">Kategori 10</a></li>
                    <li><a href="kart.aspx">Daha Fazlası!</a></li>
                </ul>
            </li>
            <li><a href="hakkimizda.aspx">Hakkımızda</a></li>
            <li><a href="iletisim.aspx">İletişim</a></li>
        </ul>

        <a href="giris.aspx" class="action_btn">Giriş Yap</a>
        <a href="kayit.aspx" class="action_btn">Kayıt Ol</a>
        <div class="toggle_btn">
            <i class="fa-solid fa-bars"></i>
        </div>
    </div>

    <div class="dropdown_menu">
        <li><a href="giris.aspx">Kategori</a></li>
        <li><a href="hakkimizda.aspx">Hakkımızda</a></li>
        <li><a href="iletisim.aspx">İletişim</a></li>
        <li>
            <a href="giris.aspx" class="action_btn">Giriş Yap</a>
            <a href="kayit.aspx" class="action_btn">Kayıt Ol</a>
        </li>
    </div>
</header>

    <main>
        <form id="form1" runat="server">
            <asp:Label ID="Label1" runat="server"  Text="Adınız"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
<br />
            <asp:Label ID="Label2" runat="server" Text="Soy Adınız"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="Mailiniz"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="205px"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="Telefonunuz"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="205px"></asp:TextBox><br />

            <asp:Label ID="Label5" runat="server" Text="Mesajınız"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="500px"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />

        </form>
    </main>
    <script>
    const toggleBtn = document.querySelector('.toggle_btn')
    const toggleBtnIcon = document.querySelector('.toggle_btn i')
    const dropDownMenu = document.querySelector('.dropdown_menu')

    toggleBtn.onclick = function () {
        dropDownMenu.classList.toggle('open')
        const isOpen = dropDownMenu.classList.contains('open')

        toggleBtnIcon.classList = isOpen
            ? 'fa-solid fa-xmark'
            : 'fa-solid fa-bars'
    }
    </script>
    
</body>
</html>
