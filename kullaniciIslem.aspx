<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullaniciIslem.aspx.cs" Inherits="ETicaretKitap.admin.kullaniciIslem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-family: 'Quicksand', sans-serif;
        }
        .auto-style2 {
            margin-left: 2px;
            margin-top: 0px;
            font-family: 'Quicksand', sans-serif;
        }
        body{
            font-family: 'Quicksand', sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div>
                    <p class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Kullanıcı İşlemleri"></asp:Label>
            </strong>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Kullanıcıları Listele" />
&nbsp;&nbsp;
        </p>
        <div class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1251px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="Kullanıcı Sil" Width="126px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" CssClass="auto-style2" Height="33px"  Text="Kullanıcı Ekle" Width="126px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style1">
&nbsp;<asp:Label ID="Label2" runat="server" Text="Kullanıcı ID"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
                    <p class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Kullanıcı İsmi"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
                    <p class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Kullanıcı Adı"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
                    <p class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Kullanıcı Email"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
                    <p class="auto-style1">
                        <asp:Label ID="Label7" runat="server" Text="Şifre"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
                    <p class="auto-style1">
                        &nbsp;</p>
        <p class="auto-style1">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
                    <p class="auto-style1">
                        &nbsp;</p>
                    <p class="auto-style1">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Geri Dön" />
        </p>
        </div>
    </form>
</body>
</html>
