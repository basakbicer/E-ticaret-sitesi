<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ETicaretKitap.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/style.css" />
    <title>Responsive Navbar</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c16913d491.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
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
    <section id="hero">
        <h1>Hoşgeldiniz</h1>
        <p> Siteye Hoşgeldiniz!</p> 
        <li>
            <a href="giris.aspx" class="action_btn">HEMEN BAŞLA!</a>
        </li>                           
    </section>
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
    </form>
</body>
</html>
