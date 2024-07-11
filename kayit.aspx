<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit.aspx.cs" Inherits="ETicaretKitap.kayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kayıt</title>
    <style type="text/css">
    body{
           background: linear-gradient(to right, #962E40, #C9463D, #FF5E35 );
         font-family: 'Quicksand', sans-serif;
     }
    #form1{
      width: 300px;
       margin: 20vh auto 0 auto;
      padding: 20px;
       background-color: whitesmoke;
        border-radius: 4px;
        font-size: 12px;
    }
    #btnReg{
      padding: 10px;
        margin-top: 10px;
     width: 85%;
       color: white;
       background-color: rgb(244, 165, 53);
      border: none;
        border-radius: 4px;
     }
    #btnGeri{
     padding: 10px;
        margin-top: 10px;
      width: 85%;
       color: white;
        background-color: rgb(244, 165, 53);
       border: none;
        border-radius: 4px;
    }
    #txtName{
        display: flex;
        flex-direction: column;
       margin-top: 20px; 
       width: calc(100% - 40px);
    }
    #txtUsername{
         display: flex;
       flex-direction: column;
      margin-top: 20px; 
       width: calc(100% - 40px);
    }
    #txtEmail{
         display: flex;
       flex-direction: column;
       margin-top: 20px; 
       width: calc(100% - 40px);
    }
    #txtPassword{
         display: flex;
           flex-direction: column;
      margin-top: 20px; 
      width: calc(100% - 40px);
    }
    #txtPassword2{
      display: flex;
      flex-direction: column;
       margin-top: 20px; 
       width: calc(100% - 40px);
    }

    .auto-style1 {
        font-size: large;
        width: 117px;
    }
    .auto-style2 {
        width: 292px;
        height: 387px;
    }
    .auto-style3 {
        width: 183px;
    }
    .auto-style4 {
        font-size: large;
        width: 183px;
    }
    .auto-style5 {
        height: 390px;
    }
    .auto-style6 {
        width: 117px;
    }
    

    .auto-style7 {
        height: 60px;
    }
    

</style>
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet"/>
 
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
                                <div class="auto-style5">
    <table align="center">
        <tr>
            <td class="auto-style1">Ad ve Soyad</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtName" runat="server" placeholder="adınızı ve soyadınızı giriniz" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Kullanıcı Adı</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="kullanıcı adınızı giriniz" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Mail</td>
            <td class="auto-style3">
                 <asp:TextBox ID="txtEmail" runat="server" placeholder="mailinizi giriniz" TextMode="Email" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Şifre</td>
            <td class="auto-style3">
                 <asp:TextBox ID="txtPassword" runat="server" placeholder="şifrenizi giriniz" TextMode="Password" Width="170px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style6">
                <asp:Button CssClass="geri" ID="btnGeri" runat="server" Text="Anasayfaya Dön" OnClick="btnGeri_Click" />
            </td>
            <td align="right" class="auto-style3">
                <asp:Button CssClass="reg" ID="btnReg" runat="server" Text="Kayıt Ol" OnClick="btnReg_Click" />
            </td>
        </tr>
    </table>
</div>
    </form>
</body>
</html>
