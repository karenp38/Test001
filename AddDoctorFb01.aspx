<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDoctorFb01.aspx.cs" Inherits="AddDoctorFb01" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 282px;
            height: 370px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:ScriptManager runat="server" ID="scp1" />
       <table>
        <tr>
        <td style="vertical-align:top;">
            <img src="http://sismedico.com/AhoraSoi307/logologin2.jpg" class="auto-style1" />
        </td>
        <td style="vertical-align:top;">
            <div style="border-radius: 6px; border: 1px solid #81BEF7; padding: 2px; width:600px;"> 
                <table>
                <tr>
                    <td colspan="2" style="font-size:18px; font-family:Arial;">
                        Solicitud de Registro
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="font-size:12px; font-family:Arial; text-align:justify;">
                        <b>Terminos y condiciones</b><br /><br />
                        Lorem ipsum dolor sit amet consectetur adipiscing elit aenean urna a, porta dis scelerisque sed eleifend himenaeos vehicula condimentum facilisi, posuere egestas ut ridiculus suscipit nisi montes bibendum vitae. A netus accumsan facilisis proin viverra at vitae donec curabitur dictum, primis phasellus platea rhoncus dui magnis scelerisque ac fames metus condimentum, tristique penatibus commodo hac eget felis in libero ultrices. Elementum inceptos phasellus habitant ullamcorper mollis lacus, porta vitae potenti turpis consequat dapibus, penatibus proin nullam tincidunt velit.
                        <br />
                        Acepto:<asp:CheckBox runat="server" ID="chkTerminos" />    
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:top;">
                <table style="font-family:Arial; font-size:12px;">
            <tr>
            <td>Nombre(s)</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtPNombre" Width="80px" Height="18px" Font-Names="Arial" Font-Size="11px" />
                <asp:RequiredFieldValidator runat="server" ID="reqPNombre" ControlToValidate="txtPNombre" 
                 Display="Dynamic" ErrorMessage="*" />
                <asp:TextBox autocomplete="off"  runat="server" ID="txtSNombre" Height="18px" Font-Size="11px" Width="80px" Font-Names="Arial" />
            </td>
            </tr>
            <tr>
            <td>Apellido(s)</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtPApellido" Width="80px" Height="18px" Font-Names="Arial" Font-Size="11px"  />
                <asp:RequiredFieldValidator runat="server" ID="reqtxtPApellido" ControlToValidate="txtPApellido" 
                 Display="Dynamic" ErrorMessage="*" />
                <asp:TextBox autocomplete="off"  runat="server" ID="txtSApellido" Height="18px" Width="80px" Font-Names="Arial" Font-Size="11px" />
            </td>
            </tr>
            <tr>
            <td>Documento</td>
            <td>
                <asp:DropDownList runat="server" Width="50px" Height="22px" ID="cmbTipoDoc" Font-Names="Arial" Font-Size="11px"
                 DataSourceID="DsTipoDocumento" DataTextField="NOMBRE" DataValueField="NOMBRE" />
                <asp:SqlDataSource ID="DsTipoDocumento" runat="server" 
                ConnectionString="<%$ ConnectionStrings:cadenaConec %>" 
                SelectCommand="SELECT RTRIM(NOMBRE) AS NOMBRE, [TIPO DOCUMENTO] FROM TIPODOCUMENTO">
                </asp:SqlDataSource>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtDocumento" Height="18px" Font-Size="11px" Width="115px" Font-Names="Arial" />
                <asp:RequiredFieldValidator runat="server" ID="reqDocumento" ControlToValidate="txtDocumento" 
                 Display="Dynamic" ErrorMessage="*" />
            </td>
            </tr>
            <tr>
            <td>Grupo Sanguíneo</td>
            <td>
                <asp:DropDownList runat="server" Height="22px" Font-Size="11px" Width="130px" ID="cmbGrupoSanguineo" Font-Names="Arial">
                    <asp:ListItem Value="O+">O+</asp:ListItem>
                    <asp:ListItem Value="B+">B+</asp:ListItem>
                    <asp:ListItem Value="A+">A+</asp:ListItem>                    
                    <asp:ListItem Value="O-">O-</asp:ListItem>
                    <asp:ListItem Value="B-">B-</asp:ListItem>
                    <asp:ListItem Value="A-">A-</asp:ListItem>
                    <asp:ListItem Value="AB-">AB-</asp:ListItem>
                    <asp:ListItem Value="AB+">AB+</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td>Sexo</td>
            <td>
                <asp:DropDownList runat="server" Height="22px" Font-Size="11px" Width="130px" ID="cmbSexo" Font-Names="Arial">
                    <asp:ListItem Value="F">FEMENINO</asp:ListItem>
                    <asp:ListItem Value="M">MASCULINO</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td>Fecha Nacimiento</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server"  ID="txtFechaNacimiento"  onblur="calculateAge(this.value)" 
                    style="font-size:11px; width:130px; height:24px;  border-width:1px;" Font-Names="Arial" />
                <asp:MaskedEditExtender ID="mascafecha" runat="server" MaskType="Date" TargetControlID="txtFechaNacimiento" Mask="99/99/9999" />
                 <asp:MaskedEditValidator 
                ID="MaskedEditValidator1"
                runat="server"
                ControlToValidate="txtFechaNacimiento"
                ControlExtender="mascafecha"
                IsValidEmpty="false"
                EmptyValueMessage="Input date"
                InvalidValueMessage="inputted date not valid" />
            </td>
            </tr>
            </table>
            </td>
                    <td style="vertical-align:top;">
                <table style="font-family:Arial; font-size:12px;">
            <tr>
            <td>Universidad</td>
            <td>
                 <asp:TextBox autocomplete="off" Height="20px" runat="server" ID="txtUniversidad" Font-Size="11px" Width="196px" Font-Names="Arial" />
            </td>
            </tr>
            <tr>
            <td>RM</td>
            <td>
                 <asp:TextBox autocomplete="off" Height="20px" runat="server" ID="txtRegistroMedico" Font-Size="11px" Width="196px" Font-Names="Arial" />
            </td>
            </tr>
            <tr>
            <td>Dirección</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtDireccion" Font-Size="11px" Width="196px" TextMode="MultiLine" Rows="2" Font-Names="Arial" />
            </td>
            </tr>
            <tr>
            <td>Ciudad</td>
            <td>
                    <asp:DropDownList runat="server" Width="80px" id="cmbDepartamento" Height="22px"  
                         DataTextField="DEPARTAMENTO" Font-Names="Arial" Font-Size="11px" 
                        DataValueField="DEPARTAMENTO" DataSourceid="DsDepto" AutoPostBack="True" />
                    <asp:SqlDataSource ID="DsDepto" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cadenaConec %>" 
                    SelectCommand="SELECT DISTINCT(RTRIM(DEPARTAMENTO)) AS DEPARTAMENTO, LEN(DEPARTAMENTO)
                         FROM dbo.[CIUDAD-DEPARTAMENTO] ORDER BY LEN(DEPARTAMENTO)">
                    </asp:SqlDataSource>
                    <asp:DropDownList runat="server" Font-Names="Arial" Font-Size="11px" Height="22px" Width="120px" id="cmbCiudad" 
                         DataTextField="NOMBRE" DataValueField="IDCIUDAD" DataSourceID="DsCiudad" />
                    <asp:SqlDataSource ID="DsCiudad" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cadenaConec %>" 
                    SelectCommand="SELECT NOMBRE,IDCIUDAD FROM dbo.[CIUDAD-DEPARTAMENTO]
                                    WHERE DEPARTAMENTO=@DEPARTAMENTO
                                    ORDER BY CODIGOC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="cmbDepartamento" Name="DEPARTAMENTO" />
                        </SelectParameters>
                    </asp:SqlDataSource>
            </tr>
            <tr>
            <td>Teléfono</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtTelefono"  Height="22px" Font-Size="11px" Width="80px" Font-Names="Arial" />
            </td>
            </tr>
            <tr>
            <td>Email</td>
            <td>
                <asp:TextBox autocomplete="off"  runat="server" ID="txtEmail" Width="200px" Height="22px" Font-Size="11px" Font-Names="Arial" />
                <asp:RegularExpressionValidator ID="reqEmail" runat="server" Display="Dynamic" 
                    ErrorMessage="*" ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            </tr>
            </table>
            </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button runat="server"  ID="btnGuardaTodo" 
                        Text="Registrar Solicitud"
                        Font-Size="11px" ForeColor="Black" Height="22px" Font-Names="Arial" Width="110px"
                        BackColor="Orange" BorderColor="Black" BorderWidth="1" CausesValidation="false" />
                    </td>
                </tr>
                </table>
                </div>
        </td>
        </tr>
       </table>       
    </form>
</body>
</html>
