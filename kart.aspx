<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kart.aspx.cs" Inherits="ETicaretKitap.kart" %>

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
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div class="auto-style1">
            <div class="auto-style1">
    ALIŞVERİŞE BAŞLA!<br />
    <br />
    KATEGORİLER:<br />
&nbsp;<div class="auto-style1">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Height="35px" RepeatColumns="6" RepeatDirection="Horizontal" Width="1161px">
                    <ItemTemplate>
                        
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("urunKategori") %>' OnClick="filterByCategory_Click"></asp:LinkButton>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=BASAK;Initial Catalog=urun;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [urunKategori] FROM [urun] WHERE ([urunKategori] = @urunKategori)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="urunKategori" QueryStringField="kategori" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </div>
            <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="urunId" DataSourceID="SqlDataSource1" Height="535px" RepeatColumns="5" RepeatDirection="Horizontal" Width="1399px" Font-Bold="False" Font-Italic="False" Font-Names="SansSerif" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
        <ItemTemplate>
            Id:
            <asp:Label ID="urunIdLabel" runat="server" Text='<%# Eval("urunId") %>' />
            <br />
            Ad:
            <asp:Label ID="urunAdLabel" runat="server" Text='<%# Eval("urunAd") %>' />
            <br />
            Kategori:
            <asp:Label ID="urunKategoriLabel" runat="server" Text='<%# Eval("urunKategori") %>' />
            <br />
            Fiyat:
            <asp:Label ID="urunFiyatLabel" runat="server" Text='<%# Eval("urunFiyat") %>' />
            <br />
            &nbsp;<asp:Image ID="Image1" runat="server" Height="130px" Width="130px" ImageUrl='<%# "image/" + Eval("urunGorsel") %>' />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sepete Ekle" OnClick="Button1_Click" />
            <br />
            <br />
            
        </ItemTemplate>
    </asp:DataList>
    &nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=BASAK;Initial Catalog=urun;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [urun]"></asp:SqlDataSource>

    <br />
    

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kullanici/sepet.aspx">Sepetiniz</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>
        <p class="auto-style2">
            &nbsp;</p>
    </form>
</body>
</html>
