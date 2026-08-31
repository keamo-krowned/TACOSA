
   <%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LandingPage.aspx.cs"
    Inherits="TACOSA.LandingPage"
    MaintainScrollPositionOnPostBack="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>TACOSA</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background-color: #FFF3A3;
            font-family: Georgia, serif;
            color: #6B4226;
        }


        .header {
            width: 100%;
            height: 100px;
            background-color: #FFF3A3;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 7%;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;
            letter-spacing: 3px;
            color: #6B4226;
        }

        .navigation {
            display: flex;
            align-items: center;
            gap: 30px;
        }


        .nav-button {
            color: #6B4226;
            background-color: transparent;
            border: none;

            font-family: Georgia, serif;
            font-size: 16px;
            font-weight: bold;

            letter-spacing: 1px;
            cursor: pointer;
            padding: 8px;

            text-decoration: underline;
        }

        .nav-button:hover {
            color: #4A2C18;
        }



        .login-button {
            background-color: #6B4226;
            color: white;

            border: 2px solid #6B4226;

            padding: 11px 25px;

            border-radius: 25px;

            font-family: Georgia, serif;

            font-size: 14px;
            font-weight: bold;

            letter-spacing: 1px;

            cursor: pointer;
        }

        .login-button:hover {
            background-color: #4A2C18;
            border-color: #4A2C18;
        }



        .hero {
            position: relative;

            width: 100%;
            height: 600px;

            overflow: hidden;
        }

        .hero-image {
            width: 100%;
            height: 100%;

            object-fit: cover;
            object-position: center;

            display: block;
        }



        .hero-text {
            position: absolute;

            top: 50%;
            left: 50%;

            transform: translate(-50%, -50%);

            width: 90%;

            text-align: center;
        }

        .hero-title {
            color: white;

            font-size: 50px;

            font-weight: bold;

            letter-spacing: 3px;

            line-height: 1.2;

            text-shadow: 2px 2px 6px #000000;
        }

        .hero-subtitle {
            color: white;

            font-size: 18px;

            letter-spacing: 4px;

            margin-top: 20px;

            text-shadow: 2px 2px 4px #000000;
        }



        .information {
            width: 100%;

            padding: 50px 12%;

            text-align: center;

            background-color: #FFF3A3;
        }

        .information-title {
            font-size: 30px;

            font-weight: bold;

            letter-spacing: 2px;

            color: #6B4226;

            margin-bottom: 20px;
        }

        .information-text {
            max-width: 750px;

            margin: auto;

            font-size: 16px;

            line-height: 1.8;

            color: #6B4226;
        }



        .footer {
            background-color: #6B4226;

            color: white;

            text-align: center;

            padding: 35px 20px;
        }

        .footer-title {
            font-size: 25px;

            font-weight: bold;

            letter-spacing: 2px;

            margin-bottom: 10px;
        }

        .footer-text {
            font-size: 14px;

            letter-spacing: 2px;

            margin-bottom: 15px;
        }

        .footer-contact {
            font-size: 14px;

            line-height: 1.8;
        }

        .auto-style1 {
            font-size: 16px;
        }

    </style>

</head>


<body>

<form id="form1" runat="server">



    <div class="header">


        <div class="logo">
            TACOSA
        </div>



        <div class="navigation">


            <asp:LinkButton
                ID="lblAbout"
                runat="server"
                Text="ABOUT"
                CssClass="nav-button"
                OnClick="lblAbout_Click">
            </asp:LinkButton>



            <asp:LinkButton
                ID="lblContact"
                runat="server"
                Text="CONTACT"
                CssClass="nav-button"
                OnClick="lblContact_Click">
            </asp:LinkButton>



            <asp:LinkButton
                ID="lblHelp"
                runat="server"
                Text="HELP"
                CssClass="nav-button"
                OnClick="lblHelp_Click">
            </asp:LinkButton>



            <asp:Button
                ID="btnLogin"
                runat="server"
                Text="LOGIN"
                CssClass="login-button"
                PostBackUrl="~/TouristLoginForm.aspx" />

        </div>

    </div>




    <div class="hero">

        <asp:Image
            ID="ImgSeeCapeTown"
            runat="server"
            ImageUrl="~/Images/cape-land.jpg"
            CssClass="hero-image">
        </asp:Image>



        <div class="hero-text">

            <div class="hero-title">
                SEE CAPE TOWN
                <br />
                DIFFERENTLY
            </div>

            <div class="hero-subtitle">
                EXPLORE • EXPERIENCE • ENJOY
            </div>

        </div>

    </div>




    <asp:Panel
        ID="pnlAbout"
        runat="server"
        Visible="false"
        CssClass="information">

        <div class="information-title">

            <table style="width: 100%;">

                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblAboutTacosa"
                            runat="server"
                            Text="ABOUT TACOSA"></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>

                    <td id="lblAboutPara">
                        <asp:Label
                            ID="Label4"
                            runat="server"
                            CssClass="auto-style1"
                            Font-Bold="False"
                            Text="TACOSA is a tourism platform designed to help users discover and experience the beauty of Cape Town.">
                        </asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

            </table>

        </div>

    </asp:Panel>




    <asp:Panel
        ID="pnlContact"
        runat="server"
        Visible="false"
        CssClass="information">

        <div class="information-title">

            <table style="width: 100%;">

                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblContactUs"
                            runat="server"
                            Text="CONTACT US"></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblEmail"
                            runat="server"
                            CssClass="auto-style1"
                            Font-Bold="False"
                            Text="Email: tacosa@gmail.com"></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblSouthAfrica"
                            runat="server"
                            CssClass="auto-style1"
                            Font-Bold="False"
                            Text="Cape Town, South Africa"></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>

            </table>

        </div>

    </asp:Panel>




    <asp:Panel
        ID="pnlHelp"
        runat="server"
        Visible="false"
        CssClass="information">

        <div class="information-title">

            <table style="width: 100%;">

                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblNeedHelp"
                            runat="server"
                            Text="NEED HELP?">
                        </asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>

                    <td>
                        <asp:Label
                            ID="lblNeedPara"
                            runat="server"
                            CssClass="auto-style1"
                            Font-Bold="False"
                            Text="If you need assistance using TACOSA, click the LOGIN button to access the system. For further assistance, please contact us using the contact details provided."></asp:Label>
                    </td>

                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

            </table>

        </div>

    </asp:Panel>




    <div class="footer">

        <div class="footer-title">
            TACOSA
                TACOSA
        </div>

        <div class="footer-text">
            EXPLORE • EXPERIENCE • ENJOY
        </div>

        <div class="footer-contact">

            Email: tacosa@gmail.com

            <br />

            Cape Town, South Africa

        </div>

    </div>


</form>

</body>

</html>