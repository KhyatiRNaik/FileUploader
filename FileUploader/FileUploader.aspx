<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploader.aspx.cs" Inherits="FileUploader.FileUploader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        
        <center>
            <asp:Label ID="Label1" runat="server" Text="File Upload" BackColor="#00CCFF" Font-Bold="True" Font-Size="X-Large" Width="100%" Font-Italic="True" ForeColor="White"></asp:Label>
        </center>

          <center>
        <table>
            <tr>
                <td>
                    <center>
                        <asp:Label ID="Label2" runat="server" Text="Select Image" Font-Bold="True"></asp:Label></center>
                    <br />
                    <br />
                    <center>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </center>
                    <br />
                    <br />
                    <br />
                    <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPLOAD Image" Font-Bold="True" />
                    </center>
                    <br />
                    <center>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </center>
                </td>
                <td style="width: 240px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" Height="240px" Width="240px" />
                </td>
                <td>
                    <center>
                        <asp:Label ID="Label3" runat="server" Text="Select Document" Font-Bold="True"></asp:Label></center>
                    <br />
                    <br />
                    <center>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </center>
                    <br />
                    <br />
                    <br />
                    <center>
                        <asp:Button ID="Button2" runat="server" Text="UPLOAD document" Font-Bold="True" OnClick="Button2_Click" />
                    </center>
                    <br />
                    <center>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </center>
                </td>
            </tr>
        </table>
              </center>
    </form>
</body>
</html>
