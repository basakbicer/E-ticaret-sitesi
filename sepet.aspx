<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="ETicaretKitap.kullanici.sepet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="SEPETİNİZ"></asp:Label>
            </strong>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kart.aspx">Alışverişe Devam Edin</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <div class="auto-style2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="227px" DataKeyNames="siparisId" OnRowDeleting="GridView1_RowDeleting" Width="751px">
                <Columns>
                    <asp:BoundField DataField="siparisId" HeaderText="Sipariş ID" />
                    <asp:BoundField DataField="urunId" HeaderText="Ürün ID" />
                    <asp:BoundField DataField="urunAd" HeaderText="Ürün Adı" />
                    <asp:BoundField DataField="urunFiyat" HeaderText="Fiyatı" />
                    <asp:CommandField HeaderText="Sepet" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Toplam Fiyat:"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" BorderStyle="Groove"  Text="Sipariş Oluştur" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
        </p>
        <p>
            &nbsp;</p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Sipariş Adres: " Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Telefon Numarası: " Visible="False"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
            </p>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sipariş Oluştur" OnClick="Button1_Click" Visible="False" />

    </form>
</body>
</html>
