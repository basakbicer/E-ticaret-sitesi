<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yonlendir.aspx.cs" Inherits="ETicaretKitap.yonlendir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Yönlendirme</title>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c16913d491.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/yonlendir.css" />
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
                <header>
            <div class="navbar">
                <div class="logo"><a href="yonlendir.aspx">Kitap Satış Sitesi</a></div>
                <ul class="links">
                    <li><a href="kart.aspx">Kategori</a>
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
                    <li>İşlemler
                        <ul>
                            <li><a href="kullanici/siparislerim.aspx">Siparişlerim</a></li>
                            <li><a href="kullanici/sepet.aspx">Sepetim</a></li>
                        </ul>
                    </li>
                    <li><a href="iletisim.aspx">İletişim</a></li>
                    <li><a href="kullanici/hesap.aspx">Hesabınız</a></li>
                </ul>

                <asp:Button ID="btnLogout2" runat="server" Text="Çıkış Yap" OnClick="btnLogout_Click" CssClass="action_btn" />

                <div class="toggle_btn">
                    <i class="fa-solid fa-bars"></i>
                </div>
            </div>

            <div class="dropdown_menu">
                <li><a href="kart.aspx">Kategori</a></li>
                <li><a href="">İşlemler</a>
                    <ul>
                        <li><a href="kullanici/siparislerim.aspx">Siparişlerim</a></li>
                        <li><a href="kullanici/sepet.aspx">Sepetim</a></li>
                    </ul>
                </li>
                <li><a href="iletisim.aspx">İletişim</a></li>
                <li><a href="kullanici/hesap.aspx">Hesabınız</a></li>
                <li>
                    <asp:Button ID="Button1" runat="server" Text="Çıkış Yap" OnClick="btnLogout_Click" CssClass="action_btn" />

                </li>
            </div>
        </header>

<main>
    <div class="container">
        <div class="auto-style2">

            HESABINIZA HOŞGELDİNİZ!
        </div>
    </div>
</main>

<script>
    function logout() {
        // Simulate clearing user data (not secure)
        localStorage.removeItem("userToken");

        // Redirect to login page
        window.location.href = "index.aspx";
    }
</script>

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
    </form>
</body>
</html>
