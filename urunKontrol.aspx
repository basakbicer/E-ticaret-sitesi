<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="urunKontrol.aspx.cs" Inherits="ETicaretKitap.urunKontrol" %>

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
        }
        body{
            font-family: 'Quicksand', sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                                        <div class="auto-style1">
            <div class="auto-style1">
                <div class="auto-style1">
                    <div class="auto-style1">
        <div class="auto-style1">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="Ürün Kontrol Sayfası"></asp:Label>
            </strong>
        </div>
                    </div>
                    <p class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </p>
                    <asp:Label ID="Label3" runat="server" Text="Ürün Kategori"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
            <p class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Ürün Fiyat"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <asp:Label ID="Label5" runat="server" Text="Ürün Görsel"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#660033" />
            <br />
            <br />
            <br />
        </div>
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Text="Ürün Ekle" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#FF9900" Text="Ürün Sil" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" BackColor="#FF9900" Text="Ürün Listele" OnClick="Button4_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#FF9900" Text="Geri Dön" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="881px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">

                <Columns>
                    <asp:BoundField DataField="urunId" HeaderText="Ürün ID" ReadOnly="True" SortExpression="urunId" />
                    <asp:BoundField DataField="urunAd" HeaderText="Ürün Adı" SortExpression="urunAd" />
                    <asp:BoundField DataField="urunKategori" HeaderText="Ürün Kategorisi" SortExpression="urunKategori" />
                    <asp:BoundField DataField="urunFiyat" HeaderText="Ürün Fiyatı" SortExpression="urunFiyat" />
                    <asp:TemplateField HeaderText="Ürün Görseli">
                        <ItemTemplate>
                            <asp:Image ID="imgUrun" runat="server" Height="100" Width="100" ImageUrl='<%# "image/" + Eval("urunGorsel") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
