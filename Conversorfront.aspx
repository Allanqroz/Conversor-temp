<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conversor Temperatura.aspx.cs" Inherits="Conversor.Conversor_Temperatura" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title style="text-align:center;margin:auto;justify-content:center;height:100vh">Conversor de Temperaturas</title>
    <style>
        body.tema-claro {
            background-color: white;
            color: #000000;
            transition: background-color 2s, color 2s;
        }

        body.tema-escuro {
            background-color: black;
            color: white;
            transition: background-color 2s, color 2s;
        }

        box {
            width: 200px;
            border: 2px solid #000000;
            background-color: #ffffff;
            height: 250px;
            text-align: center;
            padding: 25cm;
            margin: auto;
        }

        /* Garantir que a imagem do botão seja visível em ambos os temas */
        img {
            filter: invert(0); /* Padrão para tema claro */
        }

        body.tema-escuro img {
            filter: invert(1); /* Inverter as cores da imagem no tema escuro */
        }
    </style>
</head>
<body id="Body" runat="server">
    <form id="form1" runat="server">
        <div style="width:700px; height: 29px; text-align:center; margin-left: 50px;">
            <asp:LinkButton ID="Button2" runat="server" Text="" OnClick="Button2_click" style="background-color: transparent; border:none; margin-left:-109%">
                <img src="https://cdn-icons-png.flaticon.com/512/5895/5895144.png" style="width:35px; height:35px" alt="Tema Escuro" />
            </asp:LinkButton>
            <h2 style="width: 900px; margin-left: 33%; font-size:28pt">Conversor de Temperatura</h2>
            <h2 style="font-size:20px;margin-left:35%; width: 900px;">Insira a temperatura do ambiente</h2>
            
            <!-- Adicionado MaxLength="8" para limitar a 8 caracteres -->
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="6" Height="20px" style="border: 2px solid;margin-left: 90%; margin-top: -10px" Width="128px"></asp:TextBox>

            <h2 style="font-size:20px;margin-left:37%; width: 900px;">Esta temperatura está em que unidade?</h2>
            <asp:RadioButtonList ID="RadioButtonList" runat="server" Height="22px" Width="900px" style="margin-left:34%; margin-top:-8px">
                <asp:ListItem Value="C">Celsius (°C)</asp:ListItem>
                <asp:ListItem Value="F">Fahrenheit (F)</asp:ListItem>
                <asp:ListItem Value="K">Kelvin (K)</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" style="margin-left:93%; margin-top:10px" runat="server" Text="Converter" OnClick="Button1_click" />
            <p></p>
            <asp:Label ID="Resultado1" style="margin-left:38%" runat="server" Text=""></asp:Label>
            <p></p>
            <asp:Label ID="Resultado2" style="margin-left:38%" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
