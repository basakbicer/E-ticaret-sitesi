<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="ETicaretKitap.giris" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
 <title></title>
 <style type="text/css">
     body {
         background: linear-gradient(to right, #962E40, #C9463D, #FF5E35 );
         font-family: 'Quicksand', sans-serif;
     }

     #form1 {
         width: 300px;
         margin: 20vh auto 0 auto;
         padding: 20px;
         background-color: whitesmoke;
         border-radius: 4px;
         font-size: 12px;
     }

     #btnLogin {
         padding: 10px;
         margin-top: 10px;
         width: 85%;
         color: white;
         background-color: rgb(244, 165, 53);
         border: none;
         border-radius: 4px;
     }

     #txtUsername {
         display: flex;
         flex-direction: column;
         margin-top: 20px;
         width: calc(100% - 40px);
     }

     #txtPassword {
         display: flex;
         flex-direction: column;
         margin-top: 20px;
         width: calc(100% - 40px);
     }
 </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
                        <div class="auto-style5">
    <table align="center">
        <tr>
            <td colspan="2" class="auto-style1" style="text-align: center;">Giriş Yapın</td>
        </tr>
        <tr>
            <td class="auto-style1">Kullanıcı Adı</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="kullanıcı adınızı giriniz" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Şifre</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="şifrenizi giriniz" TextMode="Password" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6" style="text-align: center;">
                <asp:Button CssClass="giris-yap" ID="btnLogin" runat="server" Text="Giriş Yap" OnClick="btnLogin_Click" />
            </td>
        </tr>                
    </table>
</div>
    </form>
</body>
</html>
