<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateAttBooking.aspx.cs" Inherits="TACOSA.UpdateAttBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">


     
      .booking-table {
          width: 700px;
          margin: 0 auto;
          border-collapse: separate;
          border-spacing: 0 12px;
      }

     
      .auto-style17 {
          height: 35px;
          text-align: center;
      }

      .auto-style4 {
          font-size: x-large;
      }

         
      .label-cell {
          width: 300px;
          text-align: right;
          padding-right: 20px;
          vertical-align: middle;
      }

      
      .input-cell {
          width: 300px;
          text-align: left;
          vertical-align: middle;
      }

      
      .calendar-row td {
          vertical-align: top;
      }

      
      .calendar-cell {
          text-align: center;
          vertical-align: top;
      }

      
      .calendar-label {
          display: block;
          margin-bottom: 8px;
          font-weight: bold;
      }

      
      .calendar-validator {
          display: block;
          margin-top: 5px;
      }

      </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
         <table class="booking-table">

     <tr>
         <td class="auto-style17" colspan="2">
             <strong>
                 <asp:Label ID="lblTitle"
                     runat="server"
                     CssClass="auto-style4"
                     Text="What Information Do You Want To Change?"
                     ForeColor="#663300">
                 </asp:Label>
             </strong>
         </td>
     </tr>


     <tr>
         <td class="label-cell">
             <asp:Label ID="lblNumPeople"
                 runat="server"
                 Text="Number Of People:">
             </asp:Label>
         </td>

         <td class="input-cell">
             <asp:TextBox ID="txtPeople"
                 runat="server"
                 Width="225px"></asp:TextBox>
         </td>
     </tr>


     <tr class="calendar-row">
         <td colspan="2">

             <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 30px;">

                 <div class="calendar-cell">

                     <asp:Label ID="lblCheckIn"
                         runat="server"
                         Text="Check In Date:"
                         CssClass="calendar-label">
                     </asp:Label>

                     <asp:Calendar ID="Calendar1"
                         runat="server"
                         BackColor="#FFFFCC"
                         BorderColor="#FFCC66"
                         BorderWidth="1px"
                         DayNameFormat="Shortest"
                         Font-Names="Verdana"
                         Font-Size="8pt"
                         ForeColor="#663399"
                         Height="200px"
                         ShowGridLines="True"
                         Width="220px"
                         OnSelectionChanged="Calendar1_SelectionChanged">

                         <DayHeaderStyle
                             BackColor="#FFCC66"
                             Font-Bold="True"
                             Height="1px" />

                         <NextPrevStyle
                             Font-Size="9pt"
                             ForeColor="#FFFFCC" />

                         <OtherMonthDayStyle
                             ForeColor="#CC9966" />

                         <SelectedDayStyle
                             BackColor="#CCCCFF"
                             Font-Bold="True" />

                         <SelectorStyle
                             BackColor="#FFCC66" />

                         <TitleStyle
                             BackColor="#990000"
                             Font-Bold="True"
                             Font-Size="9pt"
                             ForeColor="#FFFFCC" />

                         <TodayDayStyle
                             BackColor="#FFCC66"
                             ForeColor="White" />

                     </asp:Calendar>

                     <asp:CustomValidator
                         ID="CustomValidatorCal1"
                         runat="server"
                         ErrorMessage="Date Cannot be in the past."
                         ForeColor="Red"
                         OnServerValidate="CustomValidatorCal1_ServerValidate"
                         CssClass="calendar-validator">
                     </asp:CustomValidator>

                 </div>


             </div>

         </td>
     </tr>


    
     <tr>
         <td class="label-cell">
         </td>

         <td class="input-cell">
             <asp:Label ID="lblError"
                 runat="server"
                 ForeColor="Red">
             </asp:Label>
         </td>
     </tr>

     <tr>
         <td class="label-cell">
         </td>

         <td class="input-cell">
             <asp:Button ID="btnSubmitChanges"
                 runat="server"
                 BackColor="#663300"
                 OnClick="btnSubmitChanges_Click"
                 Text="Submit changes"
                 Width="166px" />
         </td>
     </tr>

 </table>

    </form>
</body>
</html>
