<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="AspTpValidation.Resume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 155px;
        }
        .style3
        {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    <table>
    <tr>
    <td align="center" colspan="2" >
        <asp:Label ID="titre" runat="server" Text="Controles De Validation"></asp:Label>
       
        </td>
    </tr>
    <tr>
    <td class="style2" >
        <asp:Label ID="Objectif" runat="server" Text="Objectif"></asp:Label>
        </td>
    </tr>
     <tr>
     <td class="style2">
        <asp:Label ID="RVF" runat="server" Text="1_RFV:"></asp:Label>
        </td>
     </tr>

     <tr>
     <td class="style2">
        <asp:Label ID="ValeurInterdit" runat="server" Text="Valeur interdit"></asp:Label>
      </td>
      <td class="style3">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      </td>
      <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="La Valeur est interdit" 
            InitialValue="Root"></asp:RequiredFieldValidator>
      </td>
     </tr>
       
        <tr>
        <td class="style2">
        <asp:Label ID="Label1" runat="server" Text="Le champ Obligatoir"></asp:Label>
        </td>
        <td class="style3">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       </td>
       <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" ></asp:RequiredFieldValidator>
        </td>
        </tr>

        <tr>
        <td class="style2">
        <asp:Label ID="Label2" runat="server" Text="2_Range Validator"></asp:Label>
        </td>
        </tr>
       
        <tr>
        <td class="style2">

        <asp:Label ID="Label3" runat="server" Text="Valeur Entre 5 et 20"></asp:Label>
        </td>
        <td class="style3">
        <asp:TextBox ID="TextBox3" runat="server" ontextchanged="TextBox3_TextChanged"></asp:TextBox>
        </td>
        <td>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="La valeur Non valid" 
            MaximumValue="20" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        </td>
        </tr>

        <tr>
        <td class="style2">
        <asp:Label ID="Compare3" runat="server" Text="3_Compare Validator"></asp:Label>
        </td>
          </tr>      
        <tr>
        <td class="style2">
        <asp:Label ID="Label4" runat="server" Text="Compare 1"></asp:Label>
        </td>
        <td class="style3">
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Type Non Valide" 
            Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        </td>
        <td>
        <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="chiffre Doit etre &gt; 18" 
            Operator="GreaterThan" ValueToCompare="18"></asp:CompareValidator>
        </td>
            </tr>
        
        <tr>
        <td class="style2">
        <asp:Label ID="Label5" runat="server" Text="Compare 2"></asp:Label>
        </td>
        <td class="style3">
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
            ErrorMessage="CompareValidator" Type="Integer"></asp:CompareValidator>
        </td>
            </tr>
     
        <tr>
        <td class="style2">
        <asp:Label ID="Label6" runat="server" Text="4_Regular Expression"></asp:Label>
        </td>
        </tr>

        <tr>
        <td class="style2">
        <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label>
        </td>
        
      
        <td class="style3">
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Email Non Valid" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        </tr>
        <tr>
        <td class="style2">
        <asp:Label ID="Label8" runat="server" Text="5_Custum Validator"></asp:Label>
        </td>
        </tr>
        <tr>
        <td class="style2">
        <asp:Label ID="Label9" runat="server" Text="Val Impaire"></asp:Label>
        </td>
        <td class="style3">
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
        <asp:CustomValidator 
            ID="CustomValidator1" 
            runat="server" 
            ErrorMessage="La valeur Doit etre impair"
            ControlToValidate="TextBox7"
            OnServerValidate="FonctionValidation"
            Width="274px"
            Height="24px" EnableClientScript="False"
            ></asp:CustomValidator>
            </td>
         </tr>
       </table>
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
